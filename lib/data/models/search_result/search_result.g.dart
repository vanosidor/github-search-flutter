// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchResult _$_$_SearchResultFromJson(Map<String, dynamic> json) {
  return _$_SearchResult(
    items: (json['items'] as List)
        ?.map((e) => e == null
            ? null
            : SearchResultItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_SearchResultToJson(_$_SearchResult instance) =>
    <String, dynamic>{
      'items': instance.items,
    };
