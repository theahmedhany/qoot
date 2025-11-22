// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'charity_reservation_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharityReservationResponse _$CharityReservationResponseFromJson(
  Map<String, dynamic> json,
) => CharityReservationResponse(
  isSuccess: json['isSuccess'] as bool,
  message: json['message'] as String,
  data: json['data'] == null
      ? null
      : CharityReservationData.fromJson(json['data'] as Map<String, dynamic>),
  errors: json['errors'] as List<dynamic>?,
);

Map<String, dynamic> _$CharityReservationResponseToJson(
  CharityReservationResponse instance,
) => <String, dynamic>{
  'isSuccess': instance.isSuccess,
  'message': instance.message,
  'data': instance.data,
  'errors': instance.errors,
};

CharityReservationData _$CharityReservationDataFromJson(
  Map<String, dynamic> json,
) => CharityReservationData(
  items: (json['items'] as List<dynamic>)
      .map((e) => CharityReservationItem.fromJson(e as Map<String, dynamic>))
      .toList(),
  totalCount: (json['totalCount'] as num).toInt(),
  pageNumber: (json['pageNumber'] as num).toInt(),
  pageSize: (json['pageSize'] as num).toInt(),
  totalPages: (json['totalPages'] as num).toInt(),
  hasPreviousPage: json['hasPreviousPage'] as bool,
  hasNextPage: json['hasNextPage'] as bool,
);

Map<String, dynamic> _$CharityReservationDataToJson(
  CharityReservationData instance,
) => <String, dynamic>{
  'items': instance.items,
  'totalCount': instance.totalCount,
  'pageNumber': instance.pageNumber,
  'pageSize': instance.pageSize,
  'totalPages': instance.totalPages,
  'hasPreviousPage': instance.hasPreviousPage,
  'hasNextPage': instance.hasNextPage,
};

CharityReservationItem _$CharityReservationItemFromJson(
  Map<String, dynamic> json,
) => CharityReservationItem(
  id: (json['id'] as num).toInt(),
  reservationTime: json['reservationTime'] as String,
  status: (json['status'] as num).toInt(),
  statusDisplayName: json['statusDisplayName'] as String,
  notes: json['notes'] as String?,
  pickupTime: json['pickupTime'] as String?,
  pickupPersonName: json['pickupPersonName'] as String?,
  pickupPersonPhone: json['pickupPersonPhone'] as String?,
  donationId: (json['donationId'] as num).toInt(),
  charityId: (json['charityId'] as num).toInt(),
  donationFoodType: json['donationFoodType'] as String,
  donationExpiry: json['donationExpiry'] as String,
  restaurantId: (json['restaurantId'] as num).toInt(),
  restaurantName: json['restaurantName'] as String,
  restaurantPhone: json['restaurantPhone'] as String,
  restaurantAddress: json['restaurantAddress'] as String,
);

Map<String, dynamic> _$CharityReservationItemToJson(
  CharityReservationItem instance,
) => <String, dynamic>{
  'id': instance.id,
  'reservationTime': instance.reservationTime,
  'status': instance.status,
  'statusDisplayName': instance.statusDisplayName,
  'notes': instance.notes,
  'pickupTime': instance.pickupTime,
  'pickupPersonName': instance.pickupPersonName,
  'pickupPersonPhone': instance.pickupPersonPhone,
  'donationId': instance.donationId,
  'charityId': instance.charityId,
  'donationFoodType': instance.donationFoodType,
  'donationExpiry': instance.donationExpiry,
  'restaurantId': instance.restaurantId,
  'restaurantName': instance.restaurantName,
  'restaurantPhone': instance.restaurantPhone,
  'restaurantAddress': instance.restaurantAddress,
};
