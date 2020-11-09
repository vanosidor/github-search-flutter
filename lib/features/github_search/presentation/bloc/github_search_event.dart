part of 'github_search_bloc.dart';

@immutable
abstract class GithubSearchEvent extends Equatable {
  const GithubSearchEvent();
}

class TextChanged extends GithubSearchEvent {
  final String text;

  TextChanged({@required this.text});

  @override
  List<Object> get props => [text];
}
