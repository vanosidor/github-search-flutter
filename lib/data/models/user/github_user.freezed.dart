// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'github_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
GithubUser _$GithubUserFromJson(Map<String, dynamic> json) {
  return _GithubUser.fromJson(json);
}

class _$GithubUserTearOff {
  const _$GithubUserTearOff();

// ignore: unused_element
  _GithubUser call(
      {@required
          String login,
      @required
      @JsonKey(name: 'avatar_url', nullable: true)
          String avatarUrl}) {
    return _GithubUser(
      login: login,
      avatarUrl: avatarUrl,
    );
  }
}

// ignore: unused_element
const $GithubUser = _$GithubUserTearOff();

mixin _$GithubUser {
  String get login;
  @JsonKey(name: 'avatar_url', nullable: true)
  String get avatarUrl;

  Map<String, dynamic> toJson();
  $GithubUserCopyWith<GithubUser> get copyWith;
}

abstract class $GithubUserCopyWith<$Res> {
  factory $GithubUserCopyWith(
          GithubUser value, $Res Function(GithubUser) then) =
      _$GithubUserCopyWithImpl<$Res>;
  $Res call(
      {String login,
      @JsonKey(name: 'avatar_url', nullable: true) String avatarUrl});
}

class _$GithubUserCopyWithImpl<$Res> implements $GithubUserCopyWith<$Res> {
  _$GithubUserCopyWithImpl(this._value, this._then);

  final GithubUser _value;
  // ignore: unused_field
  final $Res Function(GithubUser) _then;

  @override
  $Res call({
    Object login = freezed,
    Object avatarUrl = freezed,
  }) {
    return _then(_value.copyWith(
      login: login == freezed ? _value.login : login as String,
      avatarUrl: avatarUrl == freezed ? _value.avatarUrl : avatarUrl as String,
    ));
  }
}

abstract class _$GithubUserCopyWith<$Res> implements $GithubUserCopyWith<$Res> {
  factory _$GithubUserCopyWith(
          _GithubUser value, $Res Function(_GithubUser) then) =
      __$GithubUserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String login,
      @JsonKey(name: 'avatar_url', nullable: true) String avatarUrl});
}

class __$GithubUserCopyWithImpl<$Res> extends _$GithubUserCopyWithImpl<$Res>
    implements _$GithubUserCopyWith<$Res> {
  __$GithubUserCopyWithImpl(
      _GithubUser _value, $Res Function(_GithubUser) _then)
      : super(_value, (v) => _then(v as _GithubUser));

  @override
  _GithubUser get _value => super._value as _GithubUser;

  @override
  $Res call({
    Object login = freezed,
    Object avatarUrl = freezed,
  }) {
    return _then(_GithubUser(
      login: login == freezed ? _value.login : login as String,
      avatarUrl: avatarUrl == freezed ? _value.avatarUrl : avatarUrl as String,
    ));
  }
}

@JsonSerializable()
class _$_GithubUser with DiagnosticableTreeMixin implements _GithubUser {
  const _$_GithubUser(
      {@required this.login,
      @required @JsonKey(name: 'avatar_url', nullable: true) this.avatarUrl})
      : assert(login != null),
        assert(avatarUrl != null);

  factory _$_GithubUser.fromJson(Map<String, dynamic> json) =>
      _$_$_GithubUserFromJson(json);

  @override
  final String login;
  @override
  @JsonKey(name: 'avatar_url', nullable: true)
  final String avatarUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GithubUser(login: $login, avatarUrl: $avatarUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GithubUser'))
      ..add(DiagnosticsProperty('login', login))
      ..add(DiagnosticsProperty('avatarUrl', avatarUrl));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GithubUser &&
            (identical(other.login, login) ||
                const DeepCollectionEquality().equals(other.login, login)) &&
            (identical(other.avatarUrl, avatarUrl) ||
                const DeepCollectionEquality()
                    .equals(other.avatarUrl, avatarUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(login) ^
      const DeepCollectionEquality().hash(avatarUrl);

  @override
  _$GithubUserCopyWith<_GithubUser> get copyWith =>
      __$GithubUserCopyWithImpl<_GithubUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GithubUserToJson(this);
  }
}

abstract class _GithubUser implements GithubUser {
  const factory _GithubUser(
      {@required
          String login,
      @required
      @JsonKey(name: 'avatar_url', nullable: true)
          String avatarUrl}) = _$_GithubUser;

  factory _GithubUser.fromJson(Map<String, dynamic> json) =
      _$_GithubUser.fromJson;

  @override
  String get login;
  @override
  @JsonKey(name: 'avatar_url', nullable: true)
  String get avatarUrl;
  @override
  _$GithubUserCopyWith<_GithubUser> get copyWith;
}
