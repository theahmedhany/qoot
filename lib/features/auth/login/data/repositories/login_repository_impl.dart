import 'package:qoot/core/network/api_client.dart';
import 'package:qoot/core/network/api_handler.dart';
import 'package:qoot/core/network/api_result.dart';
import 'package:qoot/core/services/storage/auth_local_storage.dart';
import 'package:qoot/core/services/storage/charity_local_storage.dart';
import 'package:qoot/core/services/storage/restaurant_local_storage.dart';

import '../../../../../core/di/service_locator.dart';
import '../../domain/repositories/login_repository.dart';
import '../../domain/repositories/my_charity_repository.dart';
import '../../domain/repositories/my_restaurant_repository.dart';
import '../../presentation/controllers/my_charity_controller.dart';
import '../../presentation/controllers/my_restaurant_controller.dart';
import '../model/login_response_model.dart';

class LoginRepositoryImpl implements LoginRepository {
  final ApiHandler _apiHandler;
  final ApiClient _apiClient;

  LoginRepositoryImpl(this._apiHandler, this._apiClient);

  @override
  Future<ApiResult<LoginResponseModel>> login({
    required String email,
    required String password,
  }) {
    final body = {
      'email': email,
      'password': password,
    };

    return _apiHandler.makeRequest(
      () async {
        var response = await _apiClient.login(body);

        await AuthLocalStorage().saveCurrentUserData(
          userId: response.data!.user.id,
          firstName: response.data!.user.firstName,
          lastName: response.data!.user.lastName,
          email: response.data!.user.email,
          phoneNumber: response.data!.user.phoneNumber,
          profileImage: response.data!.user.profileImage,
          role: response.data!.user.roles.first,
          isVerified: response.data!.user.isVerified,
          token: response.data!.token,
          tokenExpiry:
              DateTime.tryParse(response.data!.tokenExpiry) ?? DateTime.now(),
          isLoggedIn: true,
        );
        if (response.data!.user.roles.contains('Charity')) {
          final charityLocalStorage = CharityLocalStorage();

          final controller = MyCharityController(getIt<MyCharityRepository>());
          final charity = await controller.fetchMyCharity();
          if (charity != null) {
            await charityLocalStorage.saveCharityLocalData(
              id: charity.charityData['id'],
              name: charity.charityData['name'],
              description: charity.charityData['description'],
              address: charity.charityData['address'],
              latitude: charity.charityData['latitude'],
              longitude: charity.charityData['longitude'],
              capacity: charity.charityData['capacity'],
              type: charity.charityData['type'],
              status: charity.charityData['status'],
              statusDisplayName: charity.charityData['statusDisplayName'],
              isActive: charity.charityData['isActive'],
              createdAt:
                  DateTime.tryParse(charity.charityData['createdAt']) ??
                  DateTime.now(),
              contactName: charity.charityData['contactName'],
              email: charity.charityData['email'],
              phoneNumber: charity.charityData['phoneNumber'],
              isRegisterCompleted: true,
            );
          } else {
            await charityLocalStorage.setCharityRegisterNotCompleted();
          }
        } else if (response.data!.user.roles.contains('Restaurant')) {
          final restaurantLocalStorage = RestaurantLocalStorage();
          final controller = MyRestaurantController(
            getIt<MyRestaurantRepository>(),
          );
          final restaurant = await controller.fetchMyRestaurant();
          if (restaurant != null) {
            await restaurantLocalStorage.saveRestaurantLocalData(
              id: restaurant.restaurantData!['id'],
              name: restaurant.restaurantData!['name'],
              description: restaurant.restaurantData!['description'],
              address: restaurant.restaurantData!['address'],
              latitude: restaurant.restaurantData!['latitude'],
              longitude: restaurant.restaurantData!['longitude'],
              status: restaurant.restaurantData!['status'],
              statusDisplayName:
                  restaurant.restaurantData!['statusDisplayName'],
              isActive: restaurant.restaurantData!['isActive'],
              createdAt:
                  DateTime.tryParse(restaurant.restaurantData!['createdAt']) ??
                  DateTime.now(),
              ownerName: restaurant.restaurantData!['ownerName'],
              email: restaurant.restaurantData!['email'],
              phoneNumber: restaurant.restaurantData!['phoneNumber'],

              isRegisterCompleted: true,
            );
          } else {
            await restaurantLocalStorage.setRestaurantRegisterNotCompleted();
          }
        }
        return response;
      },
    );
  }
}
