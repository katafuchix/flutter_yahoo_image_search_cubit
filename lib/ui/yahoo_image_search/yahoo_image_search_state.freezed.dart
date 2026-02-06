// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'yahoo_image_search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$YahooImageSearchState {
  ScreenState get screen => throw _privateConstructorUsedError;
  DialogState get dialog => throw _privateConstructorUsedError;
  List<String> get favoriteUrls => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;

  /// Create a copy of YahooImageSearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $YahooImageSearchStateCopyWith<YahooImageSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YahooImageSearchStateCopyWith<$Res> {
  factory $YahooImageSearchStateCopyWith(YahooImageSearchState value,
          $Res Function(YahooImageSearchState) then) =
      _$YahooImageSearchStateCopyWithImpl<$Res, YahooImageSearchState>;
  @useResult
  $Res call(
      {ScreenState screen,
      DialogState dialog,
      List<String> favoriteUrls,
      int currentPage});

  $ScreenStateCopyWith<$Res> get screen;
  $DialogStateCopyWith<$Res> get dialog;
}

/// @nodoc
class _$YahooImageSearchStateCopyWithImpl<$Res,
        $Val extends YahooImageSearchState>
    implements $YahooImageSearchStateCopyWith<$Res> {
  _$YahooImageSearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of YahooImageSearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? screen = null,
    Object? dialog = null,
    Object? favoriteUrls = null,
    Object? currentPage = null,
  }) {
    return _then(_value.copyWith(
      screen: null == screen
          ? _value.screen
          : screen // ignore: cast_nullable_to_non_nullable
              as ScreenState,
      dialog: null == dialog
          ? _value.dialog
          : dialog // ignore: cast_nullable_to_non_nullable
              as DialogState,
      favoriteUrls: null == favoriteUrls
          ? _value.favoriteUrls
          : favoriteUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of YahooImageSearchState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ScreenStateCopyWith<$Res> get screen {
    return $ScreenStateCopyWith<$Res>(_value.screen, (value) {
      return _then(_value.copyWith(screen: value) as $Val);
    });
  }

  /// Create a copy of YahooImageSearchState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DialogStateCopyWith<$Res> get dialog {
    return $DialogStateCopyWith<$Res>(_value.dialog, (value) {
      return _then(_value.copyWith(dialog: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$YahooImageSearchStateImplCopyWith<$Res>
    implements $YahooImageSearchStateCopyWith<$Res> {
  factory _$$YahooImageSearchStateImplCopyWith(
          _$YahooImageSearchStateImpl value,
          $Res Function(_$YahooImageSearchStateImpl) then) =
      __$$YahooImageSearchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ScreenState screen,
      DialogState dialog,
      List<String> favoriteUrls,
      int currentPage});

  @override
  $ScreenStateCopyWith<$Res> get screen;
  @override
  $DialogStateCopyWith<$Res> get dialog;
}

/// @nodoc
class __$$YahooImageSearchStateImplCopyWithImpl<$Res>
    extends _$YahooImageSearchStateCopyWithImpl<$Res,
        _$YahooImageSearchStateImpl>
    implements _$$YahooImageSearchStateImplCopyWith<$Res> {
  __$$YahooImageSearchStateImplCopyWithImpl(_$YahooImageSearchStateImpl _value,
      $Res Function(_$YahooImageSearchStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of YahooImageSearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? screen = null,
    Object? dialog = null,
    Object? favoriteUrls = null,
    Object? currentPage = null,
  }) {
    return _then(_$YahooImageSearchStateImpl(
      screen: null == screen
          ? _value.screen
          : screen // ignore: cast_nullable_to_non_nullable
              as ScreenState,
      dialog: null == dialog
          ? _value.dialog
          : dialog // ignore: cast_nullable_to_non_nullable
              as DialogState,
      favoriteUrls: null == favoriteUrls
          ? _value._favoriteUrls
          : favoriteUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$YahooImageSearchStateImpl implements _YahooImageSearchState {
  const _$YahooImageSearchStateImpl(
      {this.screen = const ScreenState.initial(''),
      this.dialog = const DialogState.idle(),
      final List<String> favoriteUrls = const [],
      this.currentPage = 1})
      : _favoriteUrls = favoriteUrls;

  @override
  @JsonKey()
  final ScreenState screen;
  @override
  @JsonKey()
  final DialogState dialog;
  final List<String> _favoriteUrls;
  @override
  @JsonKey()
  List<String> get favoriteUrls {
    if (_favoriteUrls is EqualUnmodifiableListView) return _favoriteUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favoriteUrls);
  }

  @override
  @JsonKey()
  final int currentPage;

  @override
  String toString() {
    return 'YahooImageSearchState(screen: $screen, dialog: $dialog, favoriteUrls: $favoriteUrls, currentPage: $currentPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$YahooImageSearchStateImpl &&
            (identical(other.screen, screen) || other.screen == screen) &&
            (identical(other.dialog, dialog) || other.dialog == dialog) &&
            const DeepCollectionEquality()
                .equals(other._favoriteUrls, _favoriteUrls) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, screen, dialog,
      const DeepCollectionEquality().hash(_favoriteUrls), currentPage);

  /// Create a copy of YahooImageSearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$YahooImageSearchStateImplCopyWith<_$YahooImageSearchStateImpl>
      get copyWith => __$$YahooImageSearchStateImplCopyWithImpl<
          _$YahooImageSearchStateImpl>(this, _$identity);
}

abstract class _YahooImageSearchState implements YahooImageSearchState {
  const factory _YahooImageSearchState(
      {final ScreenState screen,
      final DialogState dialog,
      final List<String> favoriteUrls,
      final int currentPage}) = _$YahooImageSearchStateImpl;

  @override
  ScreenState get screen;
  @override
  DialogState get dialog;
  @override
  List<String> get favoriteUrls;
  @override
  int get currentPage;

  /// Create a copy of YahooImageSearchState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$YahooImageSearchStateImplCopyWith<_$YahooImageSearchStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ScreenState {
  String get word => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String word) initial,
    required TResult Function(String word) loading,
    required TResult Function(List<ImageResult> results, String word)
        loadingMore,
    required TResult Function(
            List<ImageResult> results, String word, bool hasNext)
        success,
    required TResult Function(String message, String word) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String word)? initial,
    TResult? Function(String word)? loading,
    TResult? Function(List<ImageResult> results, String word)? loadingMore,
    TResult? Function(List<ImageResult> results, String word, bool hasNext)?
        success,
    TResult? Function(String message, String word)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String word)? initial,
    TResult Function(String word)? loading,
    TResult Function(List<ImageResult> results, String word)? loadingMore,
    TResult Function(List<ImageResult> results, String word, bool hasNext)?
        success,
    TResult Function(String message, String word)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScreenInitial value) initial,
    required TResult Function(ScreenLoading value) loading,
    required TResult Function(ScreenLoadingMore value) loadingMore,
    required TResult Function(ScreenSuccess value) success,
    required TResult Function(ScreenError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScreenInitial value)? initial,
    TResult? Function(ScreenLoading value)? loading,
    TResult? Function(ScreenLoadingMore value)? loadingMore,
    TResult? Function(ScreenSuccess value)? success,
    TResult? Function(ScreenError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScreenInitial value)? initial,
    TResult Function(ScreenLoading value)? loading,
    TResult Function(ScreenLoadingMore value)? loadingMore,
    TResult Function(ScreenSuccess value)? success,
    TResult Function(ScreenError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScreenStateCopyWith<ScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScreenStateCopyWith<$Res> {
  factory $ScreenStateCopyWith(
          ScreenState value, $Res Function(ScreenState) then) =
      _$ScreenStateCopyWithImpl<$Res, ScreenState>;
  @useResult
  $Res call({String word});
}

/// @nodoc
class _$ScreenStateCopyWithImpl<$Res, $Val extends ScreenState>
    implements $ScreenStateCopyWith<$Res> {
  _$ScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = null,
  }) {
    return _then(_value.copyWith(
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScreenInitialImplCopyWith<$Res>
    implements $ScreenStateCopyWith<$Res> {
  factory _$$ScreenInitialImplCopyWith(
          _$ScreenInitialImpl value, $Res Function(_$ScreenInitialImpl) then) =
      __$$ScreenInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String word});
}

/// @nodoc
class __$$ScreenInitialImplCopyWithImpl<$Res>
    extends _$ScreenStateCopyWithImpl<$Res, _$ScreenInitialImpl>
    implements _$$ScreenInitialImplCopyWith<$Res> {
  __$$ScreenInitialImplCopyWithImpl(
      _$ScreenInitialImpl _value, $Res Function(_$ScreenInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = null,
  }) {
    return _then(_$ScreenInitialImpl(
      null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ScreenInitialImpl implements ScreenInitial {
  const _$ScreenInitialImpl(this.word);

  @override
  final String word;

  @override
  String toString() {
    return 'ScreenState.initial(word: $word)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScreenInitialImpl &&
            (identical(other.word, word) || other.word == word));
  }

  @override
  int get hashCode => Object.hash(runtimeType, word);

  /// Create a copy of ScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScreenInitialImplCopyWith<_$ScreenInitialImpl> get copyWith =>
      __$$ScreenInitialImplCopyWithImpl<_$ScreenInitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String word) initial,
    required TResult Function(String word) loading,
    required TResult Function(List<ImageResult> results, String word)
        loadingMore,
    required TResult Function(
            List<ImageResult> results, String word, bool hasNext)
        success,
    required TResult Function(String message, String word) error,
  }) {
    return initial(word);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String word)? initial,
    TResult? Function(String word)? loading,
    TResult? Function(List<ImageResult> results, String word)? loadingMore,
    TResult? Function(List<ImageResult> results, String word, bool hasNext)?
        success,
    TResult? Function(String message, String word)? error,
  }) {
    return initial?.call(word);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String word)? initial,
    TResult Function(String word)? loading,
    TResult Function(List<ImageResult> results, String word)? loadingMore,
    TResult Function(List<ImageResult> results, String word, bool hasNext)?
        success,
    TResult Function(String message, String word)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(word);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScreenInitial value) initial,
    required TResult Function(ScreenLoading value) loading,
    required TResult Function(ScreenLoadingMore value) loadingMore,
    required TResult Function(ScreenSuccess value) success,
    required TResult Function(ScreenError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScreenInitial value)? initial,
    TResult? Function(ScreenLoading value)? loading,
    TResult? Function(ScreenLoadingMore value)? loadingMore,
    TResult? Function(ScreenSuccess value)? success,
    TResult? Function(ScreenError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScreenInitial value)? initial,
    TResult Function(ScreenLoading value)? loading,
    TResult Function(ScreenLoadingMore value)? loadingMore,
    TResult Function(ScreenSuccess value)? success,
    TResult Function(ScreenError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ScreenInitial implements ScreenState {
  const factory ScreenInitial(final String word) = _$ScreenInitialImpl;

  @override
  String get word;

  /// Create a copy of ScreenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScreenInitialImplCopyWith<_$ScreenInitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScreenLoadingImplCopyWith<$Res>
    implements $ScreenStateCopyWith<$Res> {
  factory _$$ScreenLoadingImplCopyWith(
          _$ScreenLoadingImpl value, $Res Function(_$ScreenLoadingImpl) then) =
      __$$ScreenLoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String word});
}

/// @nodoc
class __$$ScreenLoadingImplCopyWithImpl<$Res>
    extends _$ScreenStateCopyWithImpl<$Res, _$ScreenLoadingImpl>
    implements _$$ScreenLoadingImplCopyWith<$Res> {
  __$$ScreenLoadingImplCopyWithImpl(
      _$ScreenLoadingImpl _value, $Res Function(_$ScreenLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = null,
  }) {
    return _then(_$ScreenLoadingImpl(
      null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ScreenLoadingImpl implements ScreenLoading {
  const _$ScreenLoadingImpl(this.word);

  @override
  final String word;

  @override
  String toString() {
    return 'ScreenState.loading(word: $word)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScreenLoadingImpl &&
            (identical(other.word, word) || other.word == word));
  }

  @override
  int get hashCode => Object.hash(runtimeType, word);

  /// Create a copy of ScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScreenLoadingImplCopyWith<_$ScreenLoadingImpl> get copyWith =>
      __$$ScreenLoadingImplCopyWithImpl<_$ScreenLoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String word) initial,
    required TResult Function(String word) loading,
    required TResult Function(List<ImageResult> results, String word)
        loadingMore,
    required TResult Function(
            List<ImageResult> results, String word, bool hasNext)
        success,
    required TResult Function(String message, String word) error,
  }) {
    return loading(word);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String word)? initial,
    TResult? Function(String word)? loading,
    TResult? Function(List<ImageResult> results, String word)? loadingMore,
    TResult? Function(List<ImageResult> results, String word, bool hasNext)?
        success,
    TResult? Function(String message, String word)? error,
  }) {
    return loading?.call(word);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String word)? initial,
    TResult Function(String word)? loading,
    TResult Function(List<ImageResult> results, String word)? loadingMore,
    TResult Function(List<ImageResult> results, String word, bool hasNext)?
        success,
    TResult Function(String message, String word)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(word);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScreenInitial value) initial,
    required TResult Function(ScreenLoading value) loading,
    required TResult Function(ScreenLoadingMore value) loadingMore,
    required TResult Function(ScreenSuccess value) success,
    required TResult Function(ScreenError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScreenInitial value)? initial,
    TResult? Function(ScreenLoading value)? loading,
    TResult? Function(ScreenLoadingMore value)? loadingMore,
    TResult? Function(ScreenSuccess value)? success,
    TResult? Function(ScreenError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScreenInitial value)? initial,
    TResult Function(ScreenLoading value)? loading,
    TResult Function(ScreenLoadingMore value)? loadingMore,
    TResult Function(ScreenSuccess value)? success,
    TResult Function(ScreenError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ScreenLoading implements ScreenState {
  const factory ScreenLoading(final String word) = _$ScreenLoadingImpl;

  @override
  String get word;

  /// Create a copy of ScreenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScreenLoadingImplCopyWith<_$ScreenLoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScreenLoadingMoreImplCopyWith<$Res>
    implements $ScreenStateCopyWith<$Res> {
  factory _$$ScreenLoadingMoreImplCopyWith(_$ScreenLoadingMoreImpl value,
          $Res Function(_$ScreenLoadingMoreImpl) then) =
      __$$ScreenLoadingMoreImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ImageResult> results, String word});
}

/// @nodoc
class __$$ScreenLoadingMoreImplCopyWithImpl<$Res>
    extends _$ScreenStateCopyWithImpl<$Res, _$ScreenLoadingMoreImpl>
    implements _$$ScreenLoadingMoreImplCopyWith<$Res> {
  __$$ScreenLoadingMoreImplCopyWithImpl(_$ScreenLoadingMoreImpl _value,
      $Res Function(_$ScreenLoadingMoreImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
    Object? word = null,
  }) {
    return _then(_$ScreenLoadingMoreImpl(
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ImageResult>,
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ScreenLoadingMoreImpl implements ScreenLoadingMore {
  const _$ScreenLoadingMoreImpl(
      {required final List<ImageResult> results, required this.word})
      : _results = results;

  final List<ImageResult> _results;
  @override
  List<ImageResult> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  final String word;

  @override
  String toString() {
    return 'ScreenState.loadingMore(results: $results, word: $word)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScreenLoadingMoreImpl &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.word, word) || other.word == word));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_results), word);

  /// Create a copy of ScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScreenLoadingMoreImplCopyWith<_$ScreenLoadingMoreImpl> get copyWith =>
      __$$ScreenLoadingMoreImplCopyWithImpl<_$ScreenLoadingMoreImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String word) initial,
    required TResult Function(String word) loading,
    required TResult Function(List<ImageResult> results, String word)
        loadingMore,
    required TResult Function(
            List<ImageResult> results, String word, bool hasNext)
        success,
    required TResult Function(String message, String word) error,
  }) {
    return loadingMore(results, word);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String word)? initial,
    TResult? Function(String word)? loading,
    TResult? Function(List<ImageResult> results, String word)? loadingMore,
    TResult? Function(List<ImageResult> results, String word, bool hasNext)?
        success,
    TResult? Function(String message, String word)? error,
  }) {
    return loadingMore?.call(results, word);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String word)? initial,
    TResult Function(String word)? loading,
    TResult Function(List<ImageResult> results, String word)? loadingMore,
    TResult Function(List<ImageResult> results, String word, bool hasNext)?
        success,
    TResult Function(String message, String word)? error,
    required TResult orElse(),
  }) {
    if (loadingMore != null) {
      return loadingMore(results, word);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScreenInitial value) initial,
    required TResult Function(ScreenLoading value) loading,
    required TResult Function(ScreenLoadingMore value) loadingMore,
    required TResult Function(ScreenSuccess value) success,
    required TResult Function(ScreenError value) error,
  }) {
    return loadingMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScreenInitial value)? initial,
    TResult? Function(ScreenLoading value)? loading,
    TResult? Function(ScreenLoadingMore value)? loadingMore,
    TResult? Function(ScreenSuccess value)? success,
    TResult? Function(ScreenError value)? error,
  }) {
    return loadingMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScreenInitial value)? initial,
    TResult Function(ScreenLoading value)? loading,
    TResult Function(ScreenLoadingMore value)? loadingMore,
    TResult Function(ScreenSuccess value)? success,
    TResult Function(ScreenError value)? error,
    required TResult orElse(),
  }) {
    if (loadingMore != null) {
      return loadingMore(this);
    }
    return orElse();
  }
}

