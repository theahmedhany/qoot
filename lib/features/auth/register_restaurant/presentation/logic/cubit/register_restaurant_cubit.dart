import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qoot/core/network/api_result.dart';
import 'register_restaurant_state.dart';
import '../../../domain/usecases/register_restaurant_usecase.dart';

class RegisterRestaurantCubit extends Cubit<RegisterRestaurantState> {
  final RegisterRestaurantUseCase _registerRestaurantUseCase;

  RegisterRestaurantCubit(this._registerRestaurantUseCase)
    : super(const RegisterRestaurantState.initial());

  Future<void> registerRestaurant({
    required String name,
    required String description,
    required String address,
    required double latitude,
    required double longitude,
    required File licenseDocument,
    required File commercialRegister,
  }) async {
    emit(const RegisterRestaurantState.loading());

    final result = await _registerRestaurantUseCase.call(
      name: name,
      description: description,
      address: address,
      latitude: latitude,
      longitude: longitude,
      licenseDocument: licenseDocument,
      commercialRegister: commercialRegister,
    );

    result.when(
      success: (data) => emit(RegisterRestaurantState.success(data)),
      failure: (error) => emit(RegisterRestaurantState.failure(error.toString())),
    );
  }
}
