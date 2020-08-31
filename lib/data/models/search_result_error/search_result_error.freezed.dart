// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'search_result_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SearchResultError _$SearchResultErrorFromJson(Map<String, dynamic> json) {
  return _SearchResultError.fromJson(json);
}

class _$SearchResultErrorTearOff {
  const _$SearchResultErrorTearOff();

// ignore: unused_element
  _SearchResultError call({@required String message}) {
    return _SearchResultError(
      message: message,
    );
  }
}

// ignore: unused_element
const $SearchResultError = _$SearchResultErrorTearOff();

mixin _$SearchResultError {
  String get message;

  Map<String, dynamic> toJson();
  $SearchResultErrorCopyWith<SearchResultError> get copyWith;
}

abstract class $SearchResultErrorCopyWith<$Res> {
  factory $SearchResultErrorCopyWith(
          SearchResultError value, $Res Function(SearchResultError) then) =
      _$SearchResultErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

class _$SearchResultErrorCopyWithImpl<$Res>
    implements $SearchResultErrorCopyWith<$Res> {
  _$SearchResultErrorCopyWithImpl(this._value, this._then);

  final SearchResultError _value;
  // ignore: unused_field
  final $Res Function(SearchResultError) _then;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

abstract class _$SearchResultErrorCopyWith<$Res>
    implements $SearchResultErrorCopyWith<$Res> {
  factory _$SearchResultErrorCopyWith(
          _SearchResultError value, $Res Function(_SearchResultError) then) =
      __$SearchResultErrorCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

class __$SearchResultErrorCopyWithImpl<$Res>
    extends _$SearchResultErrorCopyWithImpl<$Res>
    implements _$SearchResultErrorCopyWith<$Res> {
  __$SearchResultErrorCopyWithImpl(
      _SearchResultError _value, $Res Function(_SearchResultError) _then)
      : super(_value, (v) => _then(v as _SearchResultError));

  @override
  _SearchResultError get _value => super._value as _SearchResultError;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_SearchResultError(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

@JsonSerializable()
class _$_SearchResultError implements _SearchResultError {
  const _$_SearchResultError({@required this.message})
      : assert(message != null);

  factory _$_SearchResultError.fromJson(Map<String, dynamic> json) =>
      _$_$_SearchResultErrorFromJson(json);

  @override
  final String message;

  @override
  String toString() {
    return 'SearchResultError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchResultError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  _$SearchResultErrorCopyWith<_SearchResultError> get copyWith =>
      __$SearchResultErrorCopyWithImpl<_SearchResultError>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SearchResultErrorToJson(this);
  }
}

abstract class _SearchResultError implements SearchResultError {
  const factory _SearchResultError({@required String message}) =
      _$_SearchResultError;

  factory _SearchResultError.fromJson(Map<String, dynamic> json) =
      _$_SearchResultError.fromJson;

  @override
  String get message;
  @override
  _$SearchResultErrorCopyWith<_SearchResultError> get copyWith;
}
