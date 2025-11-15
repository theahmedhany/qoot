// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forget_password_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ForgetPasswordResponse {

@JsonKey(name: 'isSuccess') bool? get isSuccessLower;@JsonKey(name: 'IsSuccess') bool? get isSuccessUpper;@JsonKey(name: 'message') String? get messageLower;@JsonKey(name: 'Message') String? get messageUpper; dynamic get data;@JsonKey(name: 'Data') dynamic get dataUpper; List<dynamic>? get errors;@JsonKey(name: 'Errors') List<dynamic>? get errorsUpper;
/// Create a copy of ForgetPasswordResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForgetPasswordResponseCopyWith<ForgetPasswordResponse> get copyWith => _$ForgetPasswordResponseCopyWithImpl<ForgetPasswordResponse>(this as ForgetPasswordResponse, _$identity);

  /// Serializes this ForgetPasswordResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgetPasswordResponse&&(identical(other.isSuccessLower, isSuccessLower) || other.isSuccessLower == isSuccessLower)&&(identical(other.isSuccessUpper, isSuccessUpper) || other.isSuccessUpper == isSuccessUpper)&&(identical(other.messageLower, messageLower) || other.messageLower == messageLower)&&(identical(other.messageUpper, messageUpper) || other.messageUpper == messageUpper)&&const DeepCollectionEquality().equals(other.data, data)&&const DeepCollectionEquality().equals(other.dataUpper, dataUpper)&&const DeepCollectionEquality().equals(other.errors, errors)&&const DeepCollectionEquality().equals(other.errorsUpper, errorsUpper));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isSuccessLower,isSuccessUpper,messageLower,messageUpper,const DeepCollectionEquality().hash(data),const DeepCollectionEquality().hash(dataUpper),const DeepCollectionEquality().hash(errors),const DeepCollectionEquality().hash(errorsUpper));

@override
String toString() {
  return 'ForgetPasswordResponse(isSuccessLower: $isSuccessLower, isSuccessUpper: $isSuccessUpper, messageLower: $messageLower, messageUpper: $messageUpper, data: $data, dataUpper: $dataUpper, errors: $errors, errorsUpper: $errorsUpper)';
}


}