abstract class ScreenLoadingMore implements ScreenState {
  const factory ScreenLoadingMore(
      {required final List<ImageResult> results,
      required final String word}) = _$ScreenLoadingMoreImpl;

  List<ImageResult> get results;
  @override
  String get word;

  /// Create a copy of ScreenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScreenLoadingMoreImplCopyWith<_$ScreenLoadingMoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScreenSuccessImplCopyWith<$Res>
    implements $ScreenStateCopyWith<$Res> {
  factory _$$ScreenSuccessImplCopyWith(
          _$ScreenSuccessImpl value, $Res Function(_$ScreenSuccessImpl) then) =
      __$$ScreenSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ImageResult> results, String word, bool hasNext});
}

/// @nodoc
class __$$ScreenSuccessImplCopyWithImpl<$Res>
    extends _$ScreenStateCopyWithImpl<$Res, _$ScreenSuccessImpl>
    implements _$$ScreenSuccessImplCopyWith<$Res> {
  __$$ScreenSuccessImplCopyWithImpl(
      _$ScreenSuccessImpl _value, $Res Function(_$ScreenSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
    Object? word = null,
    Object? hasNext = null,
  }) {
    return _then(_$ScreenSuccessImpl(
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ImageResult>,
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      hasNext: null == hasNext
          ? _value.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ScreenSuccessImpl implements ScreenSuccess {
  const _$ScreenSuccessImpl(
      {required final List<ImageResult> results,
      required this.word,
      this.hasNext = true})
      : _results = results;

  final List<ImageResult> _results;
  @override
  List<ImageResult> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  final String word;
  @override
  @JsonKey()
  final bool hasNext;

  @override
  String toString() {
    return 'ScreenState.success(results: $results, word: $word, hasNext: $hasNext)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScreenSuccessImpl &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.word, word) || other.word == word) &&
            (identical(other.hasNext, hasNext) || other.hasNext == hasNext));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_results), word, hasNext);

  /// Create a copy of ScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScreenSuccessImplCopyWith<_$ScreenSuccessImpl> get copyWith =>
      __$$ScreenSuccessImplCopyWithImpl<_$ScreenSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String word) initial,
    required TResult Function(String word) loading,
    required TResult Function(List<ImageResult> results, String word)
        loadingMore,
    required TResult Function(
            List<ImageResult> results, String word, bool hasNext)
        success,
    required TResult Function(String message, String word) error,
  }) {
    return success(results, word, hasNext);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String word)? initial,
    TResult? Function(String word)? loading,
    TResult? Function(List<ImageResult> results, String word)? loadingMore,
    TResult? Function(List<ImageResult> results, String word, bool hasNext)?
        success,
    TResult? Function(String message, String word)? error,
  }) {
    return success?.call(results, word, hasNext);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String word)? initial,
    TResult Function(String word)? loading,
    TResult Function(List<ImageResult> results, String word)? loadingMore,
    TResult Function(List<ImageResult> results, String word, bool hasNext)?
        success,
    TResult Function(String message, String word)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(results, word, hasNext);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScreenInitial value) initial,
    required TResult Function(ScreenLoading value) loading,
    required TResult Function(ScreenLoadingMore value) loadingMore,
    required TResult Function(ScreenSuccess value) success,
    required TResult Function(ScreenError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScreenInitial value)? initial,
    TResult? Function(ScreenLoading value)? loading,
    TResult? Function(ScreenLoadingMore value)? loadingMore,
    TResult? Function(ScreenSuccess value)? success,
    TResult? Function(ScreenError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScreenInitial value)? initial,
    TResult Function(ScreenLoading value)? loading,
    TResult Function(ScreenLoadingMore value)? loadingMore,
    TResult Function(ScreenSuccess value)? success,
    TResult Function(ScreenError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ScreenSuccess implements ScreenState {
  const factory ScreenSuccess(
      {required final List<ImageResult> results,
      required final String word,
      final bool hasNext}) = _$ScreenSuccessImpl;

  List<ImageResult> get results;
  @override
  String get word;
  bool get hasNext;

  /// Create a copy of ScreenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScreenSuccessImplCopyWith<_$ScreenSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScreenErrorImplCopyWith<$Res>
    implements $ScreenStateCopyWith<$Res> {
  factory _$$ScreenErrorImplCopyWith(
          _$ScreenErrorImpl value, $Res Function(_$ScreenErrorImpl) then) =
      __$$ScreenErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String word});
}

