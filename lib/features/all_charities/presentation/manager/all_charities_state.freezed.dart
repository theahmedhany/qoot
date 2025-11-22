// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_charities_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AllCharitiesState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AllCharitiesState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AllCharitiesState()';
}


}

/// @nodoc
class $AllCharitiesStateCopyWith<$Res>  {
$AllCharitiesStateCopyWith(AllCharitiesState _, $Res Function(AllCharitiesState) __);
}


/// Adds pattern-matching-related methods to [AllCharitiesState].
extension AllCharitiesStatePatterns on AllCharitiesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( Loading value)?  loading,TResult Function( Success value)?  success,TResult Function( LoadingMore value)?  loadingMore,TResult Function( Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case Loading() when loading != null:
return loading(_that);case Success() when success != null:
return success(_that);case LoadingMore() when loadingMore != null:
return loadingMore(_that);case Error() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( Loading value)  loading,required TResult Function( Success value)  success,required TResult Function( LoadingMore value)  loadingMore,required TResult Function( Error value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case Loading():
return loading(_that);case Success():
return success(_that);case LoadingMore():
return loadingMore(_that);case Error():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( Loading value)?  loading,TResult? Function( Success value)?  success,TResult? Function( LoadingMore value)?  loadingMore,TResult? Function( Error value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case Loading() when loading != null:
return loading(_that);case Success() when success != null:
return success(_that);case LoadingMore() when loadingMore != null:
return loadingMore(_that);case Error() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<CharityItem> charities,  bool hasMore,  int currentPage)?  success,TResult Function( List<CharityItem> charities)?  loadingMore,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case Loading() when loading != null:
return loading();case Success() when success != null:
return success(_that.charities,_that.hasMore,_that.currentPage);case LoadingMore() when loadingMore != null:
return loadingMore(_that.charities);case Error() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<CharityItem> charities,  bool hasMore,  int currentPage)  success,required TResult Function( List<CharityItem> charities)  loadingMore,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case Loading():
return loading();case Success():
return success(_that.charities,_that.hasMore,_that.currentPage);case LoadingMore():
return loadingMore(_that.charities);case Error():
return error(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<CharityItem> charities,  bool hasMore,  int currentPage)?  success,TResult? Function( List<CharityItem> charities)?  loadingMore,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case Loading() when loading != null:
return loading();case Success() when success != null:
return success(_that.charities,_that.hasMore,_that.currentPage);case LoadingMore() when loadingMore != null:
return loadingMore(_that.charities);case Error() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements AllCharitiesState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AllCharitiesState.initial()';
}


}




/// @nodoc


class Loading implements AllCharitiesState {
  const Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AllCharitiesState.loading()';
}


}




/// @nodoc


class Success implements AllCharitiesState {
  const Success({required final  List<CharityItem> charities, required this.hasMore, required this.currentPage}): _charities = charities;
  

 final  List<CharityItem> _charities;
 List<CharityItem> get charities {
  if (_charities is EqualUnmodifiableListView) return _charities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_charities);
}

 final  bool hasMore;
 final  int currentPage;

/// Create a copy of AllCharitiesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuccessCopyWith<Success> get copyWith => _$SuccessCopyWithImpl<Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Success&&const DeepCollectionEquality().equals(other._charities, _charities)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_charities),hasMore,currentPage);

@override
String toString() {
  return 'AllCharitiesState.success(charities: $charities, hasMore: $hasMore, currentPage: $currentPage)';
}


}

/// @nodoc
abstract mixin class $SuccessCopyWith<$Res> implements $AllCharitiesStateCopyWith<$Res> {
  factory $SuccessCopyWith(Success value, $Res Function(Success) _then) = _$SuccessCopyWithImpl;
@useResult
$Res call({
 List<CharityItem> charities, bool hasMore, int currentPage
});




}
/// @nodoc
class _$SuccessCopyWithImpl<$Res>
    implements $SuccessCopyWith<$Res> {
  _$SuccessCopyWithImpl(this._self, this._then);

  final Success _self;
  final $Res Function(Success) _then;

/// Create a copy of AllCharitiesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? charities = null,Object? hasMore = null,Object? currentPage = null,}) {
  return _then(Success(
charities: null == charities ? _self._charities : charities // ignore: cast_nullable_to_non_nullable
as List<CharityItem>,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class LoadingMore implements AllCharitiesState {
  const LoadingMore({required final  List<CharityItem> charities}): _charities = charities;
  

 final  List<CharityItem> _charities;
 List<CharityItem> get charities {
  if (_charities is EqualUnmodifiableListView) return _charities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_charities);
}


/// Create a copy of AllCharitiesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadingMoreCopyWith<LoadingMore> get copyWith => _$LoadingMoreCopyWithImpl<LoadingMore>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingMore&&const DeepCollectionEquality().equals(other._charities, _charities));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_charities));

@override
String toString() {
  return 'AllCharitiesState.loadingMore(charities: $charities)';
}


}

/// @nodoc
abstract mixin class $LoadingMoreCopyWith<$Res> implements $AllCharitiesStateCopyWith<$Res> {
  factory $LoadingMoreCopyWith(LoadingMore value, $Res Function(LoadingMore) _then) = _$LoadingMoreCopyWithImpl;
@useResult
$Res call({
 List<CharityItem> charities
});




}
/// @nodoc
class _$LoadingMoreCopyWithImpl<$Res>
    implements $LoadingMoreCopyWith<$Res> {
  _$LoadingMoreCopyWithImpl(this._self, this._then);

  final LoadingMore _self;
  final $Res Function(LoadingMore) _then;

/// Create a copy of AllCharitiesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? charities = null,}) {
  return _then(LoadingMore(
charities: null == charities ? _self._charities : charities // ignore: cast_nullable_to_non_nullable
as List<CharityItem>,
  ));
}


}

/// @nodoc


class Error implements AllCharitiesState {
  const Error({required this.message});
  

 final  String message;

/// Create a copy of AllCharitiesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorCopyWith<Error> get copyWith => _$ErrorCopyWithImpl<Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AllCharitiesState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $ErrorCopyWith<$Res> implements $AllCharitiesStateCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) _then) = _$ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ErrorCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(this._self, this._then);

  final Error _self;
  final $Res Function(Error) _then;

/// Create a copy of AllCharitiesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Error(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
