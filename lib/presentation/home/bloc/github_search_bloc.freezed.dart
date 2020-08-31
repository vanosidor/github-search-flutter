// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'github_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$GithubSearchEventTearOff {
  const _$GithubSearchEventTearOff();

// ignore: unused_element
  TextChanged textChanged(String text) {
    return TextChanged(
      text,
    );
  }
}

// ignore: unused_element
const $GithubSearchEvent = _$GithubSearchEventTearOff();

mixin _$GithubSearchEvent {
  String get text;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result textChanged(String text),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result textChanged(String text),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result textChanged(TextChanged value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result textChanged(TextChanged value),
    @required Result orElse(),
  });

  $GithubSearchEventCopyWith<GithubSearchEvent> get copyWith;
}

abstract class $GithubSearchEventCopyWith<$Res> {
  factory $GithubSearchEventCopyWith(
          GithubSearchEvent value, $Res Function(GithubSearchEvent) then) =
      _$GithubSearchEventCopyWithImpl<$Res>;
  $Res call({String text});
}

class _$GithubSearchEventCopyWithImpl<$Res>
    implements $GithubSearchEventCopyWith<$Res> {
  _$GithubSearchEventCopyWithImpl(this._value, this._then);

  final GithubSearchEvent _value;
  // ignore: unused_field
  final $Res Function(GithubSearchEvent) _then;

  @override
  $Res call({
    Object text = freezed,
  }) {
    return _then(_value.copyWith(
      text: text == freezed ? _value.text : text as String,
    ));
  }
}

abstract class $TextChangedCopyWith<$Res>
    implements $GithubSearchEventCopyWith<$Res> {
  factory $TextChangedCopyWith(
          TextChanged value, $Res Function(TextChanged) then) =
      _$TextChangedCopyWithImpl<$Res>;
  @override
  $Res call({String text});
}

class _$TextChangedCopyWithImpl<$Res>
    extends _$GithubSearchEventCopyWithImpl<$Res>
    implements $TextChangedCopyWith<$Res> {
  _$TextChangedCopyWithImpl(
      TextChanged _value, $Res Function(TextChanged) _then)
      : super(_value, (v) => _then(v as TextChanged));

  @override
  TextChanged get _value => super._value as TextChanged;

  @override
  $Res call({
    Object text = freezed,
  }) {
    return _then(TextChanged(
      text == freezed ? _value.text : text as String,
    ));
  }
}

class _$TextChanged implements TextChanged {
  const _$TextChanged(this.text) : assert(text != null);

  @override
  final String text;

  @override
  String toString() {
    return 'GithubSearchEvent.textChanged(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TextChanged &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(text);

  @override
  $TextChangedCopyWith<TextChanged> get copyWith =>
      _$TextChangedCopyWithImpl<TextChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result textChanged(String text),
  }) {
    assert(textChanged != null);
    return textChanged(text);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result textChanged(String text),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (textChanged != null) {
      return textChanged(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result textChanged(TextChanged value),
  }) {
    assert(textChanged != null);
    return textChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result textChanged(TextChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (textChanged != null) {
      return textChanged(this);
    }
    return orElse();
  }
}

abstract class TextChanged implements GithubSearchEvent {
  const factory TextChanged(String text) = _$TextChanged;

  @override
  String get text;
  @override
  $TextChangedCopyWith<TextChanged> get copyWith;
}

class _$GithubSearchStateTearOff {
  const _$GithubSearchStateTearOff();

// ignore: unused_element
  SearchEmptyState emptyState() {
    return const SearchEmptyState();
  }

// ignore: unused_element
  SearchLoadingState loadingState() {
    return const SearchLoadingState();
  }

// ignore: unused_element
  SearchErrorState errorState(String message) {
    return SearchErrorState(
      message,
    );
  }

// ignore: unused_element
  SearcSuccessState successState(List<SearchResultItem> items) {
    return SearcSuccessState(
      items,
    );
  }
}

// ignore: unused_element
const $GithubSearchState = _$GithubSearchStateTearOff();

mixin _$GithubSearchState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emptyState(),
    @required Result loadingState(),
    @required Result errorState(String message),
    @required Result successState(List<SearchResultItem> items),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emptyState(),
    Result loadingState(),
    Result errorState(String message),
    Result successState(List<SearchResultItem> items),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emptyState(SearchEmptyState value),
    @required Result loadingState(SearchLoadingState value),
    @required Result errorState(SearchErrorState value),
    @required Result successState(SearcSuccessState value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emptyState(SearchEmptyState value),
    Result loadingState(SearchLoadingState value),
    Result errorState(SearchErrorState value),
    Result successState(SearcSuccessState value),
    @required Result orElse(),
  });
}

