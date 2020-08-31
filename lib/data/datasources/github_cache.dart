import 'package:injectable/injectable.dart';

import '../models/search_result/search_result.dart';

abstract class IGithubCache {
  SearchResult getSearchResult(String term);

  void cacheSearchResult(String term, SearchResult searchResult);

  bool contains(String term);

  void remove(String term);
}

@LazySingleton(as: IGithubCache)
class GithubCache implements IGithubCache {
  final _cache = <String, SearchResult>{};

  @override
  bool contains(String term) => _cache.containsKey(term);

  @override
  void remove(String term) => _cache.remove(term);

  @override
  void cacheSearchResult(String term, SearchResult searchResult) =>
      _cache[term] = searchResult;

  @override
  SearchResult getSearchResult(String term) => _cache[term];
}
