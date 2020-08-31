part of 'github_search_bloc.dart';

@freezed
abstract class GithubSearchState with _$GithubSearchState {
  const factory GithubSearchState.emptyState() = SearchEmptyState;
  const factory GithubSearchState.loadingState() = SearchLoadingState;
  const factory GithubSearchState.errorState(String message) = SearchErrorState;
  const factory GithubSearchState.successState(List <SearchResultItem> items) = SearcSuccessState;
}
