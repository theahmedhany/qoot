import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qoot/core/network/api_result.dart';
import 'package:qoot/core/network/network_failure.dart';
import 'package:qoot/core/services/storage/auth_local_storage.dart';

import '../../../data/models/confirm_email_response.dart';
import '../../../data/repositories/confirm_email_repository.dart';
import 'confirm_email_state.dart';

class ConfirmEmailCubit extends Cubit<ConfirmEmailState> {
  final ConfirmEmailRepository _repository;

  ConfirmEmailCubit(this._repository)
    : super(const ConfirmEmailState.loading());

  Future<void> confirmEmail(String email, String token) async {
    emit(const ConfirmEmailState.loading());
    final decodedToken = Uri.encodeComponent(token);
    final result = await _repository.confirmEmail(
      email: email,
      token: decodedToken,
    );

    result.when(
      success: (ConfirmEmailResponse response) async {
        if (response.isSuccess) {
          await AuthLocalStorage().setCurrentUserVerified();
          emit(ConfirmEmailState.success(response));
        } else {
          emit(ConfirmEmailState.failure(response.message));
        }
      },
      failure: (NetworkFailure failure) {
        final message = failure.when(
          noInternet: () => 'No internet connection',
          unauthorized: () => 'Unauthorized',
          notFound: () => 'Not found',
          serverError: (msg) => msg ?? 'Server error',
          timeout: () => 'Connection timeout',
          unknown: (msg) => msg ?? 'Unknown error',
        );
        emit(ConfirmEmailState.failure(message));
      },
    );
  }
}
