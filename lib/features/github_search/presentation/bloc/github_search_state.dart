part of 'github_search_bloc.dart';

@immutable
abstract class GithubSearchState extends Equatable {
  const GithubSearchState();
}

class Empty extends GithubSearchState {
  @override
  List<Object> get props => [];
}

class Loading extends GithubSearchState {
  @override
  List<Object> get props => [];
}

class Loaded extends GithubSearchState {
  final GithubRepositories repositories;

  Loaded({@required this.repositories});

  @override
  List<Object> get props => [repositories];
}

class Error extends GithubSearchState {
  final String message;

  const Error({@required this.message});

  @override
  List<Object> get props => [message];
}
