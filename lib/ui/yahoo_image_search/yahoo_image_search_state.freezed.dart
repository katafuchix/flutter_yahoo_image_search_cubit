// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'yahoo_image_search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$YahooImageSearchState {

 ScreenState get screen; DialogState get dialog; List<String> get favoriteUrls; int get currentPage;
/// Create a copy of YahooImageSearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$YahooImageSearchStateCopyWith<YahooImageSearchState> get copyWith => _$YahooImageSearchStateCopyWithImpl<YahooImageSearchState>(this as YahooImageSearchState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is YahooImageSearchState&&(identical(other.screen, screen) || other.screen == screen)&&(identical(other.dialog, dialog) || other.dialog == dialog)&&const DeepCollectionEquality().equals(other.favoriteUrls, favoriteUrls)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage));
}


@override
int get hashCode => Object.hash(runtimeType,screen,dialog,const DeepCollectionEquality().hash(favoriteUrls),currentPage);

@override
String toString() {
  return 'YahooImageSearchState(screen: $screen, dialog: $dialog, favoriteUrls: $favoriteUrls, currentPage: $currentPage)';
}


}

/// @nodoc
abstract mixin class $YahooImageSearchStateCopyWith<$Res>  {
  factory $YahooImageSearchStateCopyWith(YahooImageSearchState value, $Res Function(YahooImageSearchState) _then) = _$YahooImageSearchStateCopyWithImpl;
@useResult
$Res call({
 ScreenState screen, DialogState dialog, List<String> favoriteUrls, int currentPage
});


$ScreenStateCopyWith<$Res> get screen;$DialogStateCopyWith<$Res> get dialog;

}
/// @nodoc
class _$YahooImageSearchStateCopyWithImpl<$Res>
    implements $YahooImageSearchStateCopyWith<$Res> {
  _$YahooImageSearchStateCopyWithImpl(this._self, this._then);

  final YahooImageSearchState _self;
  final $Res Function(YahooImageSearchState) _then;

/// Create a copy of YahooImageSearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? screen = null,Object? dialog = null,Object? favoriteUrls = null,Object? currentPage = null,}) {
  return _then(_self.copyWith(
screen: null == screen ? _self.screen : screen // ignore: cast_nullable_to_non_nullable
as ScreenState,dialog: null == dialog ? _self.dialog : dialog // ignore: cast_nullable_to_non_nullable
as DialogState,favoriteUrls: null == favoriteUrls ? _self.favoriteUrls : favoriteUrls // ignore: cast_nullable_to_non_nullable
as List<String>,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of YahooImageSearchState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScreenStateCopyWith<$Res> get screen {
  
  return $ScreenStateCopyWith<$Res>(_self.screen, (value) {
    return _then(_self.copyWith(screen: value));
  });
}/// Create a copy of YahooImageSearchState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DialogStateCopyWith<$Res> get dialog {
  
  return $DialogStateCopyWith<$Res>(_self.dialog, (value) {
    return _then(_self.copyWith(dialog: value));
  });
}
}


/// Adds pattern-matching-related methods to [YahooImageSearchState].
extension YahooImageSearchStatePatterns on YahooImageSearchState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _YahooImageSearchState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _YahooImageSearchState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _YahooImageSearchState value)  $default,){
final _that = this;
switch (_that) {
case _YahooImageSearchState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _YahooImageSearchState value)?  $default,){
final _that = this;
switch (_that) {
case _YahooImageSearchState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ScreenState screen,  DialogState dialog,  List<String> favoriteUrls,  int currentPage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _YahooImageSearchState() when $default != null:
return $default(_that.screen,_that.dialog,_that.favoriteUrls,_that.currentPage);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ScreenState screen,  DialogState dialog,  List<String> favoriteUrls,  int currentPage)  $default,) {final _that = this;
switch (_that) {
case _YahooImageSearchState():
return $default(_that.screen,_that.dialog,_that.favoriteUrls,_that.currentPage);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ScreenState screen,  DialogState dialog,  List<String> favoriteUrls,  int currentPage)?  $default,) {final _that = this;
switch (_that) {
case _YahooImageSearchState() when $default != null:
return $default(_that.screen,_that.dialog,_that.favoriteUrls,_that.currentPage);case _:
  return null;

}
}

}

