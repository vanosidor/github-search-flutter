import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_search/core/error/failures.dart';
import 'package:github_search/features/github_search/domain/entities/github_repositories.dart';
import 'package:github_search/features/github_search/domain/entities/github_repository.dart';
import 'package:github_search/features/github_search/domain/entities/github_user.dart';
import 'package:github_search/features/github_search/domain/repositories/github_search_repository.dart';
import 'package:github_search/features/github_search/domain/usecases/get_github_search_usecase.dart';
import 'package:mockito/mockito.dart';

class MockGithubSearchRepository extends Mock
    implements GithubSearchRepository {}

void main() {
  GetGithubRepositoriesUseCase usecase;
  MockGithubSearchRepository mockGithubRepository;

  setUp(() {
    mockGithubRepository = MockGithubSearchRepository();
    usecase = GetGithubRepositoriesUseCase(mockGithubRepository);
  });

  final tTerm = 'flutter';
  final tGithubUser1 = GithubUser(
      login: 'flutter',
      avatarUrl: 'https://avatars3.githubusercontent.com/u/14101776?v=4');
  final tGithubUser2 = GithubUser(
      login: 'iampawan',
      avatarUrl: 'https://avatars1.githubusercontent.com/u/12619420?v=4');
  final tGithubRepository1 = GithubRepository(
      fullName: 'flutter',
      htmlUrl: 'https://api.github.com/repos/flutter/flutter',
      owner: tGithubUser1);

  final tGithubRepository2 = GithubRepository(
      fullName: 'iampawan/FlutterExampleApps',
      htmlUrl: 'https://github.com/iampawan/FlutterExampleApps',
      owner: tGithubUser2);

  final tRepositories = GithubRepositories(items: [tGithubRepository1, tGithubRepository2]);

  test(
    'should get github repositories entity for the given term',
    () async {
      //arrange
      when(mockGithubRepository.getGithubRepositories(any))
          .thenAnswer((_) async => Right(tRepositories));
      // act
      final Either<Failure, GithubRepositories> result =
          await usecase(Params(term: tTerm));

      // assert
      expect(result, Right(tRepositories));
      verify(mockGithubRepository.getGithubRepositories(tTerm));
      verifyNoMoreInteractions(mockGithubRepository);
    },
  );
}
