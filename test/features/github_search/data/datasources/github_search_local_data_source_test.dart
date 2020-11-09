import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:github_search/core/error/exceptions.dart';
import 'package:github_search/features/github_search/data/datasources/github_search_local_data_source.dart';
import 'package:github_search/features/github_search/data/models/github_repositories_model.dart';
import 'package:github_search/features/github_search/data/models/github_repository_model.dart';
import 'package:github_search/features/github_search/data/models/github_user_model.dart';
import 'package:matcher/matcher.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../fixtures/fixture_reader.dart';

class MockSharedPreferences extends Mock implements SharedPreferences {}

void main() {
  MockSharedPreferences mockSharedPreferences;
  GithubSearchLocalDataSourceImpl localDataSource;

  final tTerm = 'flutter';
  final tTermOther = 'angular';

  final tGithubRepositoriesCached = GithubRepositoriesModel.fromJson(
      json.decode(fixture('github_repositories_cached.json')));

  setUp(() {
    mockSharedPreferences = MockSharedPreferences();
    localDataSource = GithubSearchLocalDataSourceImpl(
        sharedPreferences: mockSharedPreferences);
  });

  group('get cached github repositories', () {
    test(
        'should return GithubRepositoriesModel from shared preferences if there is in cache',
        () async {
      //arrange
      when(mockSharedPreferences.getString(CACHED_TERM)).thenReturn(tTerm);

      when(mockSharedPreferences.getString(CACHED_GITHUB_REPOSITORIES))
          .thenReturn(fixture('github_repositories_cached.json'));
      //act
      final result = await localDataSource.getCachedRepositories(tTerm);

      //assert
      verify(mockSharedPreferences.getString(CACHED_TERM));
      verify(mockSharedPreferences.getString(CACHED_GITHUB_REPOSITORIES));
      expect(result, tGithubRepositoriesCached);
    });

    test('should return cache exception if term not matches cached', () async {
      when(mockSharedPreferences.getString(CACHED_TERM)).thenReturn(tTermOther);

      final call = localDataSource.getCachedRepositories;

      //assert
      expect(() => call(tTerm), throwsA(TypeMatcher<CacheException>()));
    });

    test('should throw CacheException when there is not cached value',
        () async {
      //arrange
      when(localDataSource.sharedPreferences.getString(any)).thenReturn(null);

      //act
      final call = localDataSource.getCachedRepositories;

      // assert
      expect(() => call(tTerm), throwsA(TypeMatcher<CacheException>()));
    });
  });

  group('cache github repositories', () {
    final tGithubRepositoriesModel = GithubRepositoriesModel(items: [
      GithubRepositoryModel(
          fullName: 'flutter',
          htmlUrl: 'https://github.com/flutter/flutter',
          owner: GithubUserModel(
              login: 'flutter',
              avatarUrl:
                  'https://avatars3.githubusercontent.com/u/14101776?v=4'))
    ]);

    test('should call shared preference to cache the data', () async {
      //act
      localDataSource.cacheGithubRepositories(tTerm, tGithubRepositoriesModel);
      //assert
      final expectedJsonString = json.encode(tGithubRepositoriesModel.toJson());
      verify(mockSharedPreferences.setString(
          CACHED_GITHUB_REPOSITORIES, expectedJsonString));
    });
  });
}
