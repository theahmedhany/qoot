import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/onboarding_local_services.dart';
import 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(const OnboardingState.initial()) {
    checkOnboardingStatus();
  }

  /// Check whether onboarding is already completed or not
  Future<void> checkOnboardingStatus() async {
    final completed = await OnboardingLocalServices.isOnboardingCompleted();

    if (completed == true) {
      emit(const OnboardingState.onboardingCompleted());
    } else {
      emit(const OnboardingState.onboardingUnCompleted());
    }
  }

  /// Mark onboarding as completed
  Future<void> completeOnboarding() async {
    await OnboardingLocalServices.completeOnboarding();
    await checkOnboardingStatus();
  }
}
