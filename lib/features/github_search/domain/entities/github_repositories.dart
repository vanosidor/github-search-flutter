import 'package:equatable/equatable.dart';
import 'package:github_search/features/github_search/domain/entities/github_repository.dart';
import 'package:meta/meta.dart';

class GithubRepositories extends Equatable {
  final List<GithubRepository> items;

  GithubRepositories({@required this.items});

  @override
  List<Object> get props => [items];
}
