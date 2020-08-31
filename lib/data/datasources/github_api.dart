import 'dart:async';
import 'dart:convert';
import 'package:github_search/core/error/exceptions.dart';
import 'package:github_search/data/models/search_result_error/search_result_error.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

import '../models/search_result/search_result.dart';

abstract class IGithubRemote {
  Future<SearchResult> searchResult(String term);
}

@LazySingleton(as: IGithubRemote)
class GithubApi implements IGithubRemote {
  final http.Client _httpClient;
  final String _baseUrl;

  const GithubApi(this._httpClient, this._baseUrl);

  @override
  Future<SearchResult> searchResult(String term) async {
    final response = await _httpClient.get(Uri.parse("$_baseUrl$term"));
    final results = json.decode(response.body);

    if (response.statusCode == 200) {
      return SearchResult.fromJson(results);
    } else {
      throw SearchResultError.fromJson(results);
    }
  }
}
