import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:github_search/features/github_search/data/models/github_repository_model.dart';
import 'package:github_search/features/github_search/data/models/github_user_model.dart';
import 'package:github_search/features/github_search/domain/entities/github_repository.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  final tGithubUserModel = GithubUserModel(
      login: "flutter",
      avatarUrl: "https://avatars3.githubusercontent.com/u/14101776?v=4");
  final tGithubRepositoryModel = GithubRepositoryModel(
      fullName: 'flutter/flutter',
      htmlUrl: 'https://github.com/flutter/flutter',
      owner: tGithubUserModel);
  test(
    'should be a subclass of GithubRepository entity',
    () async {
      //assert
      expect(tGithubRepositoryModel, isA<GithubRepository>());
    },
  );

  test(
    'from json',
    () async {
      //arrange
      final Map<String, dynamic> jsonMap =
          json.decode(fixture('github_repository.json'));
      //act
      final result = GithubRepositoryModel.fromJson(jsonMap);
      //assert
      expect(result, tGithubRepositoryModel);
    },
  );

  test(
    'to json',
    () async {
      final result = tGithubRepositoryModel.toJson();
      //assert
      expect(result, {
        "full_name": "flutter/flutter",
        "owner": {
          "login": "flutter",
          "avatar_url": "https://avatars3.githubusercontent.com/u/14101776?v=4"
        },
        "html_url": "https://github.com/flutter/flutter"
      });
    },
  );
}
