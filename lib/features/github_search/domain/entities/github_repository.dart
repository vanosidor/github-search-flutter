import 'package:equatable/equatable.dart';
import 'package:github_search/features/github_search/domain/entities/github_user.dart';
import 'package:meta/meta.dart';

class GithubRepository extends Equatable {
  final String fullName;
  final String htmlUrl;
  final GithubUser owner;

  const GithubRepository(
      {@required this.fullName, @required this.htmlUrl, @required this.owner});

  @override
  List<Object> get props => [fullName, htmlUrl, owner];
}
