// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_restaurant_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MyRestaurantResponse {

@JsonKey(name: 'isSuccess') bool? get isSuccessLower;@JsonKey(name: 'IsSuccess') bool? get isSuccessUpper;@JsonKey(name: 'message') String? get messageLower;@JsonKey(name: 'Message') String? get messageUpper;@JsonKey(name: 'data') Map<String, dynamic>? get dataLower;@JsonKey(name: 'Data') Map<String, dynamic>? get dataUpper;@JsonKey(name: 'errors') List<dynamic>? get errorsLower;@JsonKey(name: 'Errors') List<dynamic>? get errorsUpper;
/// Create a copy of MyRestaurantResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyRestaurantResponseCopyWith<MyRestaurantResponse> get copyWith => _$MyRestaurantResponseCopyWithImpl<MyRestaurantResponse>(this as MyRestaurantResponse, _$identity);

  /// Serializes this MyRestaurantResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyRestaurantResponse&&(identical(other.isSuccessLower, isSuccessLower) || other.isSuccessLower == isSuccessLower)&&(identical(other.isSuccessUpper, isSuccessUpper) || other.isSuccessUpper == isSuccessUpper)&&(identical(other.messageLower, messageLower) || other.messageLower == messageLower)&&(identical(other.messageUpper, messageUpper) || other.messageUpper == messageUpper)&&const DeepCollectionEquality().equals(other.dataLower, dataLower)&&const DeepCollectionEquality().equals(other.dataUpper, dataUpper)&&const DeepCollectionEquality().equals(other.errorsLower, errorsLower)&&const DeepCollectionEquality().equals(other.errorsUpper, errorsUpper));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isSuccessLower,isSuccessUpper,messageLower,messageUpper,const DeepCollectionEquality().hash(dataLower),const DeepCollectionEquality().hash(dataUpper),const DeepCollectionEquality().hash(errorsLower),const DeepCollectionEquality().hash(errorsUpper));

@override
String toString() {
  return 'MyRestaurantResponse(isSuccessLower: $isSuccessLower, isSuccessUpper: $isSuccessUpper, messageLower: $messageLower, messageUpper: $messageUpper, dataLower: $dataLower, dataUpper: $dataUpper, errorsLower: $errorsLower, errorsUpper: $errorsUpper)';
}


}

