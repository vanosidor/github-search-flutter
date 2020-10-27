import 'package:flutter_test/flutter_test.dart';
import 'package:github_search/core/platform/network_info.dart';
import 'package:github_search/features/github_search/data/datasources/github_search_local_data_source.dart';
import 'package:github_search/features/github_search/data/datasources/github_search_remote_data_source.dart';
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

  setUp(() {
    mockLocalDataSource = MockLocalDataSource();
    mockRemoteDataSource = MockRemoteDataSource();
    mockNetworkInfo = MockNetworkInfo();
    repository = GithubSearchRepositoryImpl(
        localDataSource: mockLocalDataSource,
        remoteDataSource: mockRemoteDataSource,
        networkInfo: mockNetworkInfo);
  });
}
