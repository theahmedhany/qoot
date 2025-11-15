import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/repository/reset_password_repository.dart';
import 'reset_password_state.dart';
import 'package:qoot/core/di/service_locator.dart';

class ResetPasswordCubit extends Cubit<ResetPasswordState> {
  ResetPasswordCubit() : super(const ResetPasswordState.initial());

  final ResetPasswordRepository _repo = getIt<ResetPasswordRepository>();

  Future<void> resetPassword({
    required String email,
    required String token,
    required String newPassword,
    required String confirmPassword,
  }) async {
    emit(const ResetPasswordState.loading());
    final decodedToken = Uri.encodeComponent(token);
    final response = await _repo.resetPassword(
      email: email,
      token: decodedToken,
      newPassword: newPassword,
      confirmPassword: confirmPassword,
    );

    if (response.isSuccess) {
      emit(ResetPasswordState.success(response));
    } else {
      emit(ResetPasswordState.failure(response.message));
    }
  }
}
