import 'package:github_search/features/github_search/data/models/github_repository_model.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class GithubSearchLocalDataSource {
  Future<List<GithubRepositoryModel>> getCachedRepositories(String term);

  Future<void> cacheGithubRepositories(
      List<GithubRepositoryModel> githubRepositories);
}

class GithubSearchLocalDataSourceImpl implements GithubSearchLocalDataSource {
  final SharedPreferences sharedPreferences;

  GithubSearchLocalDataSourceImpl({@required this.sharedPreferences});

  @override
  Future<List<GithubRepositoryModel>> getCachedRepositories(String term) {
    // TODO implement
    throw UnimplementedError();
  }

  @override
  Future<void> cacheGithubRepositories(
      List<GithubRepositoryModel> githubRepositories) {
    // TODO implement
    // List<String> githubRepositoriesString = githubRepositories.map((repository) => repository.toJson(repository)).toList
    // githubRepositories.forEach((element) {
    //
    // });
    // sharedPreferences.setStringList('REPOSITORIES_CACHED', githubRepoSerialized);
    throw UnimplementedError();
  }
}