/// @nodoc
class __$$ScreenErrorImplCopyWithImpl<$Res>
    extends _$ScreenStateCopyWithImpl<$Res, _$ScreenErrorImpl>
    implements _$$ScreenErrorImplCopyWith<$Res> {
  __$$ScreenErrorImplCopyWithImpl(
      _$ScreenErrorImpl _value, $Res Function(_$ScreenErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? word = null,
  }) {
    return _then(_$ScreenErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ScreenErrorImpl implements ScreenError {
  const _$ScreenErrorImpl({required this.message, required this.word});

  @override
  final String message;
  @override
  final String word;

  @override
  String toString() {
    return 'ScreenState.error(message: $message, word: $word)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScreenErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.word, word) || other.word == word));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, word);

  /// Create a copy of ScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScreenErrorImplCopyWith<_$ScreenErrorImpl> get copyWith =>
      __$$ScreenErrorImplCopyWithImpl<_$ScreenErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String word) initial,
    required TResult Function(String word) loading,
    required TResult Function(List<ImageResult> results, String word)
        loadingMore,
    required TResult Function(
            List<ImageResult> results, String word, bool hasNext)
        success,
    required TResult Function(String message, String word) error,
  }) {
    return error(message, word);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String word)? initial,
    TResult? Function(String word)? loading,
    TResult? Function(List<ImageResult> results, String word)? loadingMore,
    TResult? Function(List<ImageResult> results, String word, bool hasNext)?
        success,
    TResult? Function(String message, String word)? error,
  }) {
    return error?.call(message, word);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String word)? initial,
    TResult Function(String word)? loading,
    TResult Function(List<ImageResult> results, String word)? loadingMore,
    TResult Function(List<ImageResult> results, String word, bool hasNext)?
        success,
    TResult Function(String message, String word)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, word);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScreenInitial value) initial,
    required TResult Function(ScreenLoading value) loading,
    required TResult Function(ScreenLoadingMore value) loadingMore,
    required TResult Function(ScreenSuccess value) success,
    required TResult Function(ScreenError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScreenInitial value)? initial,
    TResult? Function(ScreenLoading value)? loading,
    TResult? Function(ScreenLoadingMore value)? loadingMore,
    TResult? Function(ScreenSuccess value)? success,
    TResult? Function(ScreenError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScreenInitial value)? initial,
    TResult Function(ScreenLoading value)? loading,
    TResult Function(ScreenLoadingMore value)? loadingMore,
    TResult Function(ScreenSuccess value)? success,
    TResult Function(ScreenError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ScreenError implements ScreenState {
  const factory ScreenError(
      {required final String message,
      required final String word}) = _$ScreenErrorImpl;

  String get message;
  @override
  String get word;

  /// Create a copy of ScreenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScreenErrorImplCopyWith<_$ScreenErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DialogState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(String message) success,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(String message)? success,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(String message)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DialogIdle value) idle,
    required TResult Function(DialogLoading value) loading,
    required TResult Function(DialogSuccess value) success,
    required TResult Function(DialogError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DialogIdle value)? idle,
    TResult? Function(DialogLoading value)? loading,
    TResult? Function(DialogSuccess value)? success,
    TResult? Function(DialogError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DialogIdle value)? idle,
    TResult Function(DialogLoading value)? loading,
    TResult Function(DialogSuccess value)? success,
    TResult Function(DialogError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DialogStateCopyWith<$Res> {
  factory $DialogStateCopyWith(
          DialogState value, $Res Function(DialogState) then) =
      _$DialogStateCopyWithImpl<$Res, DialogState>;
}

/// @nodoc
class _$DialogStateCopyWithImpl<$Res, $Val extends DialogState>
    implements $DialogStateCopyWith<$Res> {
  _$DialogStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DialogState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$DialogIdleImplCopyWith<$Res> {
  factory _$$DialogIdleImplCopyWith(
          _$DialogIdleImpl value, $Res Function(_$DialogIdleImpl) then) =
      __$$DialogIdleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DialogIdleImplCopyWithImpl<$Res>
    extends _$DialogStateCopyWithImpl<$Res, _$DialogIdleImpl>
    implements _$$DialogIdleImplCopyWith<$Res> {
  __$$DialogIdleImplCopyWithImpl(
      _$DialogIdleImpl _value, $Res Function(_$DialogIdleImpl) _then)
      : super(_value, _then);

  /// Create a copy of DialogState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DialogIdleImpl implements DialogIdle {
  const _$DialogIdleImpl();

  @override
  String toString() {
    return 'DialogState.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DialogIdleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(String message) success,
    required TResult Function(String message) error,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(String message)? success,
    TResult? Function(String message)? error,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(String message)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DialogIdle value) idle,
    required TResult Function(DialogLoading value) loading,
    required TResult Function(DialogSuccess value) success,
    required TResult Function(DialogError value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DialogIdle value)? idle,
    TResult? Function(DialogLoading value)? loading,
    TResult? Function(DialogSuccess value)? success,
    TResult? Function(DialogError value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DialogIdle value)? idle,
    TResult Function(DialogLoading value)? loading,
    TResult Function(DialogSuccess value)? success,
    TResult Function(DialogError value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class DialogIdle implements DialogState {
  const factory DialogIdle() = _$DialogIdleImpl;
}

/// @nodoc
abstract class _$$DialogLoadingImplCopyWith<$Res> {
  factory _$$DialogLoadingImplCopyWith(
          _$DialogLoadingImpl value, $Res Function(_$DialogLoadingImpl) then) =
      __$$DialogLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DialogLoadingImplCopyWithImpl<$Res>
    extends _$DialogStateCopyWithImpl<$Res, _$DialogLoadingImpl>
    implements _$$DialogLoadingImplCopyWith<$Res> {
  __$$DialogLoadingImplCopyWithImpl(
      _$DialogLoadingImpl _value, $Res Function(_$DialogLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of DialogState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DialogLoadingImpl implements DialogLoading {
  const _$DialogLoadingImpl();

  @override
  String toString() {
    return 'DialogState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DialogLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(String message) success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(String message)? success,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(String message)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DialogIdle value) idle,
    required TResult Function(DialogLoading value) loading,
    required TResult Function(DialogSuccess value) success,
    required TResult Function(DialogError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DialogIdle value)? idle,
    TResult? Function(DialogLoading value)? loading,
    TResult? Function(DialogSuccess value)? success,
    TResult? Function(DialogError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DialogIdle value)? idle,
    TResult Function(DialogLoading value)? loading,
    TResult Function(DialogSuccess value)? success,
    TResult Function(DialogError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class DialogLoading implements DialogState {
  const factory DialogLoading() = _$DialogLoadingImpl;
}

/// @nodoc
abstract class _$$DialogSuccessImplCopyWith<$Res> {
  factory _$$DialogSuccessImplCopyWith(
          _$DialogSuccessImpl value, $Res Function(_$DialogSuccessImpl) then) =
      __$$DialogSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$DialogSuccessImplCopyWithImpl<$Res>
    extends _$DialogStateCopyWithImpl<$Res, _$DialogSuccessImpl>
    implements _$$DialogSuccessImplCopyWith<$Res> {
  __$$DialogSuccessImplCopyWithImpl(
      _$DialogSuccessImpl _value, $Res Function(_$DialogSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of DialogState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$DialogSuccessImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DialogSuccessImpl implements DialogSuccess {
  const _$DialogSuccessImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'DialogState.success(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DialogSuccessImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of DialogState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DialogSuccessImplCopyWith<_$DialogSuccessImpl> get copyWith =>
      __$$DialogSuccessImplCopyWithImpl<_$DialogSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(String message) success,
    required TResult Function(String message) error,
  }) {
    return success(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(String message)? success,
    TResult? Function(String message)? error,
  }) {
    return success?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(String message)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DialogIdle value) idle,
    required TResult Function(DialogLoading value) loading,
    required TResult Function(DialogSuccess value) success,
    required TResult Function(DialogError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DialogIdle value)? idle,
    TResult? Function(DialogLoading value)? loading,
    TResult? Function(DialogSuccess value)? success,
    TResult? Function(DialogError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DialogIdle value)? idle,
    TResult Function(DialogLoading value)? loading,
    TResult Function(DialogSuccess value)? success,
    TResult Function(DialogError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class DialogSuccess implements DialogState {
  const factory DialogSuccess(final String message) = _$DialogSuccessImpl;

  String get message;

  /// Create a copy of DialogState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DialogSuccessImplCopyWith<_$DialogSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DialogErrorImplCopyWith<$Res> {
  factory _$$DialogErrorImplCopyWith(
          _$DialogErrorImpl value, $Res Function(_$DialogErrorImpl) then) =
      __$$DialogErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$DialogErrorImplCopyWithImpl<$Res>
    extends _$DialogStateCopyWithImpl<$Res, _$DialogErrorImpl>
    implements _$$DialogErrorImplCopyWith<$Res> {
  __$$DialogErrorImplCopyWithImpl(
      _$DialogErrorImpl _value, $Res Function(_$DialogErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of DialogState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$DialogErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DialogErrorImpl implements DialogError {
  const _$DialogErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'DialogState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DialogErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of DialogState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DialogErrorImplCopyWith<_$DialogErrorImpl> get copyWith =>
      __$$DialogErrorImplCopyWithImpl<_$DialogErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(String message) success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(String message)? success,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(String message)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DialogIdle value) idle,
    required TResult Function(DialogLoading value) loading,
    required TResult Function(DialogSuccess value) success,
    required TResult Function(DialogError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DialogIdle value)? idle,
    TResult? Function(DialogLoading value)? loading,
    TResult? Function(DialogSuccess value)? success,
    TResult? Function(DialogError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DialogIdle value)? idle,
    TResult Function(DialogLoading value)? loading,
    TResult Function(DialogSuccess value)? success,
    TResult Function(DialogError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class DialogError implements DialogState {
  const factory DialogError(final String message) = _$DialogErrorImpl;

  String get message;

  /// Create a copy of DialogState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DialogErrorImplCopyWith<_$DialogErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