/// @nodoc


class _YahooImageSearchState implements YahooImageSearchState {
  const _YahooImageSearchState({this.screen = const ScreenState.initial(''), this.dialog = const DialogState.idle(), final  List<String> favoriteUrls = const [], this.currentPage = 1}): _favoriteUrls = favoriteUrls;
  

@override@JsonKey() final  ScreenState screen;
@override@JsonKey() final  DialogState dialog;
 final  List<String> _favoriteUrls;
@override@JsonKey() List<String> get favoriteUrls {
  if (_favoriteUrls is EqualUnmodifiableListView) return _favoriteUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_favoriteUrls);
}

@override@JsonKey() final  int currentPage;

/// Create a copy of YahooImageSearchState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$YahooImageSearchStateCopyWith<_YahooImageSearchState> get copyWith => __$YahooImageSearchStateCopyWithImpl<_YahooImageSearchState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _YahooImageSearchState&&(identical(other.screen, screen) || other.screen == screen)&&(identical(other.dialog, dialog) || other.dialog == dialog)&&const DeepCollectionEquality().equals(other._favoriteUrls, _favoriteUrls)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage));
}


@override
int get hashCode => Object.hash(runtimeType,screen,dialog,const DeepCollectionEquality().hash(_favoriteUrls),currentPage);

@override
String toString() {
  return 'YahooImageSearchState(screen: $screen, dialog: $dialog, favoriteUrls: $favoriteUrls, currentPage: $currentPage)';
}


}

/// @nodoc
abstract mixin class _$YahooImageSearchStateCopyWith<$Res> implements $YahooImageSearchStateCopyWith<$Res> {
  factory _$YahooImageSearchStateCopyWith(_YahooImageSearchState value, $Res Function(_YahooImageSearchState) _then) = __$YahooImageSearchStateCopyWithImpl;
@override @useResult
$Res call({
 ScreenState screen, DialogState dialog, List<String> favoriteUrls, int currentPage
});


@override $ScreenStateCopyWith<$Res> get screen;@override $DialogStateCopyWith<$Res> get dialog;

}
/// @nodoc
class __$YahooImageSearchStateCopyWithImpl<$Res>
    implements _$YahooImageSearchStateCopyWith<$Res> {
  __$YahooImageSearchStateCopyWithImpl(this._self, this._then);

  final _YahooImageSearchState _self;
  final $Res Function(_YahooImageSearchState) _then;

/// Create a copy of YahooImageSearchState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? screen = null,Object? dialog = null,Object? favoriteUrls = null,Object? currentPage = null,}) {
  return _then(_YahooImageSearchState(
screen: null == screen ? _self.screen : screen // ignore: cast_nullable_to_non_nullable
as ScreenState,dialog: null == dialog ? _self.dialog : dialog // ignore: cast_nullable_to_non_nullable
as DialogState,favoriteUrls: null == favoriteUrls ? _self._favoriteUrls : favoriteUrls // ignore: cast_nullable_to_non_nullable
as List<String>,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of YahooImageSearchState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScreenStateCopyWith<$Res> get screen {
  
  return $ScreenStateCopyWith<$Res>(_self.screen, (value) {
    return _then(_self.copyWith(screen: value));
  });
}/// Create a copy of YahooImageSearchState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DialogStateCopyWith<$Res> get dialog {
  
  return $DialogStateCopyWith<$Res>(_self.dialog, (value) {
    return _then(_self.copyWith(dialog: value));
  });
}
}

/// @nodoc
mixin _$ScreenState {

 String get word;
/// Create a copy of ScreenState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScreenStateCopyWith<ScreenState> get copyWith => _$ScreenStateCopyWithImpl<ScreenState>(this as ScreenState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScreenState&&(identical(other.word, word) || other.word == word));
}


@override
int get hashCode => Object.hash(runtimeType,word);

@override
String toString() {
  return 'ScreenState(word: $word)';
}


}

