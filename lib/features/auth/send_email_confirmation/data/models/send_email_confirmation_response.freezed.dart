// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_email_confirmation_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SendEmailConfirmationResponse {

 bool get isSuccess; String get message; String get data; List<dynamic> get errors;
/// Create a copy of SendEmailConfirmationResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SendEmailConfirmationResponseCopyWith<SendEmailConfirmationResponse> get copyWith => _$SendEmailConfirmationResponseCopyWithImpl<SendEmailConfirmationResponse>(this as SendEmailConfirmationResponse, _$identity);

  /// Serializes this SendEmailConfirmationResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendEmailConfirmationResponse&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isSuccess,message,data,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'SendEmailConfirmationResponse(isSuccess: $isSuccess, message: $message, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $SendEmailConfirmationResponseCopyWith<$Res>  {
  factory $SendEmailConfirmationResponseCopyWith(SendEmailConfirmationResponse value, $Res Function(SendEmailConfirmationResponse) _then) = _$SendEmailConfirmationResponseCopyWithImpl;
@useResult
$Res call({
 bool isSuccess, String message, String data, List<dynamic> errors
});




}
/// @nodoc
class _$SendEmailConfirmationResponseCopyWithImpl<$Res>
    implements $SendEmailConfirmationResponseCopyWith<$Res> {
  _$SendEmailConfirmationResponseCopyWithImpl(this._self, this._then);

  final SendEmailConfirmationResponse _self;
  final $Res Function(SendEmailConfirmationResponse) _then;

/// Create a copy of SendEmailConfirmationResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isSuccess = null,Object? message = null,Object? data = null,Object? errors = null,}) {
  return _then(_self.copyWith(
isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as String,errors: null == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as List<dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [SendEmailConfirmationResponse].
extension SendEmailConfirmationResponsePatterns on SendEmailConfirmationResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SendEmailConfirmationResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SendEmailConfirmationResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SendEmailConfirmationResponse value)  $default,){
final _that = this;
switch (_that) {
case _SendEmailConfirmationResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SendEmailConfirmationResponse value)?  $default,){
final _that = this;
switch (_that) {
case _SendEmailConfirmationResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isSuccess,  String message,  String data,  List<dynamic> errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SendEmailConfirmationResponse() when $default != null:
return $default(_that.isSuccess,_that.message,_that.data,_that.errors);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isSuccess,  String message,  String data,  List<dynamic> errors)  $default,) {final _that = this;
switch (_that) {
case _SendEmailConfirmationResponse():
return $default(_that.isSuccess,_that.message,_that.data,_that.errors);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isSuccess,  String message,  String data,  List<dynamic> errors)?  $default,) {final _that = this;
switch (_that) {
case _SendEmailConfirmationResponse() when $default != null:
return $default(_that.isSuccess,_that.message,_that.data,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SendEmailConfirmationResponse implements SendEmailConfirmationResponse {
  const _SendEmailConfirmationResponse({required this.isSuccess, required this.message, required this.data, required final  List<dynamic> errors}): _errors = errors;
  factory _SendEmailConfirmationResponse.fromJson(Map<String, dynamic> json) => _$SendEmailConfirmationResponseFromJson(json);

@override final  bool isSuccess;
@override final  String message;
@override final  String data;
 final  List<dynamic> _errors;
@override List<dynamic> get errors {
  if (_errors is EqualUnmodifiableListView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_errors);
}


/// Create a copy of SendEmailConfirmationResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SendEmailConfirmationResponseCopyWith<_SendEmailConfirmationResponse> get copyWith => __$SendEmailConfirmationResponseCopyWithImpl<_SendEmailConfirmationResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SendEmailConfirmationResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SendEmailConfirmationResponse&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data)&&const DeepCollectionEquality().equals(other._errors, _errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isSuccess,message,data,const DeepCollectionEquality().hash(_errors));

@override
String toString() {
  return 'SendEmailConfirmationResponse(isSuccess: $isSuccess, message: $message, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$SendEmailConfirmationResponseCopyWith<$Res> implements $SendEmailConfirmationResponseCopyWith<$Res> {
  factory _$SendEmailConfirmationResponseCopyWith(_SendEmailConfirmationResponse value, $Res Function(_SendEmailConfirmationResponse) _then) = __$SendEmailConfirmationResponseCopyWithImpl;
@override @useResult
$Res call({
 bool isSuccess, String message, String data, List<dynamic> errors
});




}
/// @nodoc
class __$SendEmailConfirmationResponseCopyWithImpl<$Res>
    implements _$SendEmailConfirmationResponseCopyWith<$Res> {
  __$SendEmailConfirmationResponseCopyWithImpl(this._self, this._then);

  final _SendEmailConfirmationResponse _self;
  final $Res Function(_SendEmailConfirmationResponse) _then;

/// Create a copy of SendEmailConfirmationResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isSuccess = null,Object? message = null,Object? data = null,Object? errors = null,}) {
  return _then(_SendEmailConfirmationResponse(
isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as String,errors: null == errors ? _self._errors : errors // ignore: cast_nullable_to_non_nullable
as List<dynamic>,
  ));
}


}

// dart format on
