import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:github_search/features/github_search/data/models/github_user_model.dart';
import 'package:github_search/features/github_search/domain/entities/github_user.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  final tGithubUser = GithubUserModel(
      login: "flutter",
      avatarUrl: "https://avatars3.githubusercontent.com/u/14101776?v=4");

  test('should be subclass of GithubUser entity', () async {
    expect(tGithubUser, isA<GithubUser>());
  });

  test('from json', () async {
    //arrange
    final Map<String, dynamic> jsonMap =
        json.decode(fixture('github_user.json'));
    //act
    final result = GithubUserModel.fromJson(jsonMap);

    //assert
    expect(result, tGithubUser);
  });

  test('to json', () async {
    final Map<String, dynamic> result = tGithubUser.toJson();

    expect(result, {
      "login": "flutter",
      "avatar_url": "https://avatars3.githubusercontent.com/u/14101776?v=4"
    });
  });
}
