import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_search/core/error/exceptions.dart';
import 'package:github_search/data/models/search_result_error/search_result_error.dart';
import 'package:github_search/data/models/search_result_item/search_result_item.dart';
import 'package:github_search/domain/repositories/i_github_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

part 'github_search_event.dart';

part 'github_search_state.dart';

part 'github_search_bloc.freezed.dart';

@injectable
class GithubSearchBloc extends Bloc<GithubSearchEvent, GithubSearchState> {
  GithubSearchBloc(this._githubRepository)
      : super(GithubSearchState.emptyState());

  final IGithubRepository _githubRepository;

  @override
  void onTransition(
      Transition<GithubSearchEvent, GithubSearchState> transition) {
    print(transition);
    super.onTransition(transition);
  }

  @override
  Stream<Transition<GithubSearchEvent, GithubSearchState>> transformEvents(
      Stream<GithubSearchEvent> events,
      TransitionFunction<GithubSearchEvent, GithubSearchState> transitionFn) {
    return events
        .debounceTime(const Duration(milliseconds: 300))
        .switchMap(transitionFn);
  }

  @override
  Stream<GithubSearchState> mapEventToState(
    GithubSearchEvent event,
  ) async* {
    if (event is TextChanged) {
      final String _term = event.text;

      if (_term.isEmpty) {
        yield GithubSearchState.emptyState();
      } else {
        yield GithubSearchState.loadingState();

        try {
          final _result = await _githubRepository.getSearchResult(_term);
          yield GithubSearchState.successState(_result.items);
        } catch (error) {
          if (error is SearchResultError) {
                      yield GithubSearchState.errorState(error.message);
          }
          else if (error is ConnectionError) {
            yield GithubSearchState.errorState(error.message);
          } else  yield GithubSearchState.errorState('Unknown error');
//          yield error is SearchResultError
//              ? GithubSearchState.errorState(error.message)
//              : GithubSearchState.errorState('Unknown error');
        }
      }
    }
  }
}
