import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qoot/core/network/api_result.dart';
import '../../../data/repositories/send_email_confirmation_repository.dart';
import 'send_email_confirmation_state.dart';

class SendEmailConfirmationCubit extends Cubit<SendEmailConfirmationState> {
  final SendEmailConfirmationRepository repository;

  SendEmailConfirmationCubit(this.repository) : super(const SendEmailConfirmationState.initial());

  Future<bool> sendEmailConfirmation(String email) async {
    emit(const SendEmailConfirmationState.loading());

    final result = await repository.sendEmailConfirmation(email);
    bool check = false;
    result.when(
      success: (data) {
        emit(SendEmailConfirmationState.success(data));
        check = true;
      },
      failure: (error) {
        emit(SendEmailConfirmationState.failure(error.toString()));
        check = false;
      },
    );
    return check;
  }
}