/// @nodoc
abstract mixin class $ScreenStateCopyWith<$Res>  {
  factory $ScreenStateCopyWith(ScreenState value, $Res Function(ScreenState) _then) = _$ScreenStateCopyWithImpl;
@useResult
$Res call({
 String word
});




}
/// @nodoc
class _$ScreenStateCopyWithImpl<$Res>
    implements $ScreenStateCopyWith<$Res> {
  _$ScreenStateCopyWithImpl(this._self, this._then);

  final ScreenState _self;
  final $Res Function(ScreenState) _then;

/// Create a copy of ScreenState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? word = null,}) {
  return _then(_self.copyWith(
word: null == word ? _self.word : word // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ScreenState].
extension ScreenStatePatterns on ScreenState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ScreenInitial value)?  initial,TResult Function( ScreenLoading value)?  loading,TResult Function( ScreenLoadingMore value)?  loadingMore,TResult Function( ScreenSuccess value)?  success,TResult Function( ScreenError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ScreenInitial() when initial != null:
return initial(_that);case ScreenLoading() when loading != null:
return loading(_that);case ScreenLoadingMore() when loadingMore != null:
return loadingMore(_that);case ScreenSuccess() when success != null:
return success(_that);case ScreenError() when error != null:
return error(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ScreenInitial value)  initial,required TResult Function( ScreenLoading value)  loading,required TResult Function( ScreenLoadingMore value)  loadingMore,required TResult Function( ScreenSuccess value)  success,required TResult Function( ScreenError value)  error,}){
final _that = this;
switch (_that) {
case ScreenInitial():
return initial(_that);case ScreenLoading():
return loading(_that);case ScreenLoadingMore():
return loadingMore(_that);case ScreenSuccess():
return success(_that);case ScreenError():
return error(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ScreenInitial value)?  initial,TResult? Function( ScreenLoading value)?  loading,TResult? Function( ScreenLoadingMore value)?  loadingMore,TResult? Function( ScreenSuccess value)?  success,TResult? Function( ScreenError value)?  error,}){
final _that = this;
switch (_that) {
case ScreenInitial() when initial != null:
return initial(_that);case ScreenLoading() when loading != null:
return loading(_that);case ScreenLoadingMore() when loadingMore != null:
return loadingMore(_that);case ScreenSuccess() when success != null:
return success(_that);case ScreenError() when error != null:
return error(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String word)?  initial,TResult Function( String word)?  loading,TResult Function( List<ImageResult> results,  String word)?  loadingMore,TResult Function( List<ImageResult> results,  String word,  bool hasNext)?  success,TResult Function( String message,  String word)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ScreenInitial() when initial != null:
return initial(_that.word);case ScreenLoading() when loading != null:
return loading(_that.word);case ScreenLoadingMore() when loadingMore != null:
return loadingMore(_that.results,_that.word);case ScreenSuccess() when success != null:
return success(_that.results,_that.word,_that.hasNext);case ScreenError() when error != null:
return error(_that.message,_that.word);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String word)  initial,required TResult Function( String word)  loading,required TResult Function( List<ImageResult> results,  String word)  loadingMore,required TResult Function( List<ImageResult> results,  String word,  bool hasNext)  success,required TResult Function( String message,  String word)  error,}) {final _that = this;
switch (_that) {
case ScreenInitial():
return initial(_that.word);case ScreenLoading():
return loading(_that.word);case ScreenLoadingMore():
return loadingMore(_that.results,_that.word);case ScreenSuccess():
return success(_that.results,_that.word,_that.hasNext);case ScreenError():
return error(_that.message,_that.word);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String word)?  initial,TResult? Function( String word)?  loading,TResult? Function( List<ImageResult> results,  String word)?  loadingMore,TResult? Function( List<ImageResult> results,  String word,  bool hasNext)?  success,TResult? Function( String message,  String word)?  error,}) {final _that = this;
switch (_that) {
case ScreenInitial() when initial != null:
return initial(_that.word);case ScreenLoading() when loading != null:
return loading(_that.word);case ScreenLoadingMore() when loadingMore != null:
return loadingMore(_that.results,_that.word);case ScreenSuccess() when success != null:
return success(_that.results,_that.word,_that.hasNext);case ScreenError() when error != null:
return error(_that.message,_that.word);case _:
  return null;

}
}

}

