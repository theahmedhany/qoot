import 'dart:io';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qoot/core/network/api_result.dart';
import '../../../domain/repositories/register_charity_repository.dart';
import 'register_charity_state.dart';

class RegisterCharityCubit extends Cubit<RegisterCharityState> {
  final RegisterCharityRepository repository;

  RegisterCharityCubit(this.repository) : super(const RegisterCharityState.initial());

  Future<void> registerCharity({
    required String name,
    required String description,
    required String address,
    required double latitude,
    required double longitude,
    required int capacity,
    required int type,
    required File licenseDocument,
    required File proofDocument,
  }) async {
    emit(const RegisterCharityState.loading());

    final result = await repository.registerCharity(
      name: name,
      description: description,
      address: address,
      latitude: latitude,
      longitude: longitude,
      capacity: capacity,
      type: type,
      licenseDocument: licenseDocument,
      proofDocument: proofDocument,
    );

    result.when(
      success: (response) {
        emit(RegisterCharityState.success(response));
      },
      failure: (failure) {
        emit(RegisterCharityState.failure(failure.toString()));
      },
    );
  }
}
