import 'dart:convert';

import 'package:github_search/core/error/exceptions.dart';
import 'package:github_search/features/github_search/data/models/github_repositories_model.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class GithubSearchLocalDataSource {
  Future<GithubRepositoriesModel> getCachedRepositories(String term);

  Future<void> cacheGithubRepositories(
      GithubRepositoriesModel githubRepositories);
}

const CACHED_GITHUB_REPOSITORIES = 'CACHED_GITHUB_REPOSITORIES';

class GithubSearchLocalDataSourceImpl implements GithubSearchLocalDataSource {
  final SharedPreferences sharedPreferences;

  GithubSearchLocalDataSourceImpl({@required this.sharedPreferences});

  @override
  Future<GithubRepositoriesModel> getCachedRepositories(String term) {
    final String jsonString =
        sharedPreferences.getString(CACHED_GITHUB_REPOSITORIES);
    if (jsonString == null)
      throw CacheException();
    else
      return Future.value(
          GithubRepositoriesModel.fromJson(json.decode(jsonString)));
  }

  @override
  Future<void> cacheGithubRepositories(
      GithubRepositoriesModel githubRepositories) {
    final jsonValue = json.encode(githubRepositories.toJson());
    sharedPreferences.setString(CACHED_GITHUB_REPOSITORIES, jsonValue);
    return Future.value();
  }
}
