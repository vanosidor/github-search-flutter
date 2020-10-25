import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class GithubUser extends Equatable {
  final String login;

  final String avatarUrl;

  const GithubUser({@required this.login, @required this.avatarUrl});

  @override
  List<Object> get props => [login, avatarUrl];
}
