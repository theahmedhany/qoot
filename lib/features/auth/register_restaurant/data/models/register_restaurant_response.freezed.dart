// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_restaurant_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RegisterRestaurantResponse {

@JsonKey(name: 'isSuccess') bool? get isSuccess;@JsonKey(name: 'IsSuccess') bool? get isSuccessAlt;@JsonKey(name: 'message') String? get message;@JsonKey(name: 'Message') String? get messageAlt; dynamic get data; dynamic get Data; List<dynamic>? get errors; List<dynamic>? get Errors;
/// Create a copy of RegisterRestaurantResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterRestaurantResponseCopyWith<RegisterRestaurantResponse> get copyWith => _$RegisterRestaurantResponseCopyWithImpl<RegisterRestaurantResponse>(this as RegisterRestaurantResponse, _$identity);

  /// Serializes this RegisterRestaurantResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterRestaurantResponse&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.isSuccessAlt, isSuccessAlt) || other.isSuccessAlt == isSuccessAlt)&&(identical(other.message, message) || other.message == message)&&(identical(other.messageAlt, messageAlt) || other.messageAlt == messageAlt)&&const DeepCollectionEquality().equals(other.data, data)&&const DeepCollectionEquality().equals(other.Data, Data)&&const DeepCollectionEquality().equals(other.errors, errors)&&const DeepCollectionEquality().equals(other.Errors, Errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isSuccess,isSuccessAlt,message,messageAlt,const DeepCollectionEquality().hash(data),const DeepCollectionEquality().hash(Data),const DeepCollectionEquality().hash(errors),const DeepCollectionEquality().hash(Errors));

@override
String toString() {
  return 'RegisterRestaurantResponse(isSuccess: $isSuccess, isSuccessAlt: $isSuccessAlt, message: $message, messageAlt: $messageAlt, data: $data, Data: $Data, errors: $errors, Errors: $Errors)';
}


}

