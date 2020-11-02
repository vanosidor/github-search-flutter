import 'package:dartz/dartz.dart';
import 'package:github_search/core/error/failures.dart';
import 'package:github_search/features/github_search/domain/entities/github_repositories.dart';

abstract class GithubSearchRepository {
  Future<Either<Failure, GithubRepositories>> getGithubRepositories(
      String term);
}
