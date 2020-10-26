import 'package:dartz/dartz.dart';
import 'package:github_search/core/error/failure.dart';
import 'package:github_search/features/github_search/domain/entities/github_repository.dart';
import 'package:meta/meta.dart';

abstract class GithubSearchRepository {
  Future<Either<Failure, List<GithubRepository>>> getGithubRepositories(String term);
}
