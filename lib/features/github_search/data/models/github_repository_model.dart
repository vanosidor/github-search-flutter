import 'package:github_search/features/github_search/data/models/github_user_model.dart';
import 'package:github_search/features/github_search/domain/entities/github_repository.dart';
import 'package:meta/meta.dart';

class GithubRepositoryModel extends GithubRepository {
  GithubRepositoryModel(
      {@required String fullName,
      @required String htmlUrl,
      @required GithubUserModel owner})
      : super(fullName: fullName, htmlUrl: htmlUrl, owner: owner);

  factory GithubRepositoryModel.fromJson(Map<String, dynamic> jsonMap) {
    final GithubUserModel owner = GithubUserModel.fromJson(jsonMap['owner']);
    return GithubRepositoryModel(
      fullName: jsonMap['full_name'],
      htmlUrl: jsonMap['html_url'],
      owner: owner,
    );
  }

  Map<String, dynamic> toJson() {
    final GithubUserModel owner = this.owner;
    return {
      'full_name': fullName,
      'html_url': htmlUrl,
      'owner': owner.toJson(),
    };
  }
}
