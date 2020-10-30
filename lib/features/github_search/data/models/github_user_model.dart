import 'package:github_search/features/github_search/domain/entities/github_user.dart';
import 'package:meta/meta.dart';

class GithubUserModel extends GithubUser {
  GithubUserModel({@required String login, @required String avatarUrl})
      : super(login: login, avatarUrl: avatarUrl);

  factory GithubUserModel.fromJson(Map<String, dynamic> jsonMap) {
    return GithubUserModel(
        login: jsonMap['login'], avatarUrl: jsonMap['avatar_url']);
  }

  Map<String, dynamic> toJson() {
    return {
      "login": login,
      "avatar_url": avatarUrl,
    };
  }
}
