import 'package:github_search/features/github_search/data/models/github_repositories_model.dart';

abstract class GithubSearchRemoteDataSource {
  Future<GithubRepositoriesModel> getGithubRepositories(String term);
}