abstract class $GithubSearchStateCopyWith<$Res> {
  factory $GithubSearchStateCopyWith(
          GithubSearchState value, $Res Function(GithubSearchState) then) =
      _$GithubSearchStateCopyWithImpl<$Res>;
}

class _$GithubSearchStateCopyWithImpl<$Res>
    implements $GithubSearchStateCopyWith<$Res> {
  _$GithubSearchStateCopyWithImpl(this._value, this._then);

  final GithubSearchState _value;
  // ignore: unused_field
  final $Res Function(GithubSearchState) _then;
}

abstract class $SearchEmptyStateCopyWith<$Res> {
  factory $SearchEmptyStateCopyWith(
          SearchEmptyState value, $Res Function(SearchEmptyState) then) =
      _$SearchEmptyStateCopyWithImpl<$Res>;
}

class _$SearchEmptyStateCopyWithImpl<$Res>
    extends _$GithubSearchStateCopyWithImpl<$Res>
    implements $SearchEmptyStateCopyWith<$Res> {
  _$SearchEmptyStateCopyWithImpl(
      SearchEmptyState _value, $Res Function(SearchEmptyState) _then)
      : super(_value, (v) => _then(v as SearchEmptyState));

  @override
  SearchEmptyState get _value => super._value as SearchEmptyState;
}

class _$SearchEmptyState implements SearchEmptyState {
  const _$SearchEmptyState();

  @override
  String toString() {
    return 'GithubSearchState.emptyState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SearchEmptyState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emptyState(),
    @required Result loadingState(),
    @required Result errorState(String message),
    @required Result successState(List<SearchResultItem> items),
  }) {
    assert(emptyState != null);
    assert(loadingState != null);
    assert(errorState != null);
    assert(successState != null);
    return emptyState();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emptyState(),
    Result loadingState(),
    Result errorState(String message),
    Result successState(List<SearchResultItem> items),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emptyState != null) {
      return emptyState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emptyState(SearchEmptyState value),
    @required Result loadingState(SearchLoadingState value),
    @required Result errorState(SearchErrorState value),
    @required Result successState(SearcSuccessState value),
  }) {
    assert(emptyState != null);
    assert(loadingState != null);
    assert(errorState != null);
    assert(successState != null);
    return emptyState(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emptyState(SearchEmptyState value),
    Result loadingState(SearchLoadingState value),
    Result errorState(SearchErrorState value),
    Result successState(SearcSuccessState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emptyState != null) {
      return emptyState(this);
    }
    return orElse();
  }
}

abstract class SearchEmptyState implements GithubSearchState {
  const factory SearchEmptyState() = _$SearchEmptyState;
}

abstract class $SearchLoadingStateCopyWith<$Res> {
  factory $SearchLoadingStateCopyWith(
          SearchLoadingState value, $Res Function(SearchLoadingState) then) =
      _$SearchLoadingStateCopyWithImpl<$Res>;
}

class _$SearchLoadingStateCopyWithImpl<$Res>
    extends _$GithubSearchStateCopyWithImpl<$Res>
    implements $SearchLoadingStateCopyWith<$Res> {
  _$SearchLoadingStateCopyWithImpl(
      SearchLoadingState _value, $Res Function(SearchLoadingState) _then)
      : super(_value, (v) => _then(v as SearchLoadingState));

  @override
  SearchLoadingState get _value => super._value as SearchLoadingState;
}

class _$SearchLoadingState implements SearchLoadingState {
  const _$SearchLoadingState();

  @override
  String toString() {
    return 'GithubSearchState.loadingState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SearchLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emptyState(),
    @required Result loadingState(),
    @required Result errorState(String message),
    @required Result successState(List<SearchResultItem> items),
  }) {
    assert(emptyState != null);
    assert(loadingState != null);
    assert(errorState != null);
    assert(successState != null);
    return loadingState();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emptyState(),
    Result loadingState(),
    Result errorState(String message),
    Result successState(List<SearchResultItem> items),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadingState != null) {
      return loadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emptyState(SearchEmptyState value),
    @required Result loadingState(SearchLoadingState value),
    @required Result errorState(SearchErrorState value),
    @required Result successState(SearcSuccessState value),
  }) {
    assert(emptyState != null);
    assert(loadingState != null);
    assert(errorState != null);
    assert(successState != null);
    return loadingState(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emptyState(SearchEmptyState value),
    Result loadingState(SearchLoadingState value),
    Result errorState(SearchErrorState value),
    Result successState(SearcSuccessState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadingState != null) {
      return loadingState(this);
    }
    return orElse();
  }
}

abstract class SearchLoadingState implements GithubSearchState {
  const factory SearchLoadingState() = _$SearchLoadingState;
}

abstract class $SearchErrorStateCopyWith<$Res> {
  factory $SearchErrorStateCopyWith(
          SearchErrorState value, $Res Function(SearchErrorState) then) =
      _$SearchErrorStateCopyWithImpl<$Res>;
  $Res call({String message});
}

