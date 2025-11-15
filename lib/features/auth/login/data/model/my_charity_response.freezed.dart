// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_charity_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MyCharityResponse {

@JsonKey(name: 'isSuccess') bool? get isSuccessLower;@JsonKey(name: 'IsSuccess') bool? get isSuccessUpper;@JsonKey(name: 'message') String? get messageLower;@JsonKey(name: 'Message') String? get messageUpper; dynamic get data;@JsonKey(name: 'Data') dynamic get dataUpper; List<dynamic>? get errors;@JsonKey(name: 'Errors') List<dynamic>? get errorsUpper;
/// Create a copy of MyCharityResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyCharityResponseCopyWith<MyCharityResponse> get copyWith => _$MyCharityResponseCopyWithImpl<MyCharityResponse>(this as MyCharityResponse, _$identity);

  /// Serializes this MyCharityResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyCharityResponse&&(identical(other.isSuccessLower, isSuccessLower) || other.isSuccessLower == isSuccessLower)&&(identical(other.isSuccessUpper, isSuccessUpper) || other.isSuccessUpper == isSuccessUpper)&&(identical(other.messageLower, messageLower) || other.messageLower == messageLower)&&(identical(other.messageUpper, messageUpper) || other.messageUpper == messageUpper)&&const DeepCollectionEquality().equals(other.data, data)&&const DeepCollectionEquality().equals(other.dataUpper, dataUpper)&&const DeepCollectionEquality().equals(other.errors, errors)&&const DeepCollectionEquality().equals(other.errorsUpper, errorsUpper));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isSuccessLower,isSuccessUpper,messageLower,messageUpper,const DeepCollectionEquality().hash(data),const DeepCollectionEquality().hash(dataUpper),const DeepCollectionEquality().hash(errors),const DeepCollectionEquality().hash(errorsUpper));

@override
String toString() {
  return 'MyCharityResponse(isSuccessLower: $isSuccessLower, isSuccessUpper: $isSuccessUpper, messageLower: $messageLower, messageUpper: $messageUpper, data: $data, dataUpper: $dataUpper, errors: $errors, errorsUpper: $errorsUpper)';
}


}

/// @nodoc
abstract mixin class $MyCharityResponseCopyWith<$Res>  {
  factory $MyCharityResponseCopyWith(MyCharityResponse value, $Res Function(MyCharityResponse) _then) = _$MyCharityResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'isSuccess') bool? isSuccessLower,@JsonKey(name: 'IsSuccess') bool? isSuccessUpper,@JsonKey(name: 'message') String? messageLower,@JsonKey(name: 'Message') String? messageUpper, dynamic data,@JsonKey(name: 'Data') dynamic dataUpper, List<dynamic>? errors,@JsonKey(name: 'Errors') List<dynamic>? errorsUpper
});




}
/// @nodoc
class _$MyCharityResponseCopyWithImpl<$Res>
    implements $MyCharityResponseCopyWith<$Res> {
  _$MyCharityResponseCopyWithImpl(this._self, this._then);

  final MyCharityResponse _self;
  final $Res Function(MyCharityResponse) _then;

/// Create a copy of MyCharityResponse
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


/// Adds pattern-matching-related methods to [MyCharityResponse].
extension MyCharityResponsePatterns on MyCharityResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MyCharityResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MyCharityResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MyCharityResponse value)  $default,){
final _that = this;
switch (_that) {
case _MyCharityResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MyCharityResponse value)?  $default,){
final _that = this;
switch (_that) {
case _MyCharityResponse() when $default != null:
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
case _MyCharityResponse() when $default != null:
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
case _MyCharityResponse():
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
case _MyCharityResponse() when $default != null:
return $default(_that.isSuccessLower,_that.isSuccessUpper,_that.messageLower,_that.messageUpper,_that.data,_that.dataUpper,_that.errors,_that.errorsUpper);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MyCharityResponse extends MyCharityResponse {
  const _MyCharityResponse({@JsonKey(name: 'isSuccess') this.isSuccessLower, @JsonKey(name: 'IsSuccess') this.isSuccessUpper, @JsonKey(name: 'message') this.messageLower, @JsonKey(name: 'Message') this.messageUpper, this.data, @JsonKey(name: 'Data') this.dataUpper, final  List<dynamic>? errors, @JsonKey(name: 'Errors') final  List<dynamic>? errorsUpper}): _errors = errors,_errorsUpper = errorsUpper,super._();
  factory _MyCharityResponse.fromJson(Map<String, dynamic> json) => _$MyCharityResponseFromJson(json);

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


/// Create a copy of MyCharityResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyCharityResponseCopyWith<_MyCharityResponse> get copyWith => __$MyCharityResponseCopyWithImpl<_MyCharityResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MyCharityResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyCharityResponse&&(identical(other.isSuccessLower, isSuccessLower) || other.isSuccessLower == isSuccessLower)&&(identical(other.isSuccessUpper, isSuccessUpper) || other.isSuccessUpper == isSuccessUpper)&&(identical(other.messageLower, messageLower) || other.messageLower == messageLower)&&(identical(other.messageUpper, messageUpper) || other.messageUpper == messageUpper)&&const DeepCollectionEquality().equals(other.data, data)&&const DeepCollectionEquality().equals(other.dataUpper, dataUpper)&&const DeepCollectionEquality().equals(other._errors, _errors)&&const DeepCollectionEquality().equals(other._errorsUpper, _errorsUpper));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isSuccessLower,isSuccessUpper,messageLower,messageUpper,const DeepCollectionEquality().hash(data),const DeepCollectionEquality().hash(dataUpper),const DeepCollectionEquality().hash(_errors),const DeepCollectionEquality().hash(_errorsUpper));

@override
String toString() {
  return 'MyCharityResponse(isSuccessLower: $isSuccessLower, isSuccessUpper: $isSuccessUpper, messageLower: $messageLower, messageUpper: $messageUpper, data: $data, dataUpper: $dataUpper, errors: $errors, errorsUpper: $errorsUpper)';
}


}

/// @nodoc
abstract mixin class _$MyCharityResponseCopyWith<$Res> implements $MyCharityResponseCopyWith<$Res> {
  factory _$MyCharityResponseCopyWith(_MyCharityResponse value, $Res Function(_MyCharityResponse) _then) = __$MyCharityResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'isSuccess') bool? isSuccessLower,@JsonKey(name: 'IsSuccess') bool? isSuccessUpper,@JsonKey(name: 'message') String? messageLower,@JsonKey(name: 'Message') String? messageUpper, dynamic data,@JsonKey(name: 'Data') dynamic dataUpper, List<dynamic>? errors,@JsonKey(name: 'Errors') List<dynamic>? errorsUpper
});




}
/// @nodoc
class __$MyCharityResponseCopyWithImpl<$Res>
    implements _$MyCharityResponseCopyWith<$Res> {
  __$MyCharityResponseCopyWithImpl(this._self, this._then);

  final _MyCharityResponse _self;
  final $Res Function(_MyCharityResponse) _then;

/// Create a copy of MyCharityResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isSuccessLower = freezed,Object? isSuccessUpper = freezed,Object? messageLower = freezed,Object? messageUpper = freezed,Object? data = freezed,Object? dataUpper = freezed,Object? errors = freezed,Object? errorsUpper = freezed,}) {
  return _then(_MyCharityResponse(
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
