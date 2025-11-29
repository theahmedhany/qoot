import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qoot/core/common/widgets/q_custom_button.dart';
import 'package:qoot/core/di/service_locator.dart';
import 'package:qoot/core/helpers/extensions.dart';
import 'package:qoot/core/helpers/spacing.dart';
import 'package:qoot/core/routing/routes.dart';
import 'package:qoot/core/services/storage/auth_local_storage.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:qoot/features/auth/login/presentation/widgets/custom_auth_appbar.dart';

import '../../../../../core/common/widgets/custom_loading.dart';
import '../../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../../core/utils/app_animations.dart';
import '../../../../../core/utils/app_icons.dart';
import '../../../../../generated/l10n.dart';
import '../../../auth_choice/presentation/widgets/ellipsed_text.dart';
import '../logic/cubit/confirm_email_cubit.dart';
import '../logic/cubit/confirm_email_state.dart';

class ConfirmEmailScreen extends StatefulWidget {
  final String email;
  final String token;

  const ConfirmEmailScreen({
    super.key,
    required this.email,
    required this.token,
  });

  @override
  State<ConfirmEmailScreen> createState() => _ConfirmEmailScreenState();
}

class _ConfirmEmailScreenState extends State<ConfirmEmailScreen> {
  late final ConfirmEmailCubit _cubit;

  @override
  void initState() {
    super.initState();
    _cubit = getIt<ConfirmEmailCubit>();
    _cubit.confirmEmail(widget.email, widget.token);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConfirmEmailCubit, ConfirmEmailState>(
      bloc: _cubit,
      builder: (context, state) {
        return Scaffold(
          appBar: CustomAuthAppBar(
            title: S.of(context).confirmEmail,
            showBackButton: false,
          ),
          body: Center(
            child: state.when(
              loading: () => const CustomLoading(
                size: 100,
                loadingAnimation: AppAnimations.animationsSandyLoading,
              ),
              success: (response) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    AppIcons.iconsCongratsCheck,
                    width: 185.w,
                    height: 180.h,
                  ),
                  verticalSpace(16.h),
                  Text(response.message, style: const TextStyle(fontSize: 18)),
                  verticalSpace(32.h),
                  QCustomButton(
                    onTap: () {
                      context.pushNamedAndRemoveUntil(
                        Routes.onboardingScreen,
                        predicate: (route) => false,
                      );
                    },
                    height: 52.h,
                    width: 328.w,
                    child: EllipsedText(
                      text: "Start Now",
                      textStyle: AppTextStyles.font16SemiBold.copyWith(
                        color: context.customAppColors.white,
                      ),
                    ),
                  ),
                ],
              ),
              failure: (msg) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    AppIcons.iconsErrorCheck,
                    width: 185.w,
                    height: 180.h,
                  ),
                  verticalSpace(16.h),
                  Text(msg, style: const TextStyle(fontSize: 18)),
                  verticalSpace(32.h),
                  const Text("you can recive new message by login again"),
                  verticalSpace(32.h),
                  TextButton(
                    onPressed: () {
                      AuthLocalStorage().resetCurrentUserData();
                      context.pushNamed(Routes.onboardingScreen);
                    },
                    child: Text(
                      "Login Again",
                      style: AppTextStyles.font16SemiBold.copyWith(
                        color: context.customAppColors.error500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
