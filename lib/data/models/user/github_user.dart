import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'github_user.freezed.dart';

part 'github_user.g.dart';

@freezed
abstract class GithubUser with _$GithubUser {
  const factory GithubUser({
    @required String login,
    @JsonKey(name: 'avatar_url', nullable: true) @required String avatarUrl,
  }) = _GithubUser;

  factory GithubUser.fromJson(Map<String, dynamic> json) => _$GithubUserFromJson(json);
}
