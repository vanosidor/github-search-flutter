import 'dart:convert';

import 'package:github_search/core/error/exceptions.dart';
import 'package:github_search/features/github_search/data/models/github_repositories_model.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

abstract class GithubSearchRemoteDataSource {
  Future<GithubRepositoriesModel> getGithubRepositories(String term);
}

class GithubSearchRemoteDataSourceImpl implements GithubSearchRemoteDataSource {

  final http.Client httpClient;

  GithubSearchRemoteDataSourceImpl({@required this.httpClient});

  @override
  Future<GithubRepositoriesModel> getGithubRepositories(String term) async {
    final response =  await httpClient.get('https://api.github.com/search/repositories?q=$term');
    if (response.statusCode == 200) {
      return GithubRepositoriesModel.fromJson(json.decode(response.body));
    } else {
      throw ServerException();
    }

    // final results = json.decode(response.body);
    //
    // if (response.statusCode == 200) {
    //   return SearchResult.fromJson(results);
    // } else {
    //   throw SearchResultError.fromJson(results);
    // }
  }

}