// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'available_donation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AvailableDonationsResponse {

 bool get isSuccess; String get message; DonationsData? get data; List<dynamic>? get errors;
/// Create a copy of AvailableDonationsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AvailableDonationsResponseCopyWith<AvailableDonationsResponse> get copyWith => _$AvailableDonationsResponseCopyWithImpl<AvailableDonationsResponse>(this as AvailableDonationsResponse, _$identity);

  /// Serializes this AvailableDonationsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AvailableDonationsResponse&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isSuccess,message,data,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'AvailableDonationsResponse(isSuccess: $isSuccess, message: $message, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $AvailableDonationsResponseCopyWith<$Res>  {
  factory $AvailableDonationsResponseCopyWith(AvailableDonationsResponse value, $Res Function(AvailableDonationsResponse) _then) = _$AvailableDonationsResponseCopyWithImpl;
@useResult
$Res call({
 bool isSuccess, String message, DonationsData? data, List<dynamic>? errors
});


$DonationsDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$AvailableDonationsResponseCopyWithImpl<$Res>
    implements $AvailableDonationsResponseCopyWith<$Res> {
  _$AvailableDonationsResponseCopyWithImpl(this._self, this._then);

  final AvailableDonationsResponse _self;
  final $Res Function(AvailableDonationsResponse) _then;

/// Create a copy of AvailableDonationsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isSuccess = null,Object? message = null,Object? data = freezed,Object? errors = freezed,}) {
  return _then(_self.copyWith(
isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as DonationsData?,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,
  ));
}
/// Create a copy of AvailableDonationsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DonationsDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $DonationsDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [AvailableDonationsResponse].
extension AvailableDonationsResponsePatterns on AvailableDonationsResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AvailableDonationsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AvailableDonationsResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AvailableDonationsResponse value)  $default,){
final _that = this;
switch (_that) {
case _AvailableDonationsResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AvailableDonationsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _AvailableDonationsResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isSuccess,  String message,  DonationsData? data,  List<dynamic>? errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AvailableDonationsResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isSuccess,  String message,  DonationsData? data,  List<dynamic>? errors)  $default,) {final _that = this;
switch (_that) {
case _AvailableDonationsResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isSuccess,  String message,  DonationsData? data,  List<dynamic>? errors)?  $default,) {final _that = this;
switch (_that) {
case _AvailableDonationsResponse() when $default != null:
return $default(_that.isSuccess,_that.message,_that.data,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AvailableDonationsResponse implements AvailableDonationsResponse {
  const _AvailableDonationsResponse({required this.isSuccess, required this.message, this.data, final  List<dynamic>? errors}): _errors = errors;
  factory _AvailableDonationsResponse.fromJson(Map<String, dynamic> json) => _$AvailableDonationsResponseFromJson(json);

@override final  bool isSuccess;
@override final  String message;
@override final  DonationsData? data;
 final  List<dynamic>? _errors;
@override List<dynamic>? get errors {
  final value = _errors;
  if (value == null) return null;
  if (_errors is EqualUnmodifiableListView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of AvailableDonationsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AvailableDonationsResponseCopyWith<_AvailableDonationsResponse> get copyWith => __$AvailableDonationsResponseCopyWithImpl<_AvailableDonationsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AvailableDonationsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AvailableDonationsResponse&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data)&&const DeepCollectionEquality().equals(other._errors, _errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isSuccess,message,data,const DeepCollectionEquality().hash(_errors));

@override
String toString() {
  return 'AvailableDonationsResponse(isSuccess: $isSuccess, message: $message, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$AvailableDonationsResponseCopyWith<$Res> implements $AvailableDonationsResponseCopyWith<$Res> {
  factory _$AvailableDonationsResponseCopyWith(_AvailableDonationsResponse value, $Res Function(_AvailableDonationsResponse) _then) = __$AvailableDonationsResponseCopyWithImpl;
@override @useResult
$Res call({
 bool isSuccess, String message, DonationsData? data, List<dynamic>? errors
});


@override $DonationsDataCopyWith<$Res>? get data;

}
/// @nodoc
class __$AvailableDonationsResponseCopyWithImpl<$Res>
    implements _$AvailableDonationsResponseCopyWith<$Res> {
  __$AvailableDonationsResponseCopyWithImpl(this._self, this._then);

  final _AvailableDonationsResponse _self;
  final $Res Function(_AvailableDonationsResponse) _then;

/// Create a copy of AvailableDonationsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isSuccess = null,Object? message = null,Object? data = freezed,Object? errors = freezed,}) {
  return _then(_AvailableDonationsResponse(
isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as DonationsData?,errors: freezed == errors ? _self._errors : errors // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,
  ));
}

/// Create a copy of AvailableDonationsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DonationsDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $DonationsDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$DonationsData {

 List<DonationItem>? get items; int? get totalCount; int? get pageNumber; int? get pageSize; int? get totalPages; bool? get hasPreviousPage; bool? get hasNextPage;
/// Create a copy of DonationsData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DonationsDataCopyWith<DonationsData> get copyWith => _$DonationsDataCopyWithImpl<DonationsData>(this as DonationsData, _$identity);

  /// Serializes this DonationsData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DonationsData&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.pageNumber, pageNumber) || other.pageNumber == pageNumber)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.hasPreviousPage, hasPreviousPage) || other.hasPreviousPage == hasPreviousPage)&&(identical(other.hasNextPage, hasNextPage) || other.hasNextPage == hasNextPage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),totalCount,pageNumber,pageSize,totalPages,hasPreviousPage,hasNextPage);

@override
String toString() {
  return 'DonationsData(items: $items, totalCount: $totalCount, pageNumber: $pageNumber, pageSize: $pageSize, totalPages: $totalPages, hasPreviousPage: $hasPreviousPage, hasNextPage: $hasNextPage)';
}


}

/// @nodoc
abstract mixin class $DonationsDataCopyWith<$Res>  {
  factory $DonationsDataCopyWith(DonationsData value, $Res Function(DonationsData) _then) = _$DonationsDataCopyWithImpl;
@useResult
$Res call({
 List<DonationItem>? items, int? totalCount, int? pageNumber, int? pageSize, int? totalPages, bool? hasPreviousPage, bool? hasNextPage
});




}
/// @nodoc
class _$DonationsDataCopyWithImpl<$Res>
    implements $DonationsDataCopyWith<$Res> {
  _$DonationsDataCopyWithImpl(this._self, this._then);

  final DonationsData _self;
  final $Res Function(DonationsData) _then;

/// Create a copy of DonationsData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = freezed,Object? totalCount = freezed,Object? pageNumber = freezed,Object? pageSize = freezed,Object? totalPages = freezed,Object? hasPreviousPage = freezed,Object? hasNextPage = freezed,}) {
  return _then(_self.copyWith(
items: freezed == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<DonationItem>?,totalCount: freezed == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int?,pageNumber: freezed == pageNumber ? _self.pageNumber : pageNumber // ignore: cast_nullable_to_non_nullable
as int?,pageSize: freezed == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int?,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int?,hasPreviousPage: freezed == hasPreviousPage ? _self.hasPreviousPage : hasPreviousPage // ignore: cast_nullable_to_non_nullable
as bool?,hasNextPage: freezed == hasNextPage ? _self.hasNextPage : hasNextPage // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [DonationsData].
extension DonationsDataPatterns on DonationsData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DonationsData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DonationsData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DonationsData value)  $default,){
final _that = this;
switch (_that) {
case _DonationsData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DonationsData value)?  $default,){
final _that = this;
switch (_that) {
case _DonationsData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<DonationItem>? items,  int? totalCount,  int? pageNumber,  int? pageSize,  int? totalPages,  bool? hasPreviousPage,  bool? hasNextPage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DonationsData() when $default != null:
return $default(_that.items,_that.totalCount,_that.pageNumber,_that.pageSize,_that.totalPages,_that.hasPreviousPage,_that.hasNextPage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<DonationItem>? items,  int? totalCount,  int? pageNumber,  int? pageSize,  int? totalPages,  bool? hasPreviousPage,  bool? hasNextPage)  $default,) {final _that = this;
switch (_that) {
case _DonationsData():
return $default(_that.items,_that.totalCount,_that.pageNumber,_that.pageSize,_that.totalPages,_that.hasPreviousPage,_that.hasNextPage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<DonationItem>? items,  int? totalCount,  int? pageNumber,  int? pageSize,  int? totalPages,  bool? hasPreviousPage,  bool? hasNextPage)?  $default,) {final _that = this;
switch (_that) {
case _DonationsData() when $default != null:
return $default(_that.items,_that.totalCount,_that.pageNumber,_that.pageSize,_that.totalPages,_that.hasPreviousPage,_that.hasNextPage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DonationsData implements DonationsData {
  const _DonationsData({final  List<DonationItem>? items, this.totalCount, this.pageNumber, this.pageSize, this.totalPages, this.hasPreviousPage, this.hasNextPage}): _items = items;
  factory _DonationsData.fromJson(Map<String, dynamic> json) => _$DonationsDataFromJson(json);

 final  List<DonationItem>? _items;
@override List<DonationItem>? get items {
  final value = _items;
  if (value == null) return null;
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  int? totalCount;
@override final  int? pageNumber;
@override final  int? pageSize;
@override final  int? totalPages;
@override final  bool? hasPreviousPage;
@override final  bool? hasNextPage;

/// Create a copy of DonationsData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DonationsDataCopyWith<_DonationsData> get copyWith => __$DonationsDataCopyWithImpl<_DonationsData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DonationsDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DonationsData&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.pageNumber, pageNumber) || other.pageNumber == pageNumber)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.hasPreviousPage, hasPreviousPage) || other.hasPreviousPage == hasPreviousPage)&&(identical(other.hasNextPage, hasNextPage) || other.hasNextPage == hasNextPage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),totalCount,pageNumber,pageSize,totalPages,hasPreviousPage,hasNextPage);

@override
String toString() {
  return 'DonationsData(items: $items, totalCount: $totalCount, pageNumber: $pageNumber, pageSize: $pageSize, totalPages: $totalPages, hasPreviousPage: $hasPreviousPage, hasNextPage: $hasNextPage)';
}


}

/// @nodoc
abstract mixin class _$DonationsDataCopyWith<$Res> implements $DonationsDataCopyWith<$Res> {
  factory _$DonationsDataCopyWith(_DonationsData value, $Res Function(_DonationsData) _then) = __$DonationsDataCopyWithImpl;
@override @useResult
$Res call({
 List<DonationItem>? items, int? totalCount, int? pageNumber, int? pageSize, int? totalPages, bool? hasPreviousPage, bool? hasNextPage
});




}
/// @nodoc
class __$DonationsDataCopyWithImpl<$Res>
    implements _$DonationsDataCopyWith<$Res> {
  __$DonationsDataCopyWithImpl(this._self, this._then);

  final _DonationsData _self;
  final $Res Function(_DonationsData) _then;

/// Create a copy of DonationsData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = freezed,Object? totalCount = freezed,Object? pageNumber = freezed,Object? pageSize = freezed,Object? totalPages = freezed,Object? hasPreviousPage = freezed,Object? hasNextPage = freezed,}) {
  return _then(_DonationsData(
items: freezed == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<DonationItem>?,totalCount: freezed == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int?,pageNumber: freezed == pageNumber ? _self.pageNumber : pageNumber // ignore: cast_nullable_to_non_nullable
as int?,pageSize: freezed == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int?,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int?,hasPreviousPage: freezed == hasPreviousPage ? _self.hasPreviousPage : hasPreviousPage // ignore: cast_nullable_to_non_nullable
as bool?,hasNextPage: freezed == hasNextPage ? _self.hasNextPage : hasNextPage // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
