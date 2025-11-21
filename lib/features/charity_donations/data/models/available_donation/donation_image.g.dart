// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'donation_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DonationImage _$DonationImageFromJson(Map<String, dynamic> json) =>
    _DonationImage(
      id: (json['id'] as num?)?.toInt(),
      imagePath: json['imagePath'] as String?,
      isPrimary: json['isPrimary'] as bool?,
      donationId: (json['donationId'] as num?)?.toInt(),
      createdAt: json['createdAt'] as String?,
    );

Map<String, dynamic> _$DonationImageToJson(_DonationImage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imagePath': instance.imagePath,
      'isPrimary': instance.isPrimary,
      'donationId': instance.donationId,
      'createdAt': instance.createdAt,
    };
