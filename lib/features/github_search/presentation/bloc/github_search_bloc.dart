import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:github_search/core/error/failures.dart';
import 'package:github_search/features/github_search/domain/entities/github_repositories.dart';
import 'package:github_search/features/github_search/domain/usecases/get_github_search_usecase.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';

part 'github_search_event.dart';

part 'github_search_state.dart';

const SERVER_FAILURE_MESSAGE = 'Server failure';
const CACHE_FAILURE_MESSAGE = 'Cache failure';
const DEBOUNCE_INPUT_TIME_MILLISECONDS = 300;

class GithubSearchBloc extends Bloc<GithubSearchEvent, GithubSearchState> {
  final GetGithubRepositoriesUseCase getGithubRepositories;

  GithubSearchBloc({@required this.getGithubRepositories})
      : assert(getGithubRepositories != null),
        super(Empty());

  @override
  Stream<Transition<GithubSearchEvent, GithubSearchState>> transformEvents(
      Stream<GithubSearchEvent> events,
      TransitionFunction<GithubSearchEvent, GithubSearchState> transitionFn) {
    return events
        .debounceTime(
            const Duration(milliseconds: DEBOUNCE_INPUT_TIME_MILLISECONDS))
        .switchMap(transitionFn);
  }

  @override
  Stream<GithubSearchState> mapEventToState(
    GithubSearchEvent event,
  ) async* {
    if (event is TextChanged) {
      final text = event.text;
      if (text.isEmpty) {
        yield Empty();
      } else {
        yield Loading();
        final repositoriesOrFailure =
            await getGithubRepositories(Params(term: text));
        yield repositoriesOrFailure.fold(
            (failure) => Error(message: _getErrorMessage(failure)),
            (repositories) => Loaded(repositories: repositories));
      }
    }
  }

  String _getErrorMessage(Failure failure) {
    switch (failure.runtimeType) {
      case CacheFailure:
        return CACHE_FAILURE_MESSAGE;
      case ServerFailure:
        return SERVER_FAILURE_MESSAGE;
      default:
        throw UnsupportedError('Unknown failure');
    }
  }
}
