// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'donation_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DonationDetailsResponse _$DonationDetailsResponseFromJson(
  Map<String, dynamic> json,
) => DonationDetailsResponse(
  isSuccess: json['isSuccess'] as bool,
  message: json['message'] as String,
  data: json['data'] == null
      ? null
      : DonationDetailsData.fromJson(json['data'] as Map<String, dynamic>),
  errors: json['errors'] as List<dynamic>?,
);

Map<String, dynamic> _$DonationDetailsResponseToJson(
  DonationDetailsResponse instance,
) => <String, dynamic>{
  'isSuccess': instance.isSuccess,
  'message': instance.message,
  'data': instance.data?.toJson(),
  'errors': instance.errors,
};