class _$SearchErrorStateCopyWithImpl<$Res>
    extends _$GithubSearchStateCopyWithImpl<$Res>
    implements $SearchErrorStateCopyWith<$Res> {
  _$SearchErrorStateCopyWithImpl(
      SearchErrorState _value, $Res Function(SearchErrorState) _then)
      : super(_value, (v) => _then(v as SearchErrorState));

  @override
  SearchErrorState get _value => super._value as SearchErrorState;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(SearchErrorState(
      message == freezed ? _value.message : message as String,
    ));
  }
}

class _$SearchErrorState implements SearchErrorState {
  const _$SearchErrorState(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'GithubSearchState.errorState(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchErrorState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $SearchErrorStateCopyWith<SearchErrorState> get copyWith =>
      _$SearchErrorStateCopyWithImpl<SearchErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emptyState(),
    @required Result loadingState(),
    @required Result errorState(String message),
    @required Result successState(List<SearchResultItem> items),
  }) {
    assert(emptyState != null);
    assert(loadingState != null);
    assert(errorState != null);
    assert(successState != null);
    return errorState(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emptyState(),
    Result loadingState(),
    Result errorState(String message),
    Result successState(List<SearchResultItem> items),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (errorState != null) {
      return errorState(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emptyState(SearchEmptyState value),
    @required Result loadingState(SearchLoadingState value),
    @required Result errorState(SearchErrorState value),
    @required Result successState(SearcSuccessState value),
  }) {
    assert(emptyState != null);
    assert(loadingState != null);
    assert(errorState != null);
    assert(successState != null);
    return errorState(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emptyState(SearchEmptyState value),
    Result loadingState(SearchLoadingState value),
    Result errorState(SearchErrorState value),
    Result successState(SearcSuccessState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (errorState != null) {
      return errorState(this);
    }
    return orElse();
  }
}

abstract class SearchErrorState implements GithubSearchState {
  const factory SearchErrorState(String message) = _$SearchErrorState;

  String get message;
  $SearchErrorStateCopyWith<SearchErrorState> get copyWith;
}

abstract class $SearcSuccessStateCopyWith<$Res> {
  factory $SearcSuccessStateCopyWith(
          SearcSuccessState value, $Res Function(SearcSuccessState) then) =
      _$SearcSuccessStateCopyWithImpl<$Res>;
  $Res call({List<SearchResultItem> items});
}

class _$SearcSuccessStateCopyWithImpl<$Res>
    extends _$GithubSearchStateCopyWithImpl<$Res>
    implements $SearcSuccessStateCopyWith<$Res> {
  _$SearcSuccessStateCopyWithImpl(
      SearcSuccessState _value, $Res Function(SearcSuccessState) _then)
      : super(_value, (v) => _then(v as SearcSuccessState));

  @override
  SearcSuccessState get _value => super._value as SearcSuccessState;

  @override
  $Res call({
    Object items = freezed,
  }) {
    return _then(SearcSuccessState(
      items == freezed ? _value.items : items as List<SearchResultItem>,
    ));
  }
}

class _$SearcSuccessState implements SearcSuccessState {
  const _$SearcSuccessState(this.items) : assert(items != null);

  @override
  final List<SearchResultItem> items;

  @override
  String toString() {
    return 'GithubSearchState.successState(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearcSuccessState &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(items);

  @override
  $SearcSuccessStateCopyWith<SearcSuccessState> get copyWith =>
      _$SearcSuccessStateCopyWithImpl<SearcSuccessState>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emptyState(),
    @required Result loadingState(),
    @required Result errorState(String message),
    @required Result successState(List<SearchResultItem> items),
  }) {
    assert(emptyState != null);
    assert(loadingState != null);
    assert(errorState != null);
    assert(successState != null);
    return successState(items);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emptyState(),
    Result loadingState(),
    Result errorState(String message),
    Result successState(List<SearchResultItem> items),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successState != null) {
      return successState(items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emptyState(SearchEmptyState value),
    @required Result loadingState(SearchLoadingState value),
    @required Result errorState(SearchErrorState value),
    @required Result successState(SearcSuccessState value),
  }) {
    assert(emptyState != null);
    assert(loadingState != null);
    assert(errorState != null);
    assert(successState != null);
    return successState(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emptyState(SearchEmptyState value),
    Result loadingState(SearchLoadingState value),
    Result errorState(SearchErrorState value),
    Result successState(SearcSuccessState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successState != null) {
      return successState(this);
    }
    return orElse();
  }
}

abstract class SearcSuccessState implements GithubSearchState {
  const factory SearcSuccessState(List<SearchResultItem> items) =
      _$SearcSuccessState;

  List<SearchResultItem> get items;
  $SearcSuccessStateCopyWith<SearcSuccessState> get copyWith;
}
