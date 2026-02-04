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
  String get searchWord => throw _privateConstructorUsedError;
  List<ImageResult> get results => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

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
  $Res call(
      {String searchWord,
      List<ImageResult> results,
      bool isLoading,
      String? error});
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
    Object? searchWord = null,
    Object? results = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      searchWord: null == searchWord
          ? _value.searchWord
          : searchWord // ignore: cast_nullable_to_non_nullable
              as String,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ImageResult>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
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
      {String searchWord,
      List<ImageResult> results,
      bool isLoading,
      String? error});
}

/// @nodoc
class __$$YahooImageSearchStateImplCopyWithImpl<$Res>
    extends _$YahooImageSearchStateCopyWithImpl<$Res,
        _$YahooImageSearchStateImpl>
    implements _$$YahooImageSearchStateImplCopyWith<$Res> {
  __$$YahooImageSearchStateImplCopyWithImpl(_$YahooImageSearchStateImpl _value,
      $Res Function(_$YahooImageSearchStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchWord = null,
    Object? results = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_$YahooImageSearchStateImpl(
      searchWord: null == searchWord
          ? _value.searchWord
          : searchWord // ignore: cast_nullable_to_non_nullable
              as String,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ImageResult>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$YahooImageSearchStateImpl extends _YahooImageSearchState {
  const _$YahooImageSearchStateImpl(
      {this.searchWord = '',
      final List<ImageResult> results = const [],
      this.isLoading = false,
      this.error})
      : _results = results,
        super._();

  @override
  @JsonKey()
  final String searchWord;
  final List<ImageResult> _results;
  @override
  @JsonKey()
  List<ImageResult> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;

  @override
  String toString() {
    return 'YahooImageSearchState(searchWord: $searchWord, results: $results, isLoading: $isLoading, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$YahooImageSearchStateImpl &&
            (identical(other.searchWord, searchWord) ||
                other.searchWord == searchWord) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchWord,
      const DeepCollectionEquality().hash(_results), isLoading, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$YahooImageSearchStateImplCopyWith<_$YahooImageSearchStateImpl>
      get copyWith => __$$YahooImageSearchStateImplCopyWithImpl<
          _$YahooImageSearchStateImpl>(this, _$identity);
}

abstract class _YahooImageSearchState extends YahooImageSearchState {
  const factory _YahooImageSearchState(
      {final String searchWord,
      final List<ImageResult> results,
      final bool isLoading,
      final String? error}) = _$YahooImageSearchStateImpl;
  const _YahooImageSearchState._() : super._();

  @override
  String get searchWord;
  @override
  List<ImageResult> get results;
  @override
  bool get isLoading;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$YahooImageSearchStateImplCopyWith<_$YahooImageSearchStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
