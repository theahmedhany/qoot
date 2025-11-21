// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'donation_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DonationImage {

 int? get id; String? get imagePath; bool? get isPrimary; int? get donationId; String? get createdAt;
/// Create a copy of DonationImage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DonationImageCopyWith<DonationImage> get copyWith => _$DonationImageCopyWithImpl<DonationImage>(this as DonationImage, _$identity);

  /// Serializes this DonationImage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DonationImage&&(identical(other.id, id) || other.id == id)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath)&&(identical(other.isPrimary, isPrimary) || other.isPrimary == isPrimary)&&(identical(other.donationId, donationId) || other.donationId == donationId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,imagePath,isPrimary,donationId,createdAt);

@override
String toString() {
  return 'DonationImage(id: $id, imagePath: $imagePath, isPrimary: $isPrimary, donationId: $donationId, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $DonationImageCopyWith<$Res>  {
  factory $DonationImageCopyWith(DonationImage value, $Res Function(DonationImage) _then) = _$DonationImageCopyWithImpl;
@useResult
$Res call({
 int? id, String? imagePath, bool? isPrimary, int? donationId, String? createdAt
});




}
/// @nodoc
class _$DonationImageCopyWithImpl<$Res>
    implements $DonationImageCopyWith<$Res> {
  _$DonationImageCopyWithImpl(this._self, this._then);

  final DonationImage _self;
  final $Res Function(DonationImage) _then;

/// Create a copy of DonationImage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? imagePath = freezed,Object? isPrimary = freezed,Object? donationId = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,imagePath: freezed == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String?,isPrimary: freezed == isPrimary ? _self.isPrimary : isPrimary // ignore: cast_nullable_to_non_nullable
as bool?,donationId: freezed == donationId ? _self.donationId : donationId // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DonationImage].
extension DonationImagePatterns on DonationImage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DonationImage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DonationImage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DonationImage value)  $default,){
final _that = this;
switch (_that) {
case _DonationImage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DonationImage value)?  $default,){
final _that = this;
switch (_that) {
case _DonationImage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? imagePath,  bool? isPrimary,  int? donationId,  String? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DonationImage() when $default != null:
return $default(_that.id,_that.imagePath,_that.isPrimary,_that.donationId,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? imagePath,  bool? isPrimary,  int? donationId,  String? createdAt)  $default,) {final _that = this;
switch (_that) {
case _DonationImage():
return $default(_that.id,_that.imagePath,_that.isPrimary,_that.donationId,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? imagePath,  bool? isPrimary,  int? donationId,  String? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _DonationImage() when $default != null:
return $default(_that.id,_that.imagePath,_that.isPrimary,_that.donationId,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DonationImage implements DonationImage {
  const _DonationImage({this.id, this.imagePath, this.isPrimary, this.donationId, this.createdAt});
  factory _DonationImage.fromJson(Map<String, dynamic> json) => _$DonationImageFromJson(json);

@override final  int? id;
@override final  String? imagePath;
@override final  bool? isPrimary;
@override final  int? donationId;
@override final  String? createdAt;

/// Create a copy of DonationImage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DonationImageCopyWith<_DonationImage> get copyWith => __$DonationImageCopyWithImpl<_DonationImage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DonationImageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DonationImage&&(identical(other.id, id) || other.id == id)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath)&&(identical(other.isPrimary, isPrimary) || other.isPrimary == isPrimary)&&(identical(other.donationId, donationId) || other.donationId == donationId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,imagePath,isPrimary,donationId,createdAt);

@override
String toString() {
  return 'DonationImage(id: $id, imagePath: $imagePath, isPrimary: $isPrimary, donationId: $donationId, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$DonationImageCopyWith<$Res> implements $DonationImageCopyWith<$Res> {
  factory _$DonationImageCopyWith(_DonationImage value, $Res Function(_DonationImage) _then) = __$DonationImageCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? imagePath, bool? isPrimary, int? donationId, String? createdAt
});




}
/// @nodoc
class __$DonationImageCopyWithImpl<$Res>
    implements _$DonationImageCopyWith<$Res> {
  __$DonationImageCopyWithImpl(this._self, this._then);

  final _DonationImage _self;
  final $Res Function(_DonationImage) _then;

/// Create a copy of DonationImage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? imagePath = freezed,Object? isPrimary = freezed,Object? donationId = freezed,Object? createdAt = freezed,}) {
  return _then(_DonationImage(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,imagePath: freezed == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String?,isPrimary: freezed == isPrimary ? _self.isPrimary : isPrimary // ignore: cast_nullable_to_non_nullable
as bool?,donationId: freezed == donationId ? _self.donationId : donationId // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
