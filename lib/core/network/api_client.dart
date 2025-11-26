import 'package:dio/dio.dart';
import 'package:qoot/core/models/base_response.dart';
import 'package:qoot/features/all_charities/data/models/all_charities_model.dart';
import 'package:qoot/features/all_restaurants/data/models/near_by/near_by_restaurants_response.dart';
import 'package:qoot/features/charity_info/data/models/my_charity/charity_response.dart';
import 'package:qoot/features/create_donation/data/models/create_donation_response.dart';
import 'package:qoot/features/donation_details/data/models/create_reservetion/create_reservation_request.dart';
import 'package:qoot/features/donation_details/data/models/create_reservetion/create_reservation_response.dart';
import 'package:qoot/features/donation_details/data/models/donation_details/donation_details_response.dart';
import 'package:qoot/features/restaurant_donation/data/models/donation_history_model.dart';
import 'package:qoot/features/restaurant_home/data/models/restaurant_urgent_donation_model.dart';
import 'package:qoot/features/restaurant_profile_info/data/model/update_restaurant_request_body.dart';
import 'package:retrofit/retrofit.dart';

import '../../features/all_restaurants/data/models/restaurants_with_donation/restaurants_with_donations_response.dart';
import '../../features/auth/confirm_email/data/models/confirm_email_response.dart';
import '../../features/auth/login/data/model/login_response_model.dart';
import '../../features/auth/login/data/model/my_charity_response.dart';
import '../../features/auth/login/data/model/my_restaurant_response.dart';
import '../../features/auth/register_account/data/models/register_response_model.dart';
import '../../features/auth/register_charity/data/model/register_charity_response.dart';
import '../../features/auth/register_restaurant/data/models/register_restaurant_response.dart';
import '../../features/auth/reset_password/data/models/reset_password_response.dart';
import '../../features/auth/send_email_confirmation/data/models/send_email_confirmation_response.dart';
import '../../features/auth/send_email_reset_password/data/models/forget_password_response.dart';
import '../../features/charity_donations/data/models/available_donation/available_donation_model.dart';
import '../../features/charity_info/data/models/charity_types/charity_types_model.dart';
import '../../features/charity_info/data/models/update_charity/update_charity_request.dart';
import '../../features/charity_reservations/data/models/charity_reservation/charity_reservation_response.dart';
import '../../features/charity_reservations/data/models/donation_images/donation_images_response.dart';
import '../constants/api_constants.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  // register account
  @POST(ApiConstants.register)
  Future<RegisterResponseModel> register(@Body() Map<String, dynamic> body);

  // login
  @POST(ApiConstants.login)
  Future<LoginResponseModel> login(@Body() Map<String, dynamic> body);

  // send confirmation email
  @POST(ApiConstants.sendEmailConfirmation)
  Future<SendEmailConfirmationResponse> sendEmailConfirmation(
    @Query('email') String email,
  );

  //confirm email
  @POST(ApiConstants.confirmEmail)
  Future<ConfirmEmailResponse> confirmEmail(
    @Query('email') String email,
    @Query('token') String token,
  );

  //forget password
  @POST(ApiConstants.forgetPassword)
  Future<ForgetPasswordResponse> forgetPassword(
    @Body() Map<String, dynamic> body,
  );

  // reset password
  @POST(ApiConstants.resetPassword)
  Future<ResetPasswordResponse> resetPassword(
    @Body() Map<String, dynamic> body,
  );

  // charity register
  @MultiPart()
  @POST(ApiConstants.registerCharity)
  Future<RegisterCharityResponse> registerCharity({
    @Part(name: 'Name') required String name,
    @Part(name: 'Description') required String description,
    @Part(name: 'Address') required String address,
    @Part(name: 'Latitude') required double latitude,
    @Part(name: 'Longitude') required double longitude,
    @Part(name: 'Capacity') required int capacity,
    @Part(name: 'Type') required int type,
    @Part(name: 'LicenseDocument') required MultipartFile licenseDocument,
    @Part(name: 'ProofDocument') required MultipartFile proofDocument,
  });

  // get my charity
  @GET(ApiConstants.getMyCharity)
  Future<MyCharityResponse> getMyCharity();

  // my restaurant
  @GET(ApiConstants.getMyRestaurant)
  Future<MyRestaurantResponse> getMyRestaurant();

  // restaurant register
  @MultiPart()
  @POST(ApiConstants.registerRestaurant)
  Future<RegisterRestaurantResponse> registerRestaurant({
    @Part(name: 'Name') required String name,
    @Part(name: 'Description') required String description,
    @Part(name: 'Address') required String address,
    @Part(name: 'Latitude') required double latitude,
    @Part(name: 'Longitude') required double longitude,
    @Part(name: 'LicenseDocument') required MultipartFile licenseDocument,
    @Part(name: 'CommercialRegister') required MultipartFile commercialRegister,
  });

  /// [CHARITY]
  @GET(ApiConstants.getNearbyCharities)
  Future<BaseResponse<PaginatedData<RestaurantUrgentDonationModel>>>
  getNearbyCharities({
    @Query('radiusKm') double radiusKm = 100,
    @Query('pageSize') int pageSize = 10,
    @Query('pageNumber') int pageNumber = 1,
  });
  // get charity info
  @GET(ApiConstants.getMyCharity)
  Future<CharityResponse> getCharityInfo();

  // update charity
  @PUT(ApiConstants.updateChairtyInfo)
  Future<CharityResponse> updateCharity(
    @Body() UpdateCharityRequest body,
  );

  // delete charity
  @DELETE(ApiConstants.getMyCharity)
  Future<CharityResponse> deleteCharity();

  // available donations
  @GET(ApiConstants.availableDonations)
  Future<AvailableDonationsResponse> getAvailableDonations();

  // charity types
  @GET(ApiConstants.charityTypes)
  Future<CharityTypesResponse> getCharityTypes();

  // charity reservations
  @GET(ApiConstants.charityReservations)
  Future<CharityReservationResponse> getCharityReservations();

  /// [DONATION]
  @GET(ApiConstants.getRestaurantDonationHistory)
  Future<BaseResponse<PaginatedData<DonationHistoryModel>>> getDonationHistory({
    @Query('pageSize') required int pageSize,
    @Query('pageNumber') required int pageNumber,
  });

  // All Charities API
  @GET(ApiConstants.allCharities)
  Future<AllCharitiesModel> getAllCharities({
    @Query('radiusKm') double radiusKm = 500,
    @Query('pageSize') int pageSize = 10,
    @Query('pageNumber') int pageNumber = 1,
  });

  // Create Donation API
  @POST(ApiConstants.createDonation)
  @MultiPart()
  Future<CreateDonationResponse> createDonation(@Body() FormData formData);

  // donation images
  @GET(ApiConstants.donationImages)
  Future<DonationImagesResponse> getDonationImages(
    @Path('donationId') String donationId,
  );

  // donation details
  @GET(ApiConstants.donationDetails)
  Future<DonationDetailsResponse> getDonationDetails(
    @Path('donationId') String donationId,
  );

  /// [Restaurant]
  @PUT(ApiConstants.getMyRestaurant)
  Future<MyRestaurantResponse> updateMyRestaurant(
    @Body() UpdateRestaurantRequestBody body,
  );

  @DELETE(ApiConstants.getMyRestaurant)
  Future<BaseResponse<bool>> deleteMyRestaurant();

  // get restaurants with donations
  @GET(ApiConstants.restaurantWithDonations)
  Future<RestaurantsWithDonationsResponse> getRestaurantsWithDonations();

  // get nearby restaurants
  @GET(ApiConstants.getNearbyRestaurants)
  Future<NearbyRestaurantsResponse> getNearbyRestaurants({
    @Query('latitude') required double latitude,
    @Query('longitude') required double longitude,
    @Query('radiusKm') double radiusKm = 100,
    @Query('pageSize') int pageSize = 10,
    @Query('pageNumber') int pageNumber = 1,
  });

  ///[Reservation]
  // create reservation
  @POST(ApiConstants.createReservation)
  Future<CreateReservationResponse> createReservation(
    @Body() CreateReservationRequest body,
  );
}
