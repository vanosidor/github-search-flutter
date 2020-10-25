import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_search/data/models/search_result_item/search_result_item.dart';

part 'search_result.freezed.dart';

part 'search_result.g.dart';

@freezed
abstract class SearchResult with _$SearchResult {
  const factory SearchResult({@required List<SearchResultItem> items}) =
      _SearchResult;

  factory SearchResult.fromJson(Map<String, dynamic> json) =>
      _$SearchResultFromJson(json);
}