/// @nodoc


class ScreenInitial implements ScreenState {
  const ScreenInitial(this.word);
  

@override final  String word;

/// Create a copy of ScreenState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScreenInitialCopyWith<ScreenInitial> get copyWith => _$ScreenInitialCopyWithImpl<ScreenInitial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScreenInitial&&(identical(other.word, word) || other.word == word));
}


@override
int get hashCode => Object.hash(runtimeType,word);

@override
String toString() {
  return 'ScreenState.initial(word: $word)';
}


}

/// @nodoc
abstract mixin class $ScreenInitialCopyWith<$Res> implements $ScreenStateCopyWith<$Res> {
  factory $ScreenInitialCopyWith(ScreenInitial value, $Res Function(ScreenInitial) _then) = _$ScreenInitialCopyWithImpl;
@override @useResult
$Res call({
 String word
});




}
/// @nodoc
class _$ScreenInitialCopyWithImpl<$Res>
    implements $ScreenInitialCopyWith<$Res> {
  _$ScreenInitialCopyWithImpl(this._self, this._then);

  final ScreenInitial _self;
  final $Res Function(ScreenInitial) _then;

/// Create a copy of ScreenState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? word = null,}) {
  return _then(ScreenInitial(
null == word ? _self.word : word // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ScreenLoading implements ScreenState {
  const ScreenLoading(this.word);
  

@override final  String word;

/// Create a copy of ScreenState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScreenLoadingCopyWith<ScreenLoading> get copyWith => _$ScreenLoadingCopyWithImpl<ScreenLoading>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScreenLoading&&(identical(other.word, word) || other.word == word));
}


@override
int get hashCode => Object.hash(runtimeType,word);

@override
String toString() {
  return 'ScreenState.loading(word: $word)';
}


}

/// @nodoc
abstract mixin class $ScreenLoadingCopyWith<$Res> implements $ScreenStateCopyWith<$Res> {
  factory $ScreenLoadingCopyWith(ScreenLoading value, $Res Function(ScreenLoading) _then) = _$ScreenLoadingCopyWithImpl;
@override @useResult
$Res call({
 String word
});




}
/// @nodoc
class _$ScreenLoadingCopyWithImpl<$Res>
    implements $ScreenLoadingCopyWith<$Res> {
  _$ScreenLoadingCopyWithImpl(this._self, this._then);

  final ScreenLoading _self;
  final $Res Function(ScreenLoading) _then;

/// Create a copy of ScreenState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? word = null,}) {
  return _then(ScreenLoading(
null == word ? _self.word : word // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ScreenLoadingMore implements ScreenState {
  const ScreenLoadingMore({required final  List<ImageResult> results, required this.word}): _results = results;
  

 final  List<ImageResult> _results;
 List<ImageResult> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}

@override final  String word;

/// Create a copy of ScreenState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScreenLoadingMoreCopyWith<ScreenLoadingMore> get copyWith => _$ScreenLoadingMoreCopyWithImpl<ScreenLoadingMore>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScreenLoadingMore&&const DeepCollectionEquality().equals(other._results, _results)&&(identical(other.word, word) || other.word == word));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_results),word);

@override
String toString() {
  return 'ScreenState.loadingMore(results: $results, word: $word)';
}


}

/// @nodoc
abstract mixin class $ScreenLoadingMoreCopyWith<$Res> implements $ScreenStateCopyWith<$Res> {
  factory $ScreenLoadingMoreCopyWith(ScreenLoadingMore value, $Res Function(ScreenLoadingMore) _then) = _$ScreenLoadingMoreCopyWithImpl;
@override @useResult
$Res call({
 List<ImageResult> results, String word
});




}
/// @nodoc
class _$ScreenLoadingMoreCopyWithImpl<$Res>
    implements $ScreenLoadingMoreCopyWith<$Res> {
  _$ScreenLoadingMoreCopyWithImpl(this._self, this._then);

  final ScreenLoadingMore _self;
  final $Res Function(ScreenLoadingMore) _then;

/// Create a copy of ScreenState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? results = null,Object? word = null,}) {
  return _then(ScreenLoadingMore(
results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<ImageResult>,word: null == word ? _self.word : word // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ScreenSuccess implements ScreenState {
  const ScreenSuccess({required final  List<ImageResult> results, required this.word, this.hasNext = true}): _results = results;
  

 final  List<ImageResult> _results;
 List<ImageResult> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}

@override final  String word;
@JsonKey() final  bool hasNext;

/// Create a copy of ScreenState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScreenSuccessCopyWith<ScreenSuccess> get copyWith => _$ScreenSuccessCopyWithImpl<ScreenSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScreenSuccess&&const DeepCollectionEquality().equals(other._results, _results)&&(identical(other.word, word) || other.word == word)&&(identical(other.hasNext, hasNext) || other.hasNext == hasNext));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_results),word,hasNext);

@override
String toString() {
  return 'ScreenState.success(results: $results, word: $word, hasNext: $hasNext)';
}


}

/// @nodoc
abstract mixin class $ScreenSuccessCopyWith<$Res> implements $ScreenStateCopyWith<$Res> {
  factory $ScreenSuccessCopyWith(ScreenSuccess value, $Res Function(ScreenSuccess) _then) = _$ScreenSuccessCopyWithImpl;
@override @useResult
$Res call({
 List<ImageResult> results, String word, bool hasNext
});




}
/// @nodoc
class _$ScreenSuccessCopyWithImpl<$Res>
    implements $ScreenSuccessCopyWith<$Res> {
  _$ScreenSuccessCopyWithImpl(this._self, this._then);

  final ScreenSuccess _self;
  final $Res Function(ScreenSuccess) _then;

/// Create a copy of ScreenState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? results = null,Object? word = null,Object? hasNext = null,}) {
  return _then(ScreenSuccess(
results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<ImageResult>,word: null == word ? _self.word : word // ignore: cast_nullable_to_non_nullable
as String,hasNext: null == hasNext ? _self.hasNext : hasNext // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class ScreenError implements ScreenState {
  const ScreenError({required this.message, required this.word});
  

 final  String message;
@override final  String word;

/// Create a copy of ScreenState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScreenErrorCopyWith<ScreenError> get copyWith => _$ScreenErrorCopyWithImpl<ScreenError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScreenError&&(identical(other.message, message) || other.message == message)&&(identical(other.word, word) || other.word == word));
}


@override
int get hashCode => Object.hash(runtimeType,message,word);

@override
String toString() {
  return 'ScreenState.error(message: $message, word: $word)';
}


}

/// @nodoc
abstract mixin class $ScreenErrorCopyWith<$Res> implements $ScreenStateCopyWith<$Res> {
  factory $ScreenErrorCopyWith(ScreenError value, $Res Function(ScreenError) _then) = _$ScreenErrorCopyWithImpl;
@override @useResult
$Res call({
 String message, String word
});




}
/// @nodoc
class _$ScreenErrorCopyWithImpl<$Res>
    implements $ScreenErrorCopyWith<$Res> {
  _$ScreenErrorCopyWithImpl(this._self, this._then);

  final ScreenError _self;
  final $Res Function(ScreenError) _then;

/// Create a copy of ScreenState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? word = null,}) {
  return _then(ScreenError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,word: null == word ? _self.word : word // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$DialogState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DialogState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DialogState()';
}


}

/// @nodoc
class $DialogStateCopyWith<$Res>  {
$DialogStateCopyWith(DialogState _, $Res Function(DialogState) __);
}


/// Adds pattern-matching-related methods to [DialogState].
extension DialogStatePatterns on DialogState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( DialogIdle value)?  idle,TResult Function( DialogLoading value)?  loading,TResult Function( DialogSuccess value)?  success,TResult Function( DialogError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case DialogIdle() when idle != null:
return idle(_that);case DialogLoading() when loading != null:
return loading(_that);case DialogSuccess() when success != null:
return success(_that);case DialogError() when error != null:
return error(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( DialogIdle value)  idle,required TResult Function( DialogLoading value)  loading,required TResult Function( DialogSuccess value)  success,required TResult Function( DialogError value)  error,}){
final _that = this;
switch (_that) {
case DialogIdle():
return idle(_that);case DialogLoading():
return loading(_that);case DialogSuccess():
return success(_that);case DialogError():
return error(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( DialogIdle value)?  idle,TResult? Function( DialogLoading value)?  loading,TResult? Function( DialogSuccess value)?  success,TResult? Function( DialogError value)?  error,}){
final _that = this;
switch (_that) {
case DialogIdle() when idle != null:
return idle(_that);case DialogLoading() when loading != null:
return loading(_that);case DialogSuccess() when success != null:
return success(_that);case DialogError() when error != null:
return error(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  idle,TResult Function()?  loading,TResult Function( String message)?  success,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case DialogIdle() when idle != null:
return idle();case DialogLoading() when loading != null:
return loading();case DialogSuccess() when success != null:
return success(_that.message);case DialogError() when error != null:
return error(_that.message);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  idle,required TResult Function()  loading,required TResult Function( String message)  success,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case DialogIdle():
return idle();case DialogLoading():
return loading();case DialogSuccess():
return success(_that.message);case DialogError():
return error(_that.message);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  idle,TResult? Function()?  loading,TResult? Function( String message)?  success,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case DialogIdle() when idle != null:
return idle();case DialogLoading() when loading != null:
return loading();case DialogSuccess() when success != null:
return success(_that.message);case DialogError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class DialogIdle implements DialogState {
  const DialogIdle();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DialogIdle);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DialogState.idle()';
}


}




/// @nodoc


class DialogLoading implements DialogState {
  const DialogLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DialogLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DialogState.loading()';
}


}




/// @nodoc


class DialogSuccess implements DialogState {
  const DialogSuccess(this.message);
  

 final  String message;

/// Create a copy of DialogState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DialogSuccessCopyWith<DialogSuccess> get copyWith => _$DialogSuccessCopyWithImpl<DialogSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DialogSuccess&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'DialogState.success(message: $message)';
}


}

/// @nodoc
abstract mixin class $DialogSuccessCopyWith<$Res> implements $DialogStateCopyWith<$Res> {
  factory $DialogSuccessCopyWith(DialogSuccess value, $Res Function(DialogSuccess) _then) = _$DialogSuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$DialogSuccessCopyWithImpl<$Res>
    implements $DialogSuccessCopyWith<$Res> {
  _$DialogSuccessCopyWithImpl(this._self, this._then);

  final DialogSuccess _self;
  final $Res Function(DialogSuccess) _then;

/// Create a copy of DialogState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(DialogSuccess(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class DialogError implements DialogState {
  const DialogError(this.message);
  

 final  String message;

/// Create a copy of DialogState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DialogErrorCopyWith<DialogError> get copyWith => _$DialogErrorCopyWithImpl<DialogError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DialogError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'DialogState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $DialogErrorCopyWith<$Res> implements $DialogStateCopyWith<$Res> {
  factory $DialogErrorCopyWith(DialogError value, $Res Function(DialogError) _then) = _$DialogErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$DialogErrorCopyWithImpl<$Res>
    implements $DialogErrorCopyWith<$Res> {
  _$DialogErrorCopyWithImpl(this._self, this._then);

  final DialogError _self;
  final $Res Function(DialogError) _then;

/// Create a copy of DialogState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(DialogError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
