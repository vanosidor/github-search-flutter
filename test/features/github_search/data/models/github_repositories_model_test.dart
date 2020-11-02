import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:github_search/features/github_search/data/models/github_repositories_model.dart';
import 'package:github_search/features/github_search/data/models/github_repository_model.dart';
import 'package:github_search/features/github_search/data/models/github_user_model.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  final tGithubUserModel1 = GithubUserModel(
      login: "flutter",
      avatarUrl: "https://avatars3.githubusercontent.com/u/14101776?v=4");
  final tGithubRepositoryModel1 = GithubRepositoryModel(
      fullName: 'flutter/flutter',
      htmlUrl: 'https://github.com/flutter/flutter',
      owner: tGithubUserModel1);

  final tGithubUserModel2 = GithubUserModel(
      login: "iampawan",
      avatarUrl: "https://avatars1.githubusercontent.com/u/12619420?v=4");
  final tGithubRepositoryModel2 = GithubRepositoryModel(
      fullName: 'iampawan/FlutterExampleApps',
      htmlUrl: 'https://github.com/iampawan/FlutterExampleApps',
      owner: tGithubUserModel2);

  final tGithubRepositories = GithubRepositoriesModel(
      items: [tGithubRepositoryModel1, tGithubRepositoryModel2]);

  test('should be a subclass of List<GithubRepositoryModel>', () async {
    expect(tGithubRepositories, isA<GithubRepositoriesModel>());
  });

  test('from json', () async {
    //arrange
    final Map<String, dynamic> jsonMap =
        json.decode(fixture('github_repositories.json'));

    // act
    final result = GithubRepositoriesModel.fromJson(jsonMap);

    //arrange
    expect(result, tGithubRepositories);
  });

  test('to json', () async {
    //act
    final Map<String, dynamic> actual = tGithubRepositories.toJson();
    final Map<String, dynamic> expected = {
      "items": [
        {
          "full_name": "flutter/flutter",
          "owner": {
            "login": "flutter",
            "avatar_url":
                "https://avatars3.githubusercontent.com/u/14101776?v=4"
          },
          "html_url": "https://github.com/flutter/flutter"
        },
        {
          "full_name": "iampawan/FlutterExampleApps",
          "owner": {
            "login": "iampawan",
            "avatar_url":
                "https://avatars1.githubusercontent.com/u/12619420?v=4",
          },
          "html_url": "https://github.com/iampawan/FlutterExampleApps"
        }
      ]
    };
    //assert
    expect(actual, expected);
  });
}