/// @nodoc
abstract mixin class $MyRestaurantResponseCopyWith<$Res>  {
  factory $MyRestaurantResponseCopyWith(MyRestaurantResponse value, $Res Function(MyRestaurantResponse) _then) = _$MyRestaurantResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'isSuccess') bool? isSuccessLower,@JsonKey(name: 'IsSuccess') bool? isSuccessUpper,@JsonKey(name: 'message') String? messageLower,@JsonKey(name: 'Message') String? messageUpper,@JsonKey(name: 'data') Map<String, dynamic>? dataLower,@JsonKey(name: 'Data') Map<String, dynamic>? dataUpper,@JsonKey(name: 'errors') List<dynamic>? errorsLower,@JsonKey(name: 'Errors') List<dynamic>? errorsUpper
});




}
/// @nodoc
class _$MyRestaurantResponseCopyWithImpl<$Res>
    implements $MyRestaurantResponseCopyWith<$Res> {
  _$MyRestaurantResponseCopyWithImpl(this._self, this._then);

  final MyRestaurantResponse _self;
  final $Res Function(MyRestaurantResponse) _then;

/// Create a copy of MyRestaurantResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isSuccessLower = freezed,Object? isSuccessUpper = freezed,Object? messageLower = freezed,Object? messageUpper = freezed,Object? dataLower = freezed,Object? dataUpper = freezed,Object? errorsLower = freezed,Object? errorsUpper = freezed,}) {
  return _then(_self.copyWith(
isSuccessLower: freezed == isSuccessLower ? _self.isSuccessLower : isSuccessLower // ignore: cast_nullable_to_non_nullable
as bool?,isSuccessUpper: freezed == isSuccessUpper ? _self.isSuccessUpper : isSuccessUpper // ignore: cast_nullable_to_non_nullable
as bool?,messageLower: freezed == messageLower ? _self.messageLower : messageLower // ignore: cast_nullable_to_non_nullable
as String?,messageUpper: freezed == messageUpper ? _self.messageUpper : messageUpper // ignore: cast_nullable_to_non_nullable
as String?,dataLower: freezed == dataLower ? _self.dataLower : dataLower // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,dataUpper: freezed == dataUpper ? _self.dataUpper : dataUpper // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,errorsLower: freezed == errorsLower ? _self.errorsLower : errorsLower // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,errorsUpper: freezed == errorsUpper ? _self.errorsUpper : errorsUpper // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [MyRestaurantResponse].
extension MyRestaurantResponsePatterns on MyRestaurantResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MyRestaurantResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MyRestaurantResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MyRestaurantResponse value)  $default,){
final _that = this;
switch (_that) {
case _MyRestaurantResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MyRestaurantResponse value)?  $default,){
final _that = this;
switch (_that) {
case _MyRestaurantResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'isSuccess')  bool? isSuccessLower, @JsonKey(name: 'IsSuccess')  bool? isSuccessUpper, @JsonKey(name: 'message')  String? messageLower, @JsonKey(name: 'Message')  String? messageUpper, @JsonKey(name: 'data')  Map<String, dynamic>? dataLower, @JsonKey(name: 'Data')  Map<String, dynamic>? dataUpper, @JsonKey(name: 'errors')  List<dynamic>? errorsLower, @JsonKey(name: 'Errors')  List<dynamic>? errorsUpper)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MyRestaurantResponse() when $default != null:
return $default(_that.isSuccessLower,_that.isSuccessUpper,_that.messageLower,_that.messageUpper,_that.dataLower,_that.dataUpper,_that.errorsLower,_that.errorsUpper);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'isSuccess')  bool? isSuccessLower, @JsonKey(name: 'IsSuccess')  bool? isSuccessUpper, @JsonKey(name: 'message')  String? messageLower, @JsonKey(name: 'Message')  String? messageUpper, @JsonKey(name: 'data')  Map<String, dynamic>? dataLower, @JsonKey(name: 'Data')  Map<String, dynamic>? dataUpper, @JsonKey(name: 'errors')  List<dynamic>? errorsLower, @JsonKey(name: 'Errors')  List<dynamic>? errorsUpper)  $default,) {final _that = this;
switch (_that) {
case _MyRestaurantResponse():
return $default(_that.isSuccessLower,_that.isSuccessUpper,_that.messageLower,_that.messageUpper,_that.dataLower,_that.dataUpper,_that.errorsLower,_that.errorsUpper);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'isSuccess')  bool? isSuccessLower, @JsonKey(name: 'IsSuccess')  bool? isSuccessUpper, @JsonKey(name: 'message')  String? messageLower, @JsonKey(name: 'Message')  String? messageUpper, @JsonKey(name: 'data')  Map<String, dynamic>? dataLower, @JsonKey(name: 'Data')  Map<String, dynamic>? dataUpper, @JsonKey(name: 'errors')  List<dynamic>? errorsLower, @JsonKey(name: 'Errors')  List<dynamic>? errorsUpper)?  $default,) {final _that = this;
switch (_that) {
case _MyRestaurantResponse() when $default != null:
return $default(_that.isSuccessLower,_that.isSuccessUpper,_that.messageLower,_that.messageUpper,_that.dataLower,_that.dataUpper,_that.errorsLower,_that.errorsUpper);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MyRestaurantResponse extends MyRestaurantResponse {
  const _MyRestaurantResponse({@JsonKey(name: 'isSuccess') this.isSuccessLower, @JsonKey(name: 'IsSuccess') this.isSuccessUpper, @JsonKey(name: 'message') this.messageLower, @JsonKey(name: 'Message') this.messageUpper, @JsonKey(name: 'data') final  Map<String, dynamic>? dataLower, @JsonKey(name: 'Data') final  Map<String, dynamic>? dataUpper, @JsonKey(name: 'errors') final  List<dynamic>? errorsLower, @JsonKey(name: 'Errors') final  List<dynamic>? errorsUpper}): _dataLower = dataLower,_dataUpper = dataUpper,_errorsLower = errorsLower,_errorsUpper = errorsUpper,super._();
  factory _MyRestaurantResponse.fromJson(Map<String, dynamic> json) => _$MyRestaurantResponseFromJson(json);

@override@JsonKey(name: 'isSuccess') final  bool? isSuccessLower;
@override@JsonKey(name: 'IsSuccess') final  bool? isSuccessUpper;
@override@JsonKey(name: 'message') final  String? messageLower;
@override@JsonKey(name: 'Message') final  String? messageUpper;
 final  Map<String, dynamic>? _dataLower;
@override@JsonKey(name: 'data') Map<String, dynamic>? get dataLower {
  final value = _dataLower;
  if (value == null) return null;
  if (_dataLower is EqualUnmodifiableMapView) return _dataLower;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  Map<String, dynamic>? _dataUpper;
@override@JsonKey(name: 'Data') Map<String, dynamic>? get dataUpper {
  final value = _dataUpper;
  if (value == null) return null;
  if (_dataUpper is EqualUnmodifiableMapView) return _dataUpper;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  List<dynamic>? _errorsLower;
@override@JsonKey(name: 'errors') List<dynamic>? get errorsLower {
  final value = _errorsLower;
  if (value == null) return null;
  if (_errorsLower is EqualUnmodifiableListView) return _errorsLower;
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


/// Create a copy of MyRestaurantResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyRestaurantResponseCopyWith<_MyRestaurantResponse> get copyWith => __$MyRestaurantResponseCopyWithImpl<_MyRestaurantResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MyRestaurantResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyRestaurantResponse&&(identical(other.isSuccessLower, isSuccessLower) || other.isSuccessLower == isSuccessLower)&&(identical(other.isSuccessUpper, isSuccessUpper) || other.isSuccessUpper == isSuccessUpper)&&(identical(other.messageLower, messageLower) || other.messageLower == messageLower)&&(identical(other.messageUpper, messageUpper) || other.messageUpper == messageUpper)&&const DeepCollectionEquality().equals(other._dataLower, _dataLower)&&const DeepCollectionEquality().equals(other._dataUpper, _dataUpper)&&const DeepCollectionEquality().equals(other._errorsLower, _errorsLower)&&const DeepCollectionEquality().equals(other._errorsUpper, _errorsUpper));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isSuccessLower,isSuccessUpper,messageLower,messageUpper,const DeepCollectionEquality().hash(_dataLower),const DeepCollectionEquality().hash(_dataUpper),const DeepCollectionEquality().hash(_errorsLower),const DeepCollectionEquality().hash(_errorsUpper));

@override
String toString() {
  return 'MyRestaurantResponse(isSuccessLower: $isSuccessLower, isSuccessUpper: $isSuccessUpper, messageLower: $messageLower, messageUpper: $messageUpper, dataLower: $dataLower, dataUpper: $dataUpper, errorsLower: $errorsLower, errorsUpper: $errorsUpper)';
}


}

/// @nodoc
abstract mixin class _$MyRestaurantResponseCopyWith<$Res> implements $MyRestaurantResponseCopyWith<$Res> {
  factory _$MyRestaurantResponseCopyWith(_MyRestaurantResponse value, $Res Function(_MyRestaurantResponse) _then) = __$MyRestaurantResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'isSuccess') bool? isSuccessLower,@JsonKey(name: 'IsSuccess') bool? isSuccessUpper,@JsonKey(name: 'message') String? messageLower,@JsonKey(name: 'Message') String? messageUpper,@JsonKey(name: 'data') Map<String, dynamic>? dataLower,@JsonKey(name: 'Data') Map<String, dynamic>? dataUpper,@JsonKey(name: 'errors') List<dynamic>? errorsLower,@JsonKey(name: 'Errors') List<dynamic>? errorsUpper
});




}
/// @nodoc
class __$MyRestaurantResponseCopyWithImpl<$Res>
    implements _$MyRestaurantResponseCopyWith<$Res> {
  __$MyRestaurantResponseCopyWithImpl(this._self, this._then);

  final _MyRestaurantResponse _self;
  final $Res Function(_MyRestaurantResponse) _then;

/// Create a copy of MyRestaurantResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isSuccessLower = freezed,Object? isSuccessUpper = freezed,Object? messageLower = freezed,Object? messageUpper = freezed,Object? dataLower = freezed,Object? dataUpper = freezed,Object? errorsLower = freezed,Object? errorsUpper = freezed,}) {
  return _then(_MyRestaurantResponse(
isSuccessLower: freezed == isSuccessLower ? _self.isSuccessLower : isSuccessLower // ignore: cast_nullable_to_non_nullable
as bool?,isSuccessUpper: freezed == isSuccessUpper ? _self.isSuccessUpper : isSuccessUpper // ignore: cast_nullable_to_non_nullable
as bool?,messageLower: freezed == messageLower ? _self.messageLower : messageLower // ignore: cast_nullable_to_non_nullable
as String?,messageUpper: freezed == messageUpper ? _self.messageUpper : messageUpper // ignore: cast_nullable_to_non_nullable
as String?,dataLower: freezed == dataLower ? _self._dataLower : dataLower // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,dataUpper: freezed == dataUpper ? _self._dataUpper : dataUpper // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,errorsLower: freezed == errorsLower ? _self._errorsLower : errorsLower // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,errorsUpper: freezed == errorsUpper ? _self._errorsUpper : errorsUpper // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,
  ));
}


}

// dart format on
