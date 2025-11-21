// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'donation_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DonationItem {

 int? get id; String? get foodType; String? get description; int? get estimatedServings; String? get expiryDateTime; int? get status; String? get statusDisplayName; bool? get requiresPickup; String? get specialInstructions; String? get contactPerson; String? get contactPhone; String? get createdAt; String? get updatedAt; int? get restaurantId; String? get restaurantName; String? get restaurantAddress; String? get restaurantPhone; double? get restaurantLatitude; double? get restaurantLongitude; List<DonationImage>? get images; int? get reservationCount; bool? get isExpired; bool? get isAvailable;
/// Create a copy of DonationItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DonationItemCopyWith<DonationItem> get copyWith => _$DonationItemCopyWithImpl<DonationItem>(this as DonationItem, _$identity);

  /// Serializes this DonationItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DonationItem&&(identical(other.id, id) || other.id == id)&&(identical(other.foodType, foodType) || other.foodType == foodType)&&(identical(other.description, description) || other.description == description)&&(identical(other.estimatedServings, estimatedServings) || other.estimatedServings == estimatedServings)&&(identical(other.expiryDateTime, expiryDateTime) || other.expiryDateTime == expiryDateTime)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusDisplayName, statusDisplayName) || other.statusDisplayName == statusDisplayName)&&(identical(other.requiresPickup, requiresPickup) || other.requiresPickup == requiresPickup)&&(identical(other.specialInstructions, specialInstructions) || other.specialInstructions == specialInstructions)&&(identical(other.contactPerson, contactPerson) || other.contactPerson == contactPerson)&&(identical(other.contactPhone, contactPhone) || other.contactPhone == contactPhone)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.restaurantId, restaurantId) || other.restaurantId == restaurantId)&&(identical(other.restaurantName, restaurantName) || other.restaurantName == restaurantName)&&(identical(other.restaurantAddress, restaurantAddress) || other.restaurantAddress == restaurantAddress)&&(identical(other.restaurantPhone, restaurantPhone) || other.restaurantPhone == restaurantPhone)&&(identical(other.restaurantLatitude, restaurantLatitude) || other.restaurantLatitude == restaurantLatitude)&&(identical(other.restaurantLongitude, restaurantLongitude) || other.restaurantLongitude == restaurantLongitude)&&const DeepCollectionEquality().equals(other.images, images)&&(identical(other.reservationCount, reservationCount) || other.reservationCount == reservationCount)&&(identical(other.isExpired, isExpired) || other.isExpired == isExpired)&&(identical(other.isAvailable, isAvailable) || other.isAvailable == isAvailable));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,foodType,description,estimatedServings,expiryDateTime,status,statusDisplayName,requiresPickup,specialInstructions,contactPerson,contactPhone,createdAt,updatedAt,restaurantId,restaurantName,restaurantAddress,restaurantPhone,restaurantLatitude,restaurantLongitude,const DeepCollectionEquality().hash(images),reservationCount,isExpired,isAvailable]);

@override
String toString() {
  return 'DonationItem(id: $id, foodType: $foodType, description: $description, estimatedServings: $estimatedServings, expiryDateTime: $expiryDateTime, status: $status, statusDisplayName: $statusDisplayName, requiresPickup: $requiresPickup, specialInstructions: $specialInstructions, contactPerson: $contactPerson, contactPhone: $contactPhone, createdAt: $createdAt, updatedAt: $updatedAt, restaurantId: $restaurantId, restaurantName: $restaurantName, restaurantAddress: $restaurantAddress, restaurantPhone: $restaurantPhone, restaurantLatitude: $restaurantLatitude, restaurantLongitude: $restaurantLongitude, images: $images, reservationCount: $reservationCount, isExpired: $isExpired, isAvailable: $isAvailable)';
}


}