/// @nodoc
abstract mixin class $RegisterRestaurantResponseCopyWith<$Res>  {
  factory $RegisterRestaurantResponseCopyWith(RegisterRestaurantResponse value, $Res Function(RegisterRestaurantResponse) _then) = _$RegisterRestaurantResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'isSuccess') bool? isSuccess,@JsonKey(name: 'IsSuccess') bool? isSuccessAlt,@JsonKey(name: 'message') String? message,@JsonKey(name: 'Message') String? messageAlt, dynamic data, dynamic Data, List<dynamic>? errors, List<dynamic>? Errors
});




}
/// @nodoc
class _$RegisterRestaurantResponseCopyWithImpl<$Res>
    implements $RegisterRestaurantResponseCopyWith<$Res> {
  _$RegisterRestaurantResponseCopyWithImpl(this._self, this._then);

  final RegisterRestaurantResponse _self;
  final $Res Function(RegisterRestaurantResponse) _then;

/// Create a copy of RegisterRestaurantResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isSuccess = freezed,Object? isSuccessAlt = freezed,Object? message = freezed,Object? messageAlt = freezed,Object? data = freezed,Object? Data = freezed,Object? errors = freezed,Object? Errors = freezed,}) {
  return _then(_self.copyWith(
isSuccess: freezed == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool?,isSuccessAlt: freezed == isSuccessAlt ? _self.isSuccessAlt : isSuccessAlt // ignore: cast_nullable_to_non_nullable
as bool?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,messageAlt: freezed == messageAlt ? _self.messageAlt : messageAlt // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as dynamic,Data: freezed == Data ? _self.Data : Data // ignore: cast_nullable_to_non_nullable
as dynamic,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,Errors: freezed == Errors ? _self.Errors : Errors // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [RegisterRestaurantResponse].
extension RegisterRestaurantResponsePatterns on RegisterRestaurantResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RegisterRestaurantResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RegisterRestaurantResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RegisterRestaurantResponse value)  $default,){
final _that = this;
switch (_that) {
case _RegisterRestaurantResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RegisterRestaurantResponse value)?  $default,){
final _that = this;
switch (_that) {
case _RegisterRestaurantResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'isSuccess')  bool? isSuccess, @JsonKey(name: 'IsSuccess')  bool? isSuccessAlt, @JsonKey(name: 'message')  String? message, @JsonKey(name: 'Message')  String? messageAlt,  dynamic data,  dynamic Data,  List<dynamic>? errors,  List<dynamic>? Errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RegisterRestaurantResponse() when $default != null:
return $default(_that.isSuccess,_that.isSuccessAlt,_that.message,_that.messageAlt,_that.data,_that.Data,_that.errors,_that.Errors);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'isSuccess')  bool? isSuccess, @JsonKey(name: 'IsSuccess')  bool? isSuccessAlt, @JsonKey(name: 'message')  String? message, @JsonKey(name: 'Message')  String? messageAlt,  dynamic data,  dynamic Data,  List<dynamic>? errors,  List<dynamic>? Errors)  $default,) {final _that = this;
switch (_that) {
case _RegisterRestaurantResponse():
return $default(_that.isSuccess,_that.isSuccessAlt,_that.message,_that.messageAlt,_that.data,_that.Data,_that.errors,_that.Errors);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'isSuccess')  bool? isSuccess, @JsonKey(name: 'IsSuccess')  bool? isSuccessAlt, @JsonKey(name: 'message')  String? message, @JsonKey(name: 'Message')  String? messageAlt,  dynamic data,  dynamic Data,  List<dynamic>? errors,  List<dynamic>? Errors)?  $default,) {final _that = this;
switch (_that) {
case _RegisterRestaurantResponse() when $default != null:
return $default(_that.isSuccess,_that.isSuccessAlt,_that.message,_that.messageAlt,_that.data,_that.Data,_that.errors,_that.Errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RegisterRestaurantResponse implements RegisterRestaurantResponse {
  const _RegisterRestaurantResponse({@JsonKey(name: 'isSuccess') this.isSuccess, @JsonKey(name: 'IsSuccess') this.isSuccessAlt, @JsonKey(name: 'message') this.message, @JsonKey(name: 'Message') this.messageAlt, this.data, this.Data, final  List<dynamic>? errors, final  List<dynamic>? Errors}): _errors = errors,_Errors = Errors;
  factory _RegisterRestaurantResponse.fromJson(Map<String, dynamic> json) => _$RegisterRestaurantResponseFromJson(json);

@override@JsonKey(name: 'isSuccess') final  bool? isSuccess;
@override@JsonKey(name: 'IsSuccess') final  bool? isSuccessAlt;
@override@JsonKey(name: 'message') final  String? message;
@override@JsonKey(name: 'Message') final  String? messageAlt;
@override final  dynamic data;
@override final  dynamic Data;
 final  List<dynamic>? _errors;
@override List<dynamic>? get errors {
  final value = _errors;
  if (value == null) return null;
  if (_errors is EqualUnmodifiableListView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _Errors;
@override List<dynamic>? get Errors {
  final value = _Errors;
  if (value == null) return null;
  if (_Errors is EqualUnmodifiableListView) return _Errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of RegisterRestaurantResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterRestaurantResponseCopyWith<_RegisterRestaurantResponse> get copyWith => __$RegisterRestaurantResponseCopyWithImpl<_RegisterRestaurantResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RegisterRestaurantResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterRestaurantResponse&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.isSuccessAlt, isSuccessAlt) || other.isSuccessAlt == isSuccessAlt)&&(identical(other.message, message) || other.message == message)&&(identical(other.messageAlt, messageAlt) || other.messageAlt == messageAlt)&&const DeepCollectionEquality().equals(other.data, data)&&const DeepCollectionEquality().equals(other.Data, Data)&&const DeepCollectionEquality().equals(other._errors, _errors)&&const DeepCollectionEquality().equals(other._Errors, _Errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isSuccess,isSuccessAlt,message,messageAlt,const DeepCollectionEquality().hash(data),const DeepCollectionEquality().hash(Data),const DeepCollectionEquality().hash(_errors),const DeepCollectionEquality().hash(_Errors));

@override
String toString() {
  return 'RegisterRestaurantResponse(isSuccess: $isSuccess, isSuccessAlt: $isSuccessAlt, message: $message, messageAlt: $messageAlt, data: $data, Data: $Data, errors: $errors, Errors: $Errors)';
}


}

/// @nodoc
abstract mixin class _$RegisterRestaurantResponseCopyWith<$Res> implements $RegisterRestaurantResponseCopyWith<$Res> {
  factory _$RegisterRestaurantResponseCopyWith(_RegisterRestaurantResponse value, $Res Function(_RegisterRestaurantResponse) _then) = __$RegisterRestaurantResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'isSuccess') bool? isSuccess,@JsonKey(name: 'IsSuccess') bool? isSuccessAlt,@JsonKey(name: 'message') String? message,@JsonKey(name: 'Message') String? messageAlt, dynamic data, dynamic Data, List<dynamic>? errors, List<dynamic>? Errors
});




}
/// @nodoc
class __$RegisterRestaurantResponseCopyWithImpl<$Res>
    implements _$RegisterRestaurantResponseCopyWith<$Res> {
  __$RegisterRestaurantResponseCopyWithImpl(this._self, this._then);

  final _RegisterRestaurantResponse _self;
  final $Res Function(_RegisterRestaurantResponse) _then;

/// Create a copy of RegisterRestaurantResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isSuccess = freezed,Object? isSuccessAlt = freezed,Object? message = freezed,Object? messageAlt = freezed,Object? data = freezed,Object? Data = freezed,Object? errors = freezed,Object? Errors = freezed,}) {
  return _then(_RegisterRestaurantResponse(
isSuccess: freezed == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool?,isSuccessAlt: freezed == isSuccessAlt ? _self.isSuccessAlt : isSuccessAlt // ignore: cast_nullable_to_non_nullable
as bool?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,messageAlt: freezed == messageAlt ? _self.messageAlt : messageAlt // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as dynamic,Data: freezed == Data ? _self.Data : Data // ignore: cast_nullable_to_non_nullable
as dynamic,errors: freezed == errors ? _self._errors : errors // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,Errors: freezed == Errors ? _self._Errors : Errors // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,
  ));
}


}

// dart format on
