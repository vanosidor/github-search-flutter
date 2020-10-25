import 'package:dartz/dartz.dart';
import 'package:github_search/core/error/failure.dart';
import 'package:github_search/features/github_search/domain/entities/github_repository.dart';
import 'package:github_search/features/github_search/domain/repositories/github_search_repository.dart';
import 'package:meta/meta.dart';

class GetGithubRepositoriesUsecase {
  final GithubSearchRepository repository;

  GetGithubRepositoriesUsecase(this.repository);

  Future<Either<Failure, List<GithubRepository>>> execute({@required String term}) async {
    return await repository.getGithubRepositories(term);
  }
}