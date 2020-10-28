import 'package:github_search/core/error/exceptions.dart';
import 'package:github_search/core/network/network_info.dart';
import 'package:github_search/data/datasources/github_cache.dart';
import 'package:github_search/data/datasources/github_api.dart';
import 'package:github_search/data/models/search_result/search_result.dart';
import 'package:github_search/domain/repositories/i_github_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IGithubRepository)
class GithubRepository implements IGithubRepository {
  final IGithubCache _cache;
  final IGithubRemote _githubClient;
  final NetworkInfo _networkInfo;

  GithubRepository(this._cache, this._githubClient, this._networkInfo);

  @override
  Future<SearchResult> getSearchResult(String term) async {
    if (_cache.contains(term)) {
      return _cache.getSearchResult(term);
    } else {
      if (await _networkInfo.isConnected) {
        final result = await _githubClient.searchResult(term);
        _cache.cacheSearchResult(term, result);
        return result;
      } else
        throw ConnectionError();
    }
  }
}