/// @nodoc
abstract mixin class $DonationItemCopyWith<$Res>  {
  factory $DonationItemCopyWith(DonationItem value, $Res Function(DonationItem) _then) = _$DonationItemCopyWithImpl;
@useResult
$Res call({
 int? id, String? foodType, String? description, int? estimatedServings, String? expiryDateTime, int? status, String? statusDisplayName, bool? requiresPickup, String? specialInstructions, String? contactPerson, String? contactPhone, String? createdAt, String? updatedAt, int? restaurantId, String? restaurantName, String? restaurantAddress, String? restaurantPhone, double? restaurantLatitude, double? restaurantLongitude, List<DonationImage>? images, int? reservationCount, bool? isExpired, bool? isAvailable
});




}
/// @nodoc
class _$DonationItemCopyWithImpl<$Res>
    implements $DonationItemCopyWith<$Res> {
  _$DonationItemCopyWithImpl(this._self, this._then);

  final DonationItem _self;
  final $Res Function(DonationItem) _then;

/// Create a copy of DonationItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? foodType = freezed,Object? description = freezed,Object? estimatedServings = freezed,Object? expiryDateTime = freezed,Object? status = freezed,Object? statusDisplayName = freezed,Object? requiresPickup = freezed,Object? specialInstructions = freezed,Object? contactPerson = freezed,Object? contactPhone = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? restaurantId = freezed,Object? restaurantName = freezed,Object? restaurantAddress = freezed,Object? restaurantPhone = freezed,Object? restaurantLatitude = freezed,Object? restaurantLongitude = freezed,Object? images = freezed,Object? reservationCount = freezed,Object? isExpired = freezed,Object? isAvailable = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,foodType: freezed == foodType ? _self.foodType : foodType // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,estimatedServings: freezed == estimatedServings ? _self.estimatedServings : estimatedServings // ignore: cast_nullable_to_non_nullable
as int?,expiryDateTime: freezed == expiryDateTime ? _self.expiryDateTime : expiryDateTime // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,statusDisplayName: freezed == statusDisplayName ? _self.statusDisplayName : statusDisplayName // ignore: cast_nullable_to_non_nullable
as String?,requiresPickup: freezed == requiresPickup ? _self.requiresPickup : requiresPickup // ignore: cast_nullable_to_non_nullable
as bool?,specialInstructions: freezed == specialInstructions ? _self.specialInstructions : specialInstructions // ignore: cast_nullable_to_non_nullable
as String?,contactPerson: freezed == contactPerson ? _self.contactPerson : contactPerson // ignore: cast_nullable_to_non_nullable
as String?,contactPhone: freezed == contactPhone ? _self.contactPhone : contactPhone // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,restaurantId: freezed == restaurantId ? _self.restaurantId : restaurantId // ignore: cast_nullable_to_non_nullable
as int?,restaurantName: freezed == restaurantName ? _self.restaurantName : restaurantName // ignore: cast_nullable_to_non_nullable
as String?,restaurantAddress: freezed == restaurantAddress ? _self.restaurantAddress : restaurantAddress // ignore: cast_nullable_to_non_nullable
as String?,restaurantPhone: freezed == restaurantPhone ? _self.restaurantPhone : restaurantPhone // ignore: cast_nullable_to_non_nullable
as String?,restaurantLatitude: freezed == restaurantLatitude ? _self.restaurantLatitude : restaurantLatitude // ignore: cast_nullable_to_non_nullable
as double?,restaurantLongitude: freezed == restaurantLongitude ? _self.restaurantLongitude : restaurantLongitude // ignore: cast_nullable_to_non_nullable
as double?,images: freezed == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<DonationImage>?,reservationCount: freezed == reservationCount ? _self.reservationCount : reservationCount // ignore: cast_nullable_to_non_nullable
as int?,isExpired: freezed == isExpired ? _self.isExpired : isExpired // ignore: cast_nullable_to_non_nullable
as bool?,isAvailable: freezed == isAvailable ? _self.isAvailable : isAvailable // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [DonationItem].
extension DonationItemPatterns on DonationItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DonationItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DonationItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DonationItem value)  $default,){
final _that = this;
switch (_that) {
case _DonationItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DonationItem value)?  $default,){
final _that = this;
switch (_that) {
case _DonationItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? foodType,  String? description,  int? estimatedServings,  String? expiryDateTime,  int? status,  String? statusDisplayName,  bool? requiresPickup,  String? specialInstructions,  String? contactPerson,  String? contactPhone,  String? createdAt,  String? updatedAt,  int? restaurantId,  String? restaurantName,  String? restaurantAddress,  String? restaurantPhone,  double? restaurantLatitude,  double? restaurantLongitude,  List<DonationImage>? images,  int? reservationCount,  bool? isExpired,  bool? isAvailable)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DonationItem() when $default != null:
return $default(_that.id,_that.foodType,_that.description,_that.estimatedServings,_that.expiryDateTime,_that.status,_that.statusDisplayName,_that.requiresPickup,_that.specialInstructions,_that.contactPerson,_that.contactPhone,_that.createdAt,_that.updatedAt,_that.restaurantId,_that.restaurantName,_that.restaurantAddress,_that.restaurantPhone,_that.restaurantLatitude,_that.restaurantLongitude,_that.images,_that.reservationCount,_that.isExpired,_that.isAvailable);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? foodType,  String? description,  int? estimatedServings,  String? expiryDateTime,  int? status,  String? statusDisplayName,  bool? requiresPickup,  String? specialInstructions,  String? contactPerson,  String? contactPhone,  String? createdAt,  String? updatedAt,  int? restaurantId,  String? restaurantName,  String? restaurantAddress,  String? restaurantPhone,  double? restaurantLatitude,  double? restaurantLongitude,  List<DonationImage>? images,  int? reservationCount,  bool? isExpired,  bool? isAvailable)  $default,) {final _that = this;
switch (_that) {
case _DonationItem():
return $default(_that.id,_that.foodType,_that.description,_that.estimatedServings,_that.expiryDateTime,_that.status,_that.statusDisplayName,_that.requiresPickup,_that.specialInstructions,_that.contactPerson,_that.contactPhone,_that.createdAt,_that.updatedAt,_that.restaurantId,_that.restaurantName,_that.restaurantAddress,_that.restaurantPhone,_that.restaurantLatitude,_that.restaurantLongitude,_that.images,_that.reservationCount,_that.isExpired,_that.isAvailable);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? foodType,  String? description,  int? estimatedServings,  String? expiryDateTime,  int? status,  String? statusDisplayName,  bool? requiresPickup,  String? specialInstructions,  String? contactPerson,  String? contactPhone,  String? createdAt,  String? updatedAt,  int? restaurantId,  String? restaurantName,  String? restaurantAddress,  String? restaurantPhone,  double? restaurantLatitude,  double? restaurantLongitude,  List<DonationImage>? images,  int? reservationCount,  bool? isExpired,  bool? isAvailable)?  $default,) {final _that = this;
switch (_that) {
case _DonationItem() when $default != null:
return $default(_that.id,_that.foodType,_that.description,_that.estimatedServings,_that.expiryDateTime,_that.status,_that.statusDisplayName,_that.requiresPickup,_that.specialInstructions,_that.contactPerson,_that.contactPhone,_that.createdAt,_that.updatedAt,_that.restaurantId,_that.restaurantName,_that.restaurantAddress,_that.restaurantPhone,_that.restaurantLatitude,_that.restaurantLongitude,_that.images,_that.reservationCount,_that.isExpired,_that.isAvailable);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DonationItem implements DonationItem {
  const _DonationItem({this.id, this.foodType, this.description, this.estimatedServings, this.expiryDateTime, this.status, this.statusDisplayName, this.requiresPickup, this.specialInstructions, this.contactPerson, this.contactPhone, this.createdAt, this.updatedAt, this.restaurantId, this.restaurantName, this.restaurantAddress, this.restaurantPhone, this.restaurantLatitude, this.restaurantLongitude, final  List<DonationImage>? images, this.reservationCount, this.isExpired, this.isAvailable}): _images = images;
  factory _DonationItem.fromJson(Map<String, dynamic> json) => _$DonationItemFromJson(json);

@override final  int? id;
@override final  String? foodType;
@override final  String? description;
@override final  int? estimatedServings;
@override final  String? expiryDateTime;
@override final  int? status;
@override final  String? statusDisplayName;
@override final  bool? requiresPickup;
@override final  String? specialInstructions;
@override final  String? contactPerson;
@override final  String? contactPhone;
@override final  String? createdAt;
@override final  String? updatedAt;
@override final  int? restaurantId;
@override final  String? restaurantName;
@override final  String? restaurantAddress;
@override final  String? restaurantPhone;
@override final  double? restaurantLatitude;
@override final  double? restaurantLongitude;
 final  List<DonationImage>? _images;
@override List<DonationImage>? get images {
  final value = _images;
  if (value == null) return null;
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  int? reservationCount;
@override final  bool? isExpired;
@override final  bool? isAvailable;

/// Create a copy of DonationItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DonationItemCopyWith<_DonationItem> get copyWith => __$DonationItemCopyWithImpl<_DonationItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DonationItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DonationItem&&(identical(other.id, id) || other.id == id)&&(identical(other.foodType, foodType) || other.foodType == foodType)&&(identical(other.description, description) || other.description == description)&&(identical(other.estimatedServings, estimatedServings) || other.estimatedServings == estimatedServings)&&(identical(other.expiryDateTime, expiryDateTime) || other.expiryDateTime == expiryDateTime)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusDisplayName, statusDisplayName) || other.statusDisplayName == statusDisplayName)&&(identical(other.requiresPickup, requiresPickup) || other.requiresPickup == requiresPickup)&&(identical(other.specialInstructions, specialInstructions) || other.specialInstructions == specialInstructions)&&(identical(other.contactPerson, contactPerson) || other.contactPerson == contactPerson)&&(identical(other.contactPhone, contactPhone) || other.contactPhone == contactPhone)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.restaurantId, restaurantId) || other.restaurantId == restaurantId)&&(identical(other.restaurantName, restaurantName) || other.restaurantName == restaurantName)&&(identical(other.restaurantAddress, restaurantAddress) || other.restaurantAddress == restaurantAddress)&&(identical(other.restaurantPhone, restaurantPhone) || other.restaurantPhone == restaurantPhone)&&(identical(other.restaurantLatitude, restaurantLatitude) || other.restaurantLatitude == restaurantLatitude)&&(identical(other.restaurantLongitude, restaurantLongitude) || other.restaurantLongitude == restaurantLongitude)&&const DeepCollectionEquality().equals(other._images, _images)&&(identical(other.reservationCount, reservationCount) || other.reservationCount == reservationCount)&&(identical(other.isExpired, isExpired) || other.isExpired == isExpired)&&(identical(other.isAvailable, isAvailable) || other.isAvailable == isAvailable));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,foodType,description,estimatedServings,expiryDateTime,status,statusDisplayName,requiresPickup,specialInstructions,contactPerson,contactPhone,createdAt,updatedAt,restaurantId,restaurantName,restaurantAddress,restaurantPhone,restaurantLatitude,restaurantLongitude,const DeepCollectionEquality().hash(_images),reservationCount,isExpired,isAvailable]);

@override
String toString() {
  return 'DonationItem(id: $id, foodType: $foodType, description: $description, estimatedServings: $estimatedServings, expiryDateTime: $expiryDateTime, status: $status, statusDisplayName: $statusDisplayName, requiresPickup: $requiresPickup, specialInstructions: $specialInstructions, contactPerson: $contactPerson, contactPhone: $contactPhone, createdAt: $createdAt, updatedAt: $updatedAt, restaurantId: $restaurantId, restaurantName: $restaurantName, restaurantAddress: $restaurantAddress, restaurantPhone: $restaurantPhone, restaurantLatitude: $restaurantLatitude, restaurantLongitude: $restaurantLongitude, images: $images, reservationCount: $reservationCount, isExpired: $isExpired, isAvailable: $isAvailable)';
}


}

/// @nodoc
abstract mixin class _$DonationItemCopyWith<$Res> implements $DonationItemCopyWith<$Res> {
  factory _$DonationItemCopyWith(_DonationItem value, $Res Function(_DonationItem) _then) = __$DonationItemCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? foodType, String? description, int? estimatedServings, String? expiryDateTime, int? status, String? statusDisplayName, bool? requiresPickup, String? specialInstructions, String? contactPerson, String? contactPhone, String? createdAt, String? updatedAt, int? restaurantId, String? restaurantName, String? restaurantAddress, String? restaurantPhone, double? restaurantLatitude, double? restaurantLongitude, List<DonationImage>? images, int? reservationCount, bool? isExpired, bool? isAvailable
});




}
/// @nodoc
class __$DonationItemCopyWithImpl<$Res>
    implements _$DonationItemCopyWith<$Res> {
  __$DonationItemCopyWithImpl(this._self, this._then);

  final _DonationItem _self;
  final $Res Function(_DonationItem) _then;

/// Create a copy of DonationItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? foodType = freezed,Object? description = freezed,Object? estimatedServings = freezed,Object? expiryDateTime = freezed,Object? status = freezed,Object? statusDisplayName = freezed,Object? requiresPickup = freezed,Object? specialInstructions = freezed,Object? contactPerson = freezed,Object? contactPhone = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? restaurantId = freezed,Object? restaurantName = freezed,Object? restaurantAddress = freezed,Object? restaurantPhone = freezed,Object? restaurantLatitude = freezed,Object? restaurantLongitude = freezed,Object? images = freezed,Object? reservationCount = freezed,Object? isExpired = freezed,Object? isAvailable = freezed,}) {
  return _then(_DonationItem(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,foodType: freezed == foodType ? _self.foodType : foodType // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,estimatedServings: freezed == estimatedServings ? _self.estimatedServings : estimatedServings // ignore: cast_nullable_to_non_nullable
as int?,expiryDateTime: freezed == expiryDateTime ? _self.expiryDateTime : expiryDateTime // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,statusDisplayName: freezed == statusDisplayName ? _self.statusDisplayName : statusDisplayName // ignore: cast_nullable_to_non_nullable
as String?,requiresPickup: freezed == requiresPickup ? _self.requiresPickup : requiresPickup // ignore: cast_nullable_to_non_nullable
as bool?,specialInstructions: freezed == specialInstructions ? _self.specialInstructions : specialInstructions // ignore: cast_nullable_to_non_nullable
as String?,contactPerson: freezed == contactPerson ? _self.contactPerson : contactPerson // ignore: cast_nullable_to_non_nullable
as String?,contactPhone: freezed == contactPhone ? _self.contactPhone : contactPhone // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,restaurantId: freezed == restaurantId ? _self.restaurantId : restaurantId // ignore: cast_nullable_to_non_nullable
as int?,restaurantName: freezed == restaurantName ? _self.restaurantName : restaurantName // ignore: cast_nullable_to_non_nullable
as String?,restaurantAddress: freezed == restaurantAddress ? _self.restaurantAddress : restaurantAddress // ignore: cast_nullable_to_non_nullable
as String?,restaurantPhone: freezed == restaurantPhone ? _self.restaurantPhone : restaurantPhone // ignore: cast_nullable_to_non_nullable
as String?,restaurantLatitude: freezed == restaurantLatitude ? _self.restaurantLatitude : restaurantLatitude // ignore: cast_nullable_to_non_nullable
as double?,restaurantLongitude: freezed == restaurantLongitude ? _self.restaurantLongitude : restaurantLongitude // ignore: cast_nullable_to_non_nullable
as double?,images: freezed == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<DonationImage>?,reservationCount: freezed == reservationCount ? _self.reservationCount : reservationCount // ignore: cast_nullable_to_non_nullable
as int?,isExpired: freezed == isExpired ? _self.isExpired : isExpired // ignore: cast_nullable_to_non_nullable
as bool?,isAvailable: freezed == isAvailable ? _self.isAvailable : isAvailable // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
