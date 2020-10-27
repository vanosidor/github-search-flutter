import 'package:github_search/features/github_search/data/models/GithubUserModel.dart';
import 'package:github_search/features/github_search/domain/entities/github_repository.dart';
import 'package:meta/meta.dart';

class GithubRepositoryModel extends GithubRepository {
  final String fullName;
  final String htmlUrl;
  final GithubUserModel owner;

  GithubRepositoryModel(
      {@required this.fullName, @required this.htmlUrl, @required this.owner});

  factory GithubRepositoryModel.fromJson(Map<String, dynamic> jsonMap) {
    final GithubUserModel owner = GithubUserModel.fromJson(jsonMap['owner']);
    return GithubRepositoryModel(
      fullName: jsonMap['full_name'],
      htmlUrl: jsonMap['html_url'],
      owner: owner,
    );
  }

  Map<String, dynamic> toJson(GithubRepositoryModel tGithubRepositoryModel) {
    return {
      'full_name': fullName,
      'html_url': htmlUrl,
      'owner': owner.toJson(),
    };
  }
}
