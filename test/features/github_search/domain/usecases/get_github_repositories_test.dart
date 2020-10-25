import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_search/features/github_search/domain/entities/github_repository.dart';
import 'package:github_search/features/github_search/domain/entities/github_user.dart';
import 'package:github_search/features/github_search/domain/repositories/github_search_repository.dart';
import 'package:github_search/features/github_search/domain/usecases/get_github_search_usecase.dart';
import 'package:mockito/mockito.dart';

class MockGithubSearchRepository extends Mock
    implements GithubSearchRepository {}

void main() {
  GetGithubRepositoriesUsecase usecase;
  MockGithubSearchRepository mockGithubRepository;

  setUp(() {
    mockGithubRepository = MockGithubSearchRepository();
    usecase = GetGithubRepositoriesUsecase(mockGithubRepository);
  });

  final tTerm = 'flutter';
  final tGithubUser = GithubUser(
      login: 'flutter',
      avatarUrl: 'https://avatars3.githubusercontent.com/u/14101776?v=4');
  final tGithubRepository = GithubRepository(
      fullName: 'flutter',
      htmlUrl: 'https://api.github.com/repos/flutter/flutter',
      owner: tGithubUser);

  test(
    'should get list of github repository for the term',
    () async {
      //arrange
      when(mockGithubRepository.getGithubRepositories(any))
          .thenAnswer((_) async => Right([tGithubRepository]));
      // act
      final result = await usecase.execute(term: tTerm);
      final expected = Right([tGithubRepository]);
      // assert
      expect(result, expected);
      verify(mockGithubRepository.getGithubRepositories(tTerm));
      verifyNoMoreInteractions(mockGithubRepository);
    },
  );
}
