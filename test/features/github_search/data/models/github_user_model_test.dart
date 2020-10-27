import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:github_search/features/github_search/data/models/GithubUserModel.dart';
import 'package:github_search/features/github_search/domain/entities/github_user.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  final tGithubUser = GithubUserModel(
      login: "vasyan123", avatarUrl: "https://vasyan123.vasyanthebest.com");

  test('should be subclass of GithubUser entity', () async {
    expect(tGithubUser, isA<GithubUser>());
  });

  test('from json', () async {
    //arrange
    final Map<String, dynamic> jsonMap =
        json.decode(fixture('githubUser.json'));
    //act
    final result = GithubUserModel.fromJson(jsonMap);

    //assert
    expect(result, tGithubUser);
  });

  test('to json', () async {
    final Map<String, dynamic> result = tGithubUser.toJson();

    expect(result, {
      "login": "vasyan123",
      "avatar_url": "https://vasyan123.vasyanthebest.com"
    });
  });
}
