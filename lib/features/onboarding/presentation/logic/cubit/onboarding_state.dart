import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_state.freezed.dart';

@freezed
class OnboardingState with _$OnboardingState {
  const factory OnboardingState.initial() = _Initial;
  const factory OnboardingState.onboardingCompleted() = _OnboardingCompleted;
  const factory OnboardingState.onboardingUnCompleted() = _OnboardingUnCompleted;
}
