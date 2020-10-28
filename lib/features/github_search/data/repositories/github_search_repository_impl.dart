import 'package:dartz/dartz.dart';
import 'package:github_search/core/error/exceptions.dart';
import 'package:github_search/core/error/failures.dart';
import 'package:github_search/core/platform/network_info.dart';
import 'package:github_search/features/github_search/data/datasources/github_search_local_data_source.dart';
import 'package:github_search/features/github_search/data/datasources/github_search_remote_data_source.dart';
import 'package:github_search/features/github_search/domain/entities/github_repository.dart';
import 'package:github_search/features/github_search/domain/repositories/github_search_repository.dart';
import 'package:meta/meta.dart';

class GithubSearchRepositoryImpl implements GithubSearchRepository {
  final GithubSearchLocalDataSource localDataSource;
  final GithubSearchRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  GithubSearchRepositoryImpl(
      {@required this.localDataSource,
      @required this.remoteDataSource,
      @required this.networkInfo});

  @override
  Future<Either<Failure, List<GithubRepository>>> getGithubRepositories(
      String term) async {
    bool isConnected = await networkInfo.isConnected;
    if (isConnected) {
      try {
        final repositories = await remoteDataSource.getGithubRepositories(term);
        await localDataSource.cacheGithubRepositories(repositories);
        return Right(repositories);
      } on ServerException catch (e) {
        return Left(ServerFailure());
      }
    } else {
      try {
        final result = await localDataSource.getGithubRepositories(term);
        return Right(result);
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }
}
