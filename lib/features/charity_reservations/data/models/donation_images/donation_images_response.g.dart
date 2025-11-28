// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'donation_images_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DonationImagesResponse _$DonationImagesResponseFromJson(
  Map<String, dynamic> json,
) => DonationImagesResponse(
  isSuccess: json['isSuccess'] as bool?,
  message: json['message'] as String?,
  data: (json['data'] as List<dynamic>?)
      ?.map((e) => DonationImageItem.fromJson(e as Map<String, dynamic>))
      .toList(),
  errors: json['errors'] as List<dynamic>?,
);

Map<String, dynamic> _$DonationImagesResponseToJson(
  DonationImagesResponse instance,
) => <String, dynamic>{
  'isSuccess': instance.isSuccess,
  'message': instance.message,
  'data': instance.data,
  'errors': instance.errors,
};

DonationImageItem _$DonationImageItemFromJson(Map<String, dynamic> json) =>
    DonationImageItem(
      id: (json['id'] as num).toInt(),
      imagePath: json['imagePath'] as String,
      isPrimary: json['isPrimary'] as bool,
      donationId: (json['donationId'] as num).toInt(),
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$DonationImageItemToJson(DonationImageItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imagePath': instance.imagePath,
      'isPrimary': instance.isPrimary,
      'donationId': instance.donationId,
      'createdAt': instance.createdAt,
    };
