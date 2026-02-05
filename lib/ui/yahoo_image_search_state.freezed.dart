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
mixin _$SearchContext {
  String get word => throw _privateConstructorUsedError;
  bool get isSafeSearch => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchContextCopyWith<SearchContext> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchContextCopyWith<$Res> {
  factory $SearchContextCopyWith(
          SearchContext value, $Res Function(SearchContext) then) =
      _$SearchContextCopyWithImpl<$Res, SearchContext>;
  @useResult
  $Res call({String word, bool isSafeSearch});
}

/// @nodoc
class _$SearchContextCopyWithImpl<$Res, $Val extends SearchContext>
    implements $SearchContextCopyWith<$Res> {
  _$SearchContextCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = null,
    Object? isSafeSearch = null,
  }) {
    return _then(_value.copyWith(
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      isSafeSearch: null == isSafeSearch
          ? _value.isSafeSearch
          : isSafeSearch // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchContextImplCopyWith<$Res>
    implements $SearchContextCopyWith<$Res> {
  factory _$$SearchContextImplCopyWith(
          _$SearchContextImpl value, $Res Function(_$SearchContextImpl) then) =
      __$$SearchContextImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String word, bool isSafeSearch});
}

/// @nodoc
class __$$SearchContextImplCopyWithImpl<$Res>
    extends _$SearchContextCopyWithImpl<$Res, _$SearchContextImpl>
    implements _$$SearchContextImplCopyWith<$Res> {
  __$$SearchContextImplCopyWithImpl(
      _$SearchContextImpl _value, $Res Function(_$SearchContextImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = null,
    Object? isSafeSearch = null,
  }) {
    return _then(_$SearchContextImpl(
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      isSafeSearch: null == isSafeSearch
          ? _value.isSafeSearch
          : isSafeSearch // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SearchContextImpl implements _SearchContext {
  const _$SearchContextImpl({required this.word, this.isSafeSearch = false});

  @override
  final String word;
  @override
  @JsonKey()
  final bool isSafeSearch;

  @override
  String toString() {
    return 'SearchContext(word: $word, isSafeSearch: $isSafeSearch)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchContextImpl &&
            (identical(other.word, word) || other.word == word) &&
            (identical(other.isSafeSearch, isSafeSearch) ||
                other.isSafeSearch == isSafeSearch));
  }

  @override
  int get hashCode => Object.hash(runtimeType, word, isSafeSearch);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchContextImplCopyWith<_$SearchContextImpl> get copyWith =>
      __$$SearchContextImplCopyWithImpl<_$SearchContextImpl>(this, _$identity);
}

abstract class _SearchContext implements SearchContext {
  const factory _SearchContext(
      {required final String word,
      final bool isSafeSearch}) = _$SearchContextImpl;

  @override
  String get word;
  @override
  bool get isSafeSearch;
  @override
  @JsonKey(ignore: true)
  _$$SearchContextImplCopyWith<_$SearchContextImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$YahooImageSearchState {
  SearchContext get context => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchContext context) initial,
    required TResult Function(SearchContext context) loading,
    required TResult Function(List<ImageResult> results, SearchContext context)
        success,
    required TResult Function(String message, SearchContext context) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchContext context)? initial,
    TResult? Function(SearchContext context)? loading,
    TResult? Function(List<ImageResult> results, SearchContext context)?
        success,
    TResult? Function(String message, SearchContext context)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchContext context)? initial,
    TResult Function(SearchContext context)? loading,
    TResult Function(List<ImageResult> results, SearchContext context)? success,
    TResult Function(String message, SearchContext context)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(YahooImageSearchInitial value) initial,
    required TResult Function(YahooImageSearchLoading value) loading,
    required TResult Function(YahooImageSearchSuccess value) success,
    required TResult Function(YahooImageSearchError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(YahooImageSearchInitial value)? initial,
    TResult? Function(YahooImageSearchLoading value)? loading,
    TResult? Function(YahooImageSearchSuccess value)? success,
    TResult? Function(YahooImageSearchError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(YahooImageSearchInitial value)? initial,
    TResult Function(YahooImageSearchLoading value)? loading,
    TResult Function(YahooImageSearchSuccess value)? success,
    TResult Function(YahooImageSearchError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $YahooImageSearchStateCopyWith<YahooImageSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YahooImageSearchStateCopyWith<$Res> {
  factory $YahooImageSearchStateCopyWith(YahooImageSearchState value,
          $Res Function(YahooImageSearchState) then) =
      _$YahooImageSearchStateCopyWithImpl<$Res, YahooImageSearchState>;
  @useResult
  $Res call({SearchContext context});

  $SearchContextCopyWith<$Res> get context;
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

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_value.copyWith(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as SearchContext,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SearchContextCopyWith<$Res> get context {
    return $SearchContextCopyWith<$Res>(_value.context, (value) {
      return _then(_value.copyWith(context: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$YahooImageSearchInitialImplCopyWith<$Res>
    implements $YahooImageSearchStateCopyWith<$Res> {
  factory _$$YahooImageSearchInitialImplCopyWith(
          _$YahooImageSearchInitialImpl value,
          $Res Function(_$YahooImageSearchInitialImpl) then) =
      __$$YahooImageSearchInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SearchContext context});

  @override
  $SearchContextCopyWith<$Res> get context;
}

/// @nodoc
class __$$YahooImageSearchInitialImplCopyWithImpl<$Res>
    extends _$YahooImageSearchStateCopyWithImpl<$Res,
        _$YahooImageSearchInitialImpl>
    implements _$$YahooImageSearchInitialImplCopyWith<$Res> {
  __$$YahooImageSearchInitialImplCopyWithImpl(
      _$YahooImageSearchInitialImpl _value,
      $Res Function(_$YahooImageSearchInitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$YahooImageSearchInitialImpl(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as SearchContext,
    ));
  }
}

/// @nodoc

class _$YahooImageSearchInitialImpl implements YahooImageSearchInitial {
  const _$YahooImageSearchInitialImpl(this.context);

  @override
  final SearchContext context;

  @override
  String toString() {
    return 'YahooImageSearchState.initial(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$YahooImageSearchInitialImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$YahooImageSearchInitialImplCopyWith<_$YahooImageSearchInitialImpl>
      get copyWith => __$$YahooImageSearchInitialImplCopyWithImpl<
          _$YahooImageSearchInitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchContext context) initial,
    required TResult Function(SearchContext context) loading,
    required TResult Function(List<ImageResult> results, SearchContext context)
        success,
    required TResult Function(String message, SearchContext context) error,
  }) {
    return initial(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchContext context)? initial,
    TResult? Function(SearchContext context)? loading,
    TResult? Function(List<ImageResult> results, SearchContext context)?
        success,
    TResult? Function(String message, SearchContext context)? error,
  }) {
    return initial?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchContext context)? initial,
    TResult Function(SearchContext context)? loading,
    TResult Function(List<ImageResult> results, SearchContext context)? success,
    TResult Function(String message, SearchContext context)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(YahooImageSearchInitial value) initial,
    required TResult Function(YahooImageSearchLoading value) loading,
    required TResult Function(YahooImageSearchSuccess value) success,
    required TResult Function(YahooImageSearchError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(YahooImageSearchInitial value)? initial,
    TResult? Function(YahooImageSearchLoading value)? loading,
    TResult? Function(YahooImageSearchSuccess value)? success,
    TResult? Function(YahooImageSearchError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(YahooImageSearchInitial value)? initial,
    TResult Function(YahooImageSearchLoading value)? loading,
    TResult Function(YahooImageSearchSuccess value)? success,
    TResult Function(YahooImageSearchError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class YahooImageSearchInitial implements YahooImageSearchState {
  const factory YahooImageSearchInitial(final SearchContext context) =
      _$YahooImageSearchInitialImpl;

  @override
  SearchContext get context;
  @override
  @JsonKey(ignore: true)
  _$$YahooImageSearchInitialImplCopyWith<_$YahooImageSearchInitialImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$YahooImageSearchLoadingImplCopyWith<$Res>
    implements $YahooImageSearchStateCopyWith<$Res> {
  factory _$$YahooImageSearchLoadingImplCopyWith(
          _$YahooImageSearchLoadingImpl value,
          $Res Function(_$YahooImageSearchLoadingImpl) then) =
      __$$YahooImageSearchLoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SearchContext context});

  @override
  $SearchContextCopyWith<$Res> get context;
}

/// @nodoc
class __$$YahooImageSearchLoadingImplCopyWithImpl<$Res>
    extends _$YahooImageSearchStateCopyWithImpl<$Res,
        _$YahooImageSearchLoadingImpl>
    implements _$$YahooImageSearchLoadingImplCopyWith<$Res> {
  __$$YahooImageSearchLoadingImplCopyWithImpl(
      _$YahooImageSearchLoadingImpl _value,
      $Res Function(_$YahooImageSearchLoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$YahooImageSearchLoadingImpl(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as SearchContext,
    ));
  }
}

/// @nodoc

class _$YahooImageSearchLoadingImpl implements YahooImageSearchLoading {
  const _$YahooImageSearchLoadingImpl(this.context);

  @override
  final SearchContext context;

  @override
  String toString() {
    return 'YahooImageSearchState.loading(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$YahooImageSearchLoadingImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$YahooImageSearchLoadingImplCopyWith<_$YahooImageSearchLoadingImpl>
      get copyWith => __$$YahooImageSearchLoadingImplCopyWithImpl<
          _$YahooImageSearchLoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchContext context) initial,
    required TResult Function(SearchContext context) loading,
    required TResult Function(List<ImageResult> results, SearchContext context)
        success,
    required TResult Function(String message, SearchContext context) error,
  }) {
    return loading(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchContext context)? initial,
    TResult? Function(SearchContext context)? loading,
    TResult? Function(List<ImageResult> results, SearchContext context)?
        success,
    TResult? Function(String message, SearchContext context)? error,
  }) {
    return loading?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchContext context)? initial,
    TResult Function(SearchContext context)? loading,
    TResult Function(List<ImageResult> results, SearchContext context)? success,
    TResult Function(String message, SearchContext context)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(YahooImageSearchInitial value) initial,
    required TResult Function(YahooImageSearchLoading value) loading,
    required TResult Function(YahooImageSearchSuccess value) success,
    required TResult Function(YahooImageSearchError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(YahooImageSearchInitial value)? initial,
    TResult? Function(YahooImageSearchLoading value)? loading,
    TResult? Function(YahooImageSearchSuccess value)? success,
    TResult? Function(YahooImageSearchError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(YahooImageSearchInitial value)? initial,
    TResult Function(YahooImageSearchLoading value)? loading,
    TResult Function(YahooImageSearchSuccess value)? success,
    TResult Function(YahooImageSearchError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class YahooImageSearchLoading implements YahooImageSearchState {
  const factory YahooImageSearchLoading(final SearchContext context) =
      _$YahooImageSearchLoadingImpl;

  @override
  SearchContext get context;
  @override
  @JsonKey(ignore: true)
  _$$YahooImageSearchLoadingImplCopyWith<_$YahooImageSearchLoadingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$YahooImageSearchSuccessImplCopyWith<$Res>
    implements $YahooImageSearchStateCopyWith<$Res> {
  factory _$$YahooImageSearchSuccessImplCopyWith(
          _$YahooImageSearchSuccessImpl value,
          $Res Function(_$YahooImageSearchSuccessImpl) then) =
      __$$YahooImageSearchSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ImageResult> results, SearchContext context});

  @override
  $SearchContextCopyWith<$Res> get context;
}

/// @nodoc
class __$$YahooImageSearchSuccessImplCopyWithImpl<$Res>
    extends _$YahooImageSearchStateCopyWithImpl<$Res,
        _$YahooImageSearchSuccessImpl>
    implements _$$YahooImageSearchSuccessImplCopyWith<$Res> {
  __$$YahooImageSearchSuccessImplCopyWithImpl(
      _$YahooImageSearchSuccessImpl _value,
      $Res Function(_$YahooImageSearchSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
    Object? context = null,
  }) {
    return _then(_$YahooImageSearchSuccessImpl(
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ImageResult>,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as SearchContext,
    ));
  }
}

/// @nodoc

class _$YahooImageSearchSuccessImpl implements YahooImageSearchSuccess {
  const _$YahooImageSearchSuccessImpl(
      {required final List<ImageResult> results, required this.context})
      : _results = results;

  final List<ImageResult> _results;
  @override
  List<ImageResult> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  final SearchContext context;

  @override
  String toString() {
    return 'YahooImageSearchState.success(results: $results, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$YahooImageSearchSuccessImpl &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_results), context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$YahooImageSearchSuccessImplCopyWith<_$YahooImageSearchSuccessImpl>
      get copyWith => __$$YahooImageSearchSuccessImplCopyWithImpl<
          _$YahooImageSearchSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchContext context) initial,
    required TResult Function(SearchContext context) loading,
    required TResult Function(List<ImageResult> results, SearchContext context)
        success,
    required TResult Function(String message, SearchContext context) error,
  }) {
    return success(results, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchContext context)? initial,
    TResult? Function(SearchContext context)? loading,
    TResult? Function(List<ImageResult> results, SearchContext context)?
        success,
    TResult? Function(String message, SearchContext context)? error,
  }) {
    return success?.call(results, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchContext context)? initial,
    TResult Function(SearchContext context)? loading,
    TResult Function(List<ImageResult> results, SearchContext context)? success,
    TResult Function(String message, SearchContext context)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(results, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(YahooImageSearchInitial value) initial,
    required TResult Function(YahooImageSearchLoading value) loading,
    required TResult Function(YahooImageSearchSuccess value) success,
    required TResult Function(YahooImageSearchError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(YahooImageSearchInitial value)? initial,
    TResult? Function(YahooImageSearchLoading value)? loading,
    TResult? Function(YahooImageSearchSuccess value)? success,
    TResult? Function(YahooImageSearchError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(YahooImageSearchInitial value)? initial,
    TResult Function(YahooImageSearchLoading value)? loading,
    TResult Function(YahooImageSearchSuccess value)? success,
    TResult Function(YahooImageSearchError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class YahooImageSearchSuccess implements YahooImageSearchState {
  const factory YahooImageSearchSuccess(
      {required final List<ImageResult> results,
      required final SearchContext context}) = _$YahooImageSearchSuccessImpl;

  List<ImageResult> get results;
  @override
  SearchContext get context;
  @override
  @JsonKey(ignore: true)
  _$$YahooImageSearchSuccessImplCopyWith<_$YahooImageSearchSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$YahooImageSearchErrorImplCopyWith<$Res>
    implements $YahooImageSearchStateCopyWith<$Res> {
  factory _$$YahooImageSearchErrorImplCopyWith(
          _$YahooImageSearchErrorImpl value,
          $Res Function(_$YahooImageSearchErrorImpl) then) =
      __$$YahooImageSearchErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, SearchContext context});

  @override
  $SearchContextCopyWith<$Res> get context;
}

/// @nodoc
class __$$YahooImageSearchErrorImplCopyWithImpl<$Res>
    extends _$YahooImageSearchStateCopyWithImpl<$Res,
        _$YahooImageSearchErrorImpl>
    implements _$$YahooImageSearchErrorImplCopyWith<$Res> {
  __$$YahooImageSearchErrorImplCopyWithImpl(_$YahooImageSearchErrorImpl _value,
      $Res Function(_$YahooImageSearchErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? context = null,
  }) {
    return _then(_$YahooImageSearchErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as SearchContext,
    ));
  }
}

/// @nodoc

class _$YahooImageSearchErrorImpl implements YahooImageSearchError {
  const _$YahooImageSearchErrorImpl(
      {required this.message, required this.context});

  @override
  final String message;
  @override
  final SearchContext context;

  @override
  String toString() {
    return 'YahooImageSearchState.error(message: $message, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$YahooImageSearchErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$YahooImageSearchErrorImplCopyWith<_$YahooImageSearchErrorImpl>
      get copyWith => __$$YahooImageSearchErrorImplCopyWithImpl<
          _$YahooImageSearchErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchContext context) initial,
    required TResult Function(SearchContext context) loading,
    required TResult Function(List<ImageResult> results, SearchContext context)
        success,
    required TResult Function(String message, SearchContext context) error,
  }) {
    return error(message, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchContext context)? initial,
    TResult? Function(SearchContext context)? loading,
    TResult? Function(List<ImageResult> results, SearchContext context)?
        success,
    TResult? Function(String message, SearchContext context)? error,
  }) {
    return error?.call(message, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchContext context)? initial,
    TResult Function(SearchContext context)? loading,
    TResult Function(List<ImageResult> results, SearchContext context)? success,
    TResult Function(String message, SearchContext context)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(YahooImageSearchInitial value) initial,
    required TResult Function(YahooImageSearchLoading value) loading,
    required TResult Function(YahooImageSearchSuccess value) success,
    required TResult Function(YahooImageSearchError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(YahooImageSearchInitial value)? initial,
    TResult? Function(YahooImageSearchLoading value)? loading,
    TResult? Function(YahooImageSearchSuccess value)? success,
    TResult? Function(YahooImageSearchError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(YahooImageSearchInitial value)? initial,
    TResult Function(YahooImageSearchLoading value)? loading,
    TResult Function(YahooImageSearchSuccess value)? success,
    TResult Function(YahooImageSearchError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class YahooImageSearchError implements YahooImageSearchState {
  const factory YahooImageSearchError(
      {required final String message,
      required final SearchContext context}) = _$YahooImageSearchErrorImpl;

  String get message;
  @override
  SearchContext get context;
  @override
  @JsonKey(ignore: true)
  _$$YahooImageSearchErrorImplCopyWith<_$YahooImageSearchErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
