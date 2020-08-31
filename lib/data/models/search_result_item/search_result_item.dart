import 'package:freezed_annotation/freezed_annotation.dart';
import '../user/github_user.dart';

part 'search_result_item.g.dart';

part 'search_result_item.freezed.dart';

@freezed
abstract class SearchResultItem with _$SearchResultItem {
  const factory SearchResultItem({
    @JsonKey(name: 'full_name') @required String fullName,
    @JsonKey(name: 'html_url') @required String htmlUrl,
    @required GithubUser owner,
  }) = _SearchResultItem;

  factory SearchResultItem.fromJson(Map<String, dynamic> json) =>
      _$SearchResultItemFromJson(json);
}
