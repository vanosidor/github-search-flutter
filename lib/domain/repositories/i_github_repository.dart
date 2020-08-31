import '../../data/models/search_result/search_result.dart';
abstract class IGithubRepository {
  Future<SearchResult> getSearchResult(String term);
}
