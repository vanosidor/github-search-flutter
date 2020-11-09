import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_search/core/error/failures.dart';
import 'package:github_search/features/github_search/domain/entities/github_repositories.dart';
import 'package:github_search/features/github_search/domain/entities/github_repository.dart';
import 'package:github_search/features/github_search/domain/entities/github_user.dart';
import 'package:github_search/features/github_search/domain/usecases/get_github_search_usecase.dart';
import 'package:github_search/features/github_search/presentation/bloc/github_search_bloc.dart';
import 'package:mockito/mockito.dart';

class MockGetGithubRepositories extends Mock
    implements GetGithubRepositoriesUseCase {}

void main() {
  GithubSearchBloc bloc;
  MockGetGithubRepositories mockGetGithubRepositories;

  final tTerm = 'flutter';
  final tEmptyTerm = '';
  final tGithubUser = GithubUser(
      login: 'flutter',
      avatarUrl: 'https://avatars3.githubusercontent.com/u/14101776?v=4');
  final tDebounceInputTime =
      Duration(milliseconds: DEBOUNCE_INPUT_TIME_MILLISECONDS);
  final tGithubRepositories = GithubRepositories(items: [
    GithubRepository(
        fullName: 'flutter',
        htmlUrl: 'https://api.github.com/repos/flutter/flutter',
        owner: tGithubUser)
  ]);

  setUp(() {
    mockGetGithubRepositories = MockGetGithubRepositories();
    bloc = GithubSearchBloc(getGithubRepositories: mockGetGithubRepositories);
  });

  test('bloc initial state should be Empty', () async {
    expect(bloc.state, equals(Empty()));
  });

  blocTest('should emit [Empty] if text is empty',
      build: () => bloc,
      act: (bloc) => bloc.add(TextChanged(text: tEmptyTerm)),
      wait: tDebounceInputTime,
      expect: [Empty()]);

  blocTest('should emit [Loading, Loaded] if get repositories success',
      build: () {
        when(mockGetGithubRepositories(Params(term: tTerm)))
            .thenAnswer((_) async => Right(tGithubRepositories));
        return bloc;
      },
      wait: tDebounceInputTime,
      act: (bloc) => bloc.add(TextChanged(text: tTerm)),
      expect: [Loading(), Loaded(repositories: tGithubRepositories)]);

  blocTest('should emit [Loading, Error] if get repositories error',
      build: () {
        when(mockGetGithubRepositories(Params(term: tTerm)))
            .thenAnswer((_) async => Left(ServerFailure()));
        return bloc;
      },
      wait: tDebounceInputTime,
      act: (bloc) => bloc.add(TextChanged(text: tTerm)),
      expect: [Loading(), Error(message: SERVER_FAILURE_MESSAGE)]);

  blocTest('should emit [Loading, Error] with valid error message',
      build: () {
        when(mockGetGithubRepositories(Params(term: tTerm)))
            .thenAnswer((_) async => Left(CacheFailure()));
        return bloc;
      },
      wait: tDebounceInputTime,
      act: (bloc) => bloc.add(TextChanged(text: tTerm)),
      expect: [Loading(), Error(message: CACHE_FAILURE_MESSAGE)]);
}
