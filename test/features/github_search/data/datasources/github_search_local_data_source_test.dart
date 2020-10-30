import 'package:flutter_test/flutter_test.dart';
import 'package:github_search/features/github_search/data/datasources/github_search_local_data_source.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../fixtures/fixture_reader.dart';

// TODO make test for shared preferences
class MockSharedPreferences extends Mock implements SharedPreferences {}

void main() {
  MockSharedPreferences mockSharedPreferences;
  GithubSearchLocalDataSourceImpl localDataSource;

  setUp(() {
    final tTerm = 'flutter';

    mockSharedPreferences = MockSharedPreferences();
    localDataSource = GithubSearchLocalDataSourceImpl(
        sharedPreferences: mockSharedPreferences);

    test(
        'should return list of GithubRepository from shared pref if there is in cache',
        () async {
      //arrange
      when(mockSharedPreferences.getString('CACHED_GITHUB_REPOSITORIES'))
          .thenReturn(fixture('github_repositories_cached.json'));
      //act
      final result = await localDataSource.getCachedRepositories(tTerm);

      //assert
      expect(result, {});
    });
  });
}
