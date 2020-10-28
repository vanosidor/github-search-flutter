import 'package:github_search/features/github_search/data/models/GithubRepositoryModel.dart';

abstract class GithubSearchLocalDataSource {
  Future <List<GithubRepositoryModel>> getGithubRepositories(String term);
  Future <void> cacheGithubRepositories(List<GithubRepositoryModel> githubRepositories);
}