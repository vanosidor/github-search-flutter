import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:github_search/features/github_search/data/models/GithubRepositoryModel.dart';
import 'package:github_search/features/github_search/data/models/GithubUserModel.dart';
import 'package:github_search/features/github_search/domain/entities/github_repository.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  final tGithubUserModel = GithubUserModel(
      login: "vasyan123", avatarUrl: "https://vasyan123.vasyanthebest.com");
  final tGithubRepositoryModel = GithubRepositoryModel(
      fullName: 'flutter/flutter',
      htmlUrl: 'https://github.com/flutter/flutter',
      owner: tGithubUserModel);
  test(
    'should be a subclass of GithubRepository entity',
    () async {
      //arrange

      //act
      //assert
      expect(tGithubRepositoryModel, isA<GithubRepository>());
    },
  );

  test(
    'from json',
    () async {
      //arrange
      final Map<String, dynamic> jsonMap =
          json.decode(fixture('githubRepository.json'));
      //act
      final result = GithubRepositoryModel.fromJson(jsonMap);
      //assert
      expect(result, tGithubRepositoryModel);
    },
  );

  test(
    'to json',
    () async {
      final result = tGithubRepositoryModel.toJson(tGithubRepositoryModel);
      //assert
      expect(result, {
        "full_name": "flutter/flutter",
        "owner": {
          "login": "vasyan123",
          "avatar_url": "https://vasyan123.vasyanthebest.com"
        },
        "html_url": "https://github.com/flutter/flutter"
      });
    },
  );
}
