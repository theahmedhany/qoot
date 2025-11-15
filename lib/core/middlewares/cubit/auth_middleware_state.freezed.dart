// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_middleware_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthMiddlewareState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthMiddlewareState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthMiddlewareState()';
}


}

/// @nodoc
class $AuthMiddlewareStateCopyWith<$Res>  {
$AuthMiddlewareStateCopyWith(AuthMiddlewareState _, $Res Function(AuthMiddlewareState) __);
}


/// Adds pattern-matching-related methods to [AuthMiddlewareState].
extension AuthMiddlewareStatePatterns on AuthMiddlewareState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _IsLoggedOut value)?  isLoggedOut,TResult Function( _Authenticated value)?  authenticated,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _IsLoggedOut() when isLoggedOut != null:
return isLoggedOut(_that);case _Authenticated() when authenticated != null:
return authenticated(_that);case _Error() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _IsLoggedOut value)  isLoggedOut,required TResult Function( _Authenticated value)  authenticated,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _IsLoggedOut():
return isLoggedOut(_that);case _Authenticated():
return authenticated(_that);case _Error():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _IsLoggedOut value)?  isLoggedOut,TResult? Function( _Authenticated value)?  authenticated,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _IsLoggedOut() when isLoggedOut != null:
return isLoggedOut(_that);case _Authenticated() when authenticated != null:
return authenticated(_that);case _Error() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  isLoggedOut,TResult Function( bool isLoggedIn,  bool isVerified,  bool isVolunteer,  bool isCharity,  bool isRestaurant)?  authenticated,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _IsLoggedOut() when isLoggedOut != null:
return isLoggedOut();case _Authenticated() when authenticated != null:
return authenticated(_that.isLoggedIn,_that.isVerified,_that.isVolunteer,_that.isCharity,_that.isRestaurant);case _Error() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  isLoggedOut,required TResult Function( bool isLoggedIn,  bool isVerified,  bool isVolunteer,  bool isCharity,  bool isRestaurant)  authenticated,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _IsLoggedOut():
return isLoggedOut();case _Authenticated():
return authenticated(_that.isLoggedIn,_that.isVerified,_that.isVolunteer,_that.isCharity,_that.isRestaurant);case _Error():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  isLoggedOut,TResult? Function( bool isLoggedIn,  bool isVerified,  bool isVolunteer,  bool isCharity,  bool isRestaurant)?  authenticated,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _IsLoggedOut() when isLoggedOut != null:
return isLoggedOut();case _Authenticated() when authenticated != null:
return authenticated(_that.isLoggedIn,_that.isVerified,_that.isVolunteer,_that.isCharity,_that.isRestaurant);case _Error() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements AuthMiddlewareState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthMiddlewareState.initial()';
}


}




/// @nodoc


class _IsLoggedOut implements AuthMiddlewareState {
  const _IsLoggedOut();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IsLoggedOut);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthMiddlewareState.isLoggedOut()';
}


}




/// @nodoc


class _Authenticated implements AuthMiddlewareState {
  const _Authenticated({required this.isLoggedIn, required this.isVerified, required this.isVolunteer, required this.isCharity, required this.isRestaurant});
  

 final  bool isLoggedIn;
 final  bool isVerified;
 final  bool isVolunteer;
 final  bool isCharity;
 final  bool isRestaurant;

/// Create a copy of AuthMiddlewareState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthenticatedCopyWith<_Authenticated> get copyWith => __$AuthenticatedCopyWithImpl<_Authenticated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Authenticated&&(identical(other.isLoggedIn, isLoggedIn) || other.isLoggedIn == isLoggedIn)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.isVolunteer, isVolunteer) || other.isVolunteer == isVolunteer)&&(identical(other.isCharity, isCharity) || other.isCharity == isCharity)&&(identical(other.isRestaurant, isRestaurant) || other.isRestaurant == isRestaurant));
}


@override
int get hashCode => Object.hash(runtimeType,isLoggedIn,isVerified,isVolunteer,isCharity,isRestaurant);

@override
String toString() {
  return 'AuthMiddlewareState.authenticated(isLoggedIn: $isLoggedIn, isVerified: $isVerified, isVolunteer: $isVolunteer, isCharity: $isCharity, isRestaurant: $isRestaurant)';
}


}

/// @nodoc
abstract mixin class _$AuthenticatedCopyWith<$Res> implements $AuthMiddlewareStateCopyWith<$Res> {
  factory _$AuthenticatedCopyWith(_Authenticated value, $Res Function(_Authenticated) _then) = __$AuthenticatedCopyWithImpl;
@useResult
$Res call({
 bool isLoggedIn, bool isVerified, bool isVolunteer, bool isCharity, bool isRestaurant
});




}
/// @nodoc
class __$AuthenticatedCopyWithImpl<$Res>
    implements _$AuthenticatedCopyWith<$Res> {
  __$AuthenticatedCopyWithImpl(this._self, this._then);

  final _Authenticated _self;
  final $Res Function(_Authenticated) _then;

/// Create a copy of AuthMiddlewareState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isLoggedIn = null,Object? isVerified = null,Object? isVolunteer = null,Object? isCharity = null,Object? isRestaurant = null,}) {
  return _then(_Authenticated(
isLoggedIn: null == isLoggedIn ? _self.isLoggedIn : isLoggedIn // ignore: cast_nullable_to_non_nullable
as bool,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,isVolunteer: null == isVolunteer ? _self.isVolunteer : isVolunteer // ignore: cast_nullable_to_non_nullable
as bool,isCharity: null == isCharity ? _self.isCharity : isCharity // ignore: cast_nullable_to_non_nullable
as bool,isRestaurant: null == isRestaurant ? _self.isRestaurant : isRestaurant // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _Error implements AuthMiddlewareState {
  const _Error(this.message);
  

 final  String message;

/// Create a copy of AuthMiddlewareState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AuthMiddlewareState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $AuthMiddlewareStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of AuthMiddlewareState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
