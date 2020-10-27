import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:github_search/core/error/failures.dart';
import 'package:github_search/core/usecases/usecase.dart';
import 'package:github_search/features/github_search/domain/entities/github_repository.dart';
import 'package:github_search/features/github_search/domain/repositories/github_search_repository.dart';
import 'package:meta/meta.dart';

class GetGithubRepositoriesUseCase
    implements UseCase<List<GithubRepository>, Params> {
  final GithubSearchRepository repository;

  GetGithubRepositoriesUseCase(this.repository);

  @override
  Future<Either<Failure, List<GithubRepository>>> call(Params params) async {
    return await repository.getGithubRepositories(params.term);
  }
}

class Params extends Equatable {
  final String term;

  const Params({@required this.term});

  @override
  List<Object> get props => [term];
}
