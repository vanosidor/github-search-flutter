part of 'github_search_bloc.dart';

@freezed
abstract class GithubSearchEvent with _$GithubSearchEvent {
  const factory GithubSearchEvent.textChanged(String text) = TextChanged;
}
