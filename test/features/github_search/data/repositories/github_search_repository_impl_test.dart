import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_search/core/error/exceptions.dart';
import 'package:github_search/core/error/failures.dart';
import 'package:github_search/core/network/network_info.dart';
import 'package:github_search/features/github_search/data/datasources/github_search_local_data_source.dart';
import 'package:github_search/features/github_search/data/datasources/github_search_remote_data_source.dart';
import 'package:github_search/features/github_search/data/models/github_repositories_model.dart';
import 'package:github_search/features/github_search/data/models/github_repository_model.dart';
import 'package:github_search/features/github_search/data/models/github_user_model.dart';
import 'package:github_search/features/github_search/data/repositories/github_search_repository_impl.dart';
import 'package:github_search/features/github_search/domain/repositories/github_search_repository.dart';
import 'package:mockito/mockito.dart';

class MockRemoteDataSource extends Mock
    implements GithubSearchRemoteDataSource {}

class MockLocalDataSource extends Mock implements GithubSearchLocalDataSource {}

class MockNetworkInfo extends Mock implements NetworkInfo {}

void main() {
  GithubSearchRepository repository;
  MockRemoteDataSource mockRemoteDataSource;
  MockLocalDataSource mockLocalDataSource;
  MockNetworkInfo mockNetworkInfo;

  final tTerm = 'flutter';
  final tGithubUserModel =
      GithubUserModel(login: 'ivan', avatarUrl: 'https://ivan.ivandomen.com');
  final tGithubRepositoryModel = GithubRepositoryModel(
      fullName: 'flutter/flutter',
      htmlUrl: 'https://github.com/flutter/flutter',
      owner: tGithubUserModel);

  final List<GithubRepositoryModel> tGithubRepositoryModels = [
    tGithubRepositoryModel
  ];
  final GithubRepositoriesModel tGithubRepositories =
      GithubRepositoriesModel(items: tGithubRepositoryModels);

  setUp(() {
    mockLocalDataSource = MockLocalDataSource();
    mockRemoteDataSource = MockRemoteDataSource();
    mockNetworkInfo = MockNetworkInfo();
    repository = GithubSearchRepositoryImpl(
        localDataSource: mockLocalDataSource,
        remoteDataSource: mockRemoteDataSource,
        networkInfo: mockNetworkInfo);
  });

  test('should check if device is online', () async {
    //arrange
    when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
    //act
    repository.getGithubRepositories(tTerm);
    // assert
    verify(mockNetworkInfo.isConnected);
  });

  void runTestsOnline(Function body) {
    group('device is online', () {
      setUp(() {
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      });

      body();
    });
  }

  void runTestsOffline(Function body) {
    group('device is offline', () {
      setUp(() {
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => false);
      });

      body();
    });
  }

  runTestsOnline(() {
    test('should return remote data from remote data source successful',
        () async {
      //arrange
      when(mockRemoteDataSource.getGithubRepositories(any))
          .thenAnswer((_) async => tGithubRepositories);

      //act
      final result = await repository.getGithubRepositories(tTerm);

      //assert
      verify(mockRemoteDataSource.getGithubRepositories(tTerm));
      expect(result, equals(Right(tGithubRepositories)));
    });

    test('should cache repositories locally if result is successful', () async {
      when(mockRemoteDataSource.getGithubRepositories(any))
          .thenAnswer((_) async => tGithubRepositories);
      await repository.getGithubRepositories(tTerm);

      verify(mockRemoteDataSource.getGithubRepositories(tTerm));
      verify(mockLocalDataSource.cacheGithubRepositories(tTerm, tGithubRepositories));
    });

    test('should return ServerFailure if call to remote data unsuccessful',
        () async {
      when(mockRemoteDataSource.getGithubRepositories(any))
          .thenThrow(ServerException());

      final result = await repository.getGithubRepositories(tTerm);

      //assert
      verify(mockRemoteDataSource.getGithubRepositories(tTerm));
      verifyZeroInteractions(mockLocalDataSource);
      expect(result, equals(Left(ServerFailure())));
    });
  });

  runTestsOffline(() {
    test(
        'should return cached data if cached data present in local data source',
        () async {
      when(mockLocalDataSource.getCachedRepositories(any))
          .thenAnswer((_) async => tGithubRepositories);

      final result = await repository.getGithubRepositories(tTerm);

      verifyZeroInteractions(mockRemoteDataSource);
      verify(mockLocalDataSource.getCachedRepositories(tTerm));
      expect(result, Right(tGithubRepositories));
    });

    test('should return CacheError instance if no data present', () async {
      when(mockLocalDataSource.getCachedRepositories(any))
          .thenThrow(CacheException());

      final result = await repository.getGithubRepositories(tTerm);

      //assert
      verify(mockLocalDataSource.getCachedRepositories(tTerm));
      verifyZeroInteractions(mockRemoteDataSource);
      expect(result, equals(Left(CacheFailure())));
    });
  });
}
