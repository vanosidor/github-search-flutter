// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'search_result_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SearchResultItem _$SearchResultItemFromJson(Map<String, dynamic> json) {
  return _SearchResultItem.fromJson(json);
}

class _$SearchResultItemTearOff {
  const _$SearchResultItemTearOff();

// ignore: unused_element
  _SearchResultItem call(
      {@required @JsonKey(name: 'full_name') String fullName,
      @required @JsonKey(name: 'html_url') String htmlUrl,
      @required GithubUser owner}) {
    return _SearchResultItem(
      fullName: fullName,
      htmlUrl: htmlUrl,
      owner: owner,
    );
  }
}

// ignore: unused_element
const $SearchResultItem = _$SearchResultItemTearOff();

mixin _$SearchResultItem {
  @JsonKey(name: 'full_name')
  String get fullName;
  @JsonKey(name: 'html_url')
  String get htmlUrl;
  GithubUser get owner;

  Map<String, dynamic> toJson();
  $SearchResultItemCopyWith<SearchResultItem> get copyWith;
}

abstract class $SearchResultItemCopyWith<$Res> {
  factory $SearchResultItemCopyWith(
          SearchResultItem value, $Res Function(SearchResultItem) then) =
      _$SearchResultItemCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'full_name') String fullName,
      @JsonKey(name: 'html_url') String htmlUrl,
      GithubUser owner});

  $GithubUserCopyWith<$Res> get owner;
}

class _$SearchResultItemCopyWithImpl<$Res>
    implements $SearchResultItemCopyWith<$Res> {
  _$SearchResultItemCopyWithImpl(this._value, this._then);

  final SearchResultItem _value;
  // ignore: unused_field
  final $Res Function(SearchResultItem) _then;

  @override
  $Res call({
    Object fullName = freezed,
    Object htmlUrl = freezed,
    Object owner = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: fullName == freezed ? _value.fullName : fullName as String,
      htmlUrl: htmlUrl == freezed ? _value.htmlUrl : htmlUrl as String,
      owner: owner == freezed ? _value.owner : owner as GithubUser,
    ));
  }

  @override
  $GithubUserCopyWith<$Res> get owner {
    if (_value.owner == null) {
      return null;
    }
    return $GithubUserCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value));
    });
  }
}

abstract class _$SearchResultItemCopyWith<$Res>
    implements $SearchResultItemCopyWith<$Res> {
  factory _$SearchResultItemCopyWith(
          _SearchResultItem value, $Res Function(_SearchResultItem) then) =
      __$SearchResultItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'full_name') String fullName,
      @JsonKey(name: 'html_url') String htmlUrl,
      GithubUser owner});

  @override
  $GithubUserCopyWith<$Res> get owner;
}

class __$SearchResultItemCopyWithImpl<$Res>
    extends _$SearchResultItemCopyWithImpl<$Res>
    implements _$SearchResultItemCopyWith<$Res> {
  __$SearchResultItemCopyWithImpl(
      _SearchResultItem _value, $Res Function(_SearchResultItem) _then)
      : super(_value, (v) => _then(v as _SearchResultItem));

  @override
  _SearchResultItem get _value => super._value as _SearchResultItem;

  @override
  $Res call({
    Object fullName = freezed,
    Object htmlUrl = freezed,
    Object owner = freezed,
  }) {
    return _then(_SearchResultItem(
      fullName: fullName == freezed ? _value.fullName : fullName as String,
      htmlUrl: htmlUrl == freezed ? _value.htmlUrl : htmlUrl as String,
      owner: owner == freezed ? _value.owner : owner as GithubUser,
    ));
  }
}

@JsonSerializable()
class _$_SearchResultItem implements _SearchResultItem {
  const _$_SearchResultItem(
      {@required @JsonKey(name: 'full_name') this.fullName,
      @required @JsonKey(name: 'html_url') this.htmlUrl,
      @required this.owner})
      : assert(fullName != null),
        assert(htmlUrl != null),
        assert(owner != null);

  factory _$_SearchResultItem.fromJson(Map<String, dynamic> json) =>
      _$_$_SearchResultItemFromJson(json);

  @override
  @JsonKey(name: 'full_name')
  final String fullName;
  @override
  @JsonKey(name: 'html_url')
  final String htmlUrl;
  @override
  final GithubUser owner;

  @override
  String toString() {
    return 'SearchResultItem(fullName: $fullName, htmlUrl: $htmlUrl, owner: $owner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchResultItem &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality()
                    .equals(other.fullName, fullName)) &&
            (identical(other.htmlUrl, htmlUrl) ||
                const DeepCollectionEquality()
                    .equals(other.htmlUrl, htmlUrl)) &&
            (identical(other.owner, owner) ||
                const DeepCollectionEquality().equals(other.owner, owner)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(fullName) ^
      const DeepCollectionEquality().hash(htmlUrl) ^
      const DeepCollectionEquality().hash(owner);

  @override
  _$SearchResultItemCopyWith<_SearchResultItem> get copyWith =>
      __$SearchResultItemCopyWithImpl<_SearchResultItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SearchResultItemToJson(this);
  }
}

abstract class _SearchResultItem implements SearchResultItem {
  const factory _SearchResultItem(
      {@required @JsonKey(name: 'full_name') String fullName,
      @required @JsonKey(name: 'html_url') String htmlUrl,
      @required GithubUser owner}) = _$_SearchResultItem;

  factory _SearchResultItem.fromJson(Map<String, dynamic> json) =
      _$_SearchResultItem.fromJson;

  @override
  @JsonKey(name: 'full_name')
  String get fullName;
  @override
  @JsonKey(name: 'html_url')
  String get htmlUrl;
  @override
  GithubUser get owner;
  @override
  _$SearchResultItemCopyWith<_SearchResultItem> get copyWith;
}
