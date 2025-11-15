// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'confirm_email_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ConfirmEmailResponse {

 bool get isSuccess; String get message; dynamic get data; List<dynamic> get errors;
/// Create a copy of ConfirmEmailResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConfirmEmailResponseCopyWith<ConfirmEmailResponse> get copyWith => _$ConfirmEmailResponseCopyWithImpl<ConfirmEmailResponse>(this as ConfirmEmailResponse, _$identity);

  /// Serializes this ConfirmEmailResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConfirmEmailResponse&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isSuccess,message,const DeepCollectionEquality().hash(data),const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'ConfirmEmailResponse(isSuccess: $isSuccess, message: $message, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $ConfirmEmailResponseCopyWith<$Res>  {
  factory $ConfirmEmailResponseCopyWith(ConfirmEmailResponse value, $Res Function(ConfirmEmailResponse) _then) = _$ConfirmEmailResponseCopyWithImpl;
@useResult
$Res call({
 bool isSuccess, String message, dynamic data, List<dynamic> errors
});




}
/// @nodoc
class _$ConfirmEmailResponseCopyWithImpl<$Res>
    implements $ConfirmEmailResponseCopyWith<$Res> {
  _$ConfirmEmailResponseCopyWithImpl(this._self, this._then);

  final ConfirmEmailResponse _self;
  final $Res Function(ConfirmEmailResponse) _then;

/// Create a copy of ConfirmEmailResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isSuccess = null,Object? message = null,Object? data = freezed,Object? errors = null,}) {
  return _then(_self.copyWith(
isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as dynamic,errors: null == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as List<dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [ConfirmEmailResponse].
extension ConfirmEmailResponsePatterns on ConfirmEmailResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConfirmEmailResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConfirmEmailResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConfirmEmailResponse value)  $default,){
final _that = this;
switch (_that) {
case _ConfirmEmailResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConfirmEmailResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ConfirmEmailResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isSuccess,  String message,  dynamic data,  List<dynamic> errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConfirmEmailResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isSuccess,  String message,  dynamic data,  List<dynamic> errors)  $default,) {final _that = this;
switch (_that) {
case _ConfirmEmailResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isSuccess,  String message,  dynamic data,  List<dynamic> errors)?  $default,) {final _that = this;
switch (_that) {
case _ConfirmEmailResponse() when $default != null:
return $default(_that.isSuccess,_that.message,_that.data,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ConfirmEmailResponse implements ConfirmEmailResponse {
  const _ConfirmEmailResponse({required this.isSuccess, required this.message, this.data, required final  List<dynamic> errors}): _errors = errors;
  factory _ConfirmEmailResponse.fromJson(Map<String, dynamic> json) => _$ConfirmEmailResponseFromJson(json);

@override final  bool isSuccess;
@override final  String message;
@override final  dynamic data;
 final  List<dynamic> _errors;
@override List<dynamic> get errors {
  if (_errors is EqualUnmodifiableListView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_errors);
}


/// Create a copy of ConfirmEmailResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConfirmEmailResponseCopyWith<_ConfirmEmailResponse> get copyWith => __$ConfirmEmailResponseCopyWithImpl<_ConfirmEmailResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConfirmEmailResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConfirmEmailResponse&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data)&&const DeepCollectionEquality().equals(other._errors, _errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isSuccess,message,const DeepCollectionEquality().hash(data),const DeepCollectionEquality().hash(_errors));

@override
String toString() {
  return 'ConfirmEmailResponse(isSuccess: $isSuccess, message: $message, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$ConfirmEmailResponseCopyWith<$Res> implements $ConfirmEmailResponseCopyWith<$Res> {
  factory _$ConfirmEmailResponseCopyWith(_ConfirmEmailResponse value, $Res Function(_ConfirmEmailResponse) _then) = __$ConfirmEmailResponseCopyWithImpl;
@override @useResult
$Res call({
 bool isSuccess, String message, dynamic data, List<dynamic> errors
});




}
/// @nodoc
class __$ConfirmEmailResponseCopyWithImpl<$Res>
    implements _$ConfirmEmailResponseCopyWith<$Res> {
  __$ConfirmEmailResponseCopyWithImpl(this._self, this._then);

  final _ConfirmEmailResponse _self;
  final $Res Function(_ConfirmEmailResponse) _then;

/// Create a copy of ConfirmEmailResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isSuccess = null,Object? message = null,Object? data = freezed,Object? errors = null,}) {
  return _then(_ConfirmEmailResponse(
isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as dynamic,errors: null == errors ? _self._errors : errors // ignore: cast_nullable_to_non_nullable
as List<dynamic>,
  ));
}


}

// dart format on