/// @nodoc
abstract mixin class $ForgetPasswordResponseCopyWith<$Res>  {
  factory $ForgetPasswordResponseCopyWith(ForgetPasswordResponse value, $Res Function(ForgetPasswordResponse) _then) = _$ForgetPasswordResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'isSuccess') bool? isSuccessLower,@JsonKey(name: 'IsSuccess') bool? isSuccessUpper,@JsonKey(name: 'message') String? messageLower,@JsonKey(name: 'Message') String? messageUpper, dynamic data,@JsonKey(name: 'Data') dynamic dataUpper, List<dynamic>? errors,@JsonKey(name: 'Errors') List<dynamic>? errorsUpper
});




}
/// @nodoc
class _$ForgetPasswordResponseCopyWithImpl<$Res>
    implements $ForgetPasswordResponseCopyWith<$Res> {
  _$ForgetPasswordResponseCopyWithImpl(this._self, this._then);

  final ForgetPasswordResponse _self;
  final $Res Function(ForgetPasswordResponse) _then;

/// Create a copy of ForgetPasswordResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isSuccessLower = freezed,Object? isSuccessUpper = freezed,Object? messageLower = freezed,Object? messageUpper = freezed,Object? data = freezed,Object? dataUpper = freezed,Object? errors = freezed,Object? errorsUpper = freezed,}) {
  return _then(_self.copyWith(
isSuccessLower: freezed == isSuccessLower ? _self.isSuccessLower : isSuccessLower // ignore: cast_nullable_to_non_nullable
as bool?,isSuccessUpper: freezed == isSuccessUpper ? _self.isSuccessUpper : isSuccessUpper // ignore: cast_nullable_to_non_nullable
as bool?,messageLower: freezed == messageLower ? _self.messageLower : messageLower // ignore: cast_nullable_to_non_nullable
as String?,messageUpper: freezed == messageUpper ? _self.messageUpper : messageUpper // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as dynamic,dataUpper: freezed == dataUpper ? _self.dataUpper : dataUpper // ignore: cast_nullable_to_non_nullable
as dynamic,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,errorsUpper: freezed == errorsUpper ? _self.errorsUpper : errorsUpper // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ForgetPasswordResponse].
extension ForgetPasswordResponsePatterns on ForgetPasswordResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ForgetPasswordResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ForgetPasswordResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ForgetPasswordResponse value)  $default,){
final _that = this;
switch (_that) {
case _ForgetPasswordResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ForgetPasswordResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ForgetPasswordResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'isSuccess')  bool? isSuccessLower, @JsonKey(name: 'IsSuccess')  bool? isSuccessUpper, @JsonKey(name: 'message')  String? messageLower, @JsonKey(name: 'Message')  String? messageUpper,  dynamic data, @JsonKey(name: 'Data')  dynamic dataUpper,  List<dynamic>? errors, @JsonKey(name: 'Errors')  List<dynamic>? errorsUpper)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ForgetPasswordResponse() when $default != null:
return $default(_that.isSuccessLower,_that.isSuccessUpper,_that.messageLower,_that.messageUpper,_that.data,_that.dataUpper,_that.errors,_that.errorsUpper);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'isSuccess')  bool? isSuccessLower, @JsonKey(name: 'IsSuccess')  bool? isSuccessUpper, @JsonKey(name: 'message')  String? messageLower, @JsonKey(name: 'Message')  String? messageUpper,  dynamic data, @JsonKey(name: 'Data')  dynamic dataUpper,  List<dynamic>? errors, @JsonKey(name: 'Errors')  List<dynamic>? errorsUpper)  $default,) {final _that = this;
switch (_that) {
case _ForgetPasswordResponse():
return $default(_that.isSuccessLower,_that.isSuccessUpper,_that.messageLower,_that.messageUpper,_that.data,_that.dataUpper,_that.errors,_that.errorsUpper);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'isSuccess')  bool? isSuccessLower, @JsonKey(name: 'IsSuccess')  bool? isSuccessUpper, @JsonKey(name: 'message')  String? messageLower, @JsonKey(name: 'Message')  String? messageUpper,  dynamic data, @JsonKey(name: 'Data')  dynamic dataUpper,  List<dynamic>? errors, @JsonKey(name: 'Errors')  List<dynamic>? errorsUpper)?  $default,) {final _that = this;
switch (_that) {
case _ForgetPasswordResponse() when $default != null:
return $default(_that.isSuccessLower,_that.isSuccessUpper,_that.messageLower,_that.messageUpper,_that.data,_that.dataUpper,_that.errors,_that.errorsUpper);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ForgetPasswordResponse extends ForgetPasswordResponse {
  const _ForgetPasswordResponse({@JsonKey(name: 'isSuccess') this.isSuccessLower, @JsonKey(name: 'IsSuccess') this.isSuccessUpper, @JsonKey(name: 'message') this.messageLower, @JsonKey(name: 'Message') this.messageUpper, this.data, @JsonKey(name: 'Data') this.dataUpper, final  List<dynamic>? errors, @JsonKey(name: 'Errors') final  List<dynamic>? errorsUpper}): _errors = errors,_errorsUpper = errorsUpper,super._();
  factory _ForgetPasswordResponse.fromJson(Map<String, dynamic> json) => _$ForgetPasswordResponseFromJson(json);

@override@JsonKey(name: 'isSuccess') final  bool? isSuccessLower;
@override@JsonKey(name: 'IsSuccess') final  bool? isSuccessUpper;
@override@JsonKey(name: 'message') final  String? messageLower;
@override@JsonKey(name: 'Message') final  String? messageUpper;
@override final  dynamic data;
@override@JsonKey(name: 'Data') final  dynamic dataUpper;
 final  List<dynamic>? _errors;
@override List<dynamic>? get errors {
  final value = _errors;
  if (value == null) return null;
  if (_errors is EqualUnmodifiableListView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _errorsUpper;
@override@JsonKey(name: 'Errors') List<dynamic>? get errorsUpper {
  final value = _errorsUpper;
  if (value == null) return null;
  if (_errorsUpper is EqualUnmodifiableListView) return _errorsUpper;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of ForgetPasswordResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ForgetPasswordResponseCopyWith<_ForgetPasswordResponse> get copyWith => __$ForgetPasswordResponseCopyWithImpl<_ForgetPasswordResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ForgetPasswordResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ForgetPasswordResponse&&(identical(other.isSuccessLower, isSuccessLower) || other.isSuccessLower == isSuccessLower)&&(identical(other.isSuccessUpper, isSuccessUpper) || other.isSuccessUpper == isSuccessUpper)&&(identical(other.messageLower, messageLower) || other.messageLower == messageLower)&&(identical(other.messageUpper, messageUpper) || other.messageUpper == messageUpper)&&const DeepCollectionEquality().equals(other.data, data)&&const DeepCollectionEquality().equals(other.dataUpper, dataUpper)&&const DeepCollectionEquality().equals(other._errors, _errors)&&const DeepCollectionEquality().equals(other._errorsUpper, _errorsUpper));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isSuccessLower,isSuccessUpper,messageLower,messageUpper,const DeepCollectionEquality().hash(data),const DeepCollectionEquality().hash(dataUpper),const DeepCollectionEquality().hash(_errors),const DeepCollectionEquality().hash(_errorsUpper));

@override
String toString() {
  return 'ForgetPasswordResponse(isSuccessLower: $isSuccessLower, isSuccessUpper: $isSuccessUpper, messageLower: $messageLower, messageUpper: $messageUpper, data: $data, dataUpper: $dataUpper, errors: $errors, errorsUpper: $errorsUpper)';
}


}

/// @nodoc
abstract mixin class _$ForgetPasswordResponseCopyWith<$Res> implements $ForgetPasswordResponseCopyWith<$Res> {
  factory _$ForgetPasswordResponseCopyWith(_ForgetPasswordResponse value, $Res Function(_ForgetPasswordResponse) _then) = __$ForgetPasswordResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'isSuccess') bool? isSuccessLower,@JsonKey(name: 'IsSuccess') bool? isSuccessUpper,@JsonKey(name: 'message') String? messageLower,@JsonKey(name: 'Message') String? messageUpper, dynamic data,@JsonKey(name: 'Data') dynamic dataUpper, List<dynamic>? errors,@JsonKey(name: 'Errors') List<dynamic>? errorsUpper
});




}
/// @nodoc
class __$ForgetPasswordResponseCopyWithImpl<$Res>
    implements _$ForgetPasswordResponseCopyWith<$Res> {
  __$ForgetPasswordResponseCopyWithImpl(this._self, this._then);

  final _ForgetPasswordResponse _self;
  final $Res Function(_ForgetPasswordResponse) _then;

/// Create a copy of ForgetPasswordResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isSuccessLower = freezed,Object? isSuccessUpper = freezed,Object? messageLower = freezed,Object? messageUpper = freezed,Object? data = freezed,Object? dataUpper = freezed,Object? errors = freezed,Object? errorsUpper = freezed,}) {
  return _then(_ForgetPasswordResponse(
isSuccessLower: freezed == isSuccessLower ? _self.isSuccessLower : isSuccessLower // ignore: cast_nullable_to_non_nullable
as bool?,isSuccessUpper: freezed == isSuccessUpper ? _self.isSuccessUpper : isSuccessUpper // ignore: cast_nullable_to_non_nullable
as bool?,messageLower: freezed == messageLower ? _self.messageLower : messageLower // ignore: cast_nullable_to_non_nullable
as String?,messageUpper: freezed == messageUpper ? _self.messageUpper : messageUpper // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as dynamic,dataUpper: freezed == dataUpper ? _self.dataUpper : dataUpper // ignore: cast_nullable_to_non_nullable
as dynamic,errors: freezed == errors ? _self._errors : errors // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,errorsUpper: freezed == errorsUpper ? _self._errorsUpper : errorsUpper // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,
  ));
}


}

// dart format on
