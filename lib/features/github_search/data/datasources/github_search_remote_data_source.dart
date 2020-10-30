import 'package:github_search/features/github_search/data/models/github_repository_model.dart';

abstract class GithubSearchRemoteDataSource {
  Future<List<GithubRepositoryModel>> getGithubRepositories(String term);
}
