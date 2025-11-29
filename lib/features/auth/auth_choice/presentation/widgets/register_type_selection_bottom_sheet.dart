import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/common/widgets/q_custom_button.dart';
import '../../../../../core/helpers/extensions.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../../../core/utils/app_icons.dart';
import '../../../../../core/utils/enums.dart';
import '../../../../../generated/l10n.dart';
import 'register_type_card.dart';

class RegisterTypeSelectionBottomSheet extends StatefulWidget {
  const RegisterTypeSelectionBottomSheet({super.key});

  @override
  State<RegisterTypeSelectionBottomSheet> createState() =>
      _RegisterTypeSelectionBottomSheetState();
}

class _RegisterTypeSelectionBottomSheetState
    extends State<RegisterTypeSelectionBottomSheet> {
  Roles _selectedAccountType = Roles.restaurant;

  void _changeAccountType(Roles accountType) {
    setState(() {
      _selectedAccountType = accountType;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.fromLTRB(0.w, 0.h, 0.w, 34.h),
        decoration: const BoxDecoration(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            verticalSpace(4),
            Container(
              decoration: BoxDecoration(
                color: context.customAppColors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.r),
                  topRight: Radius.circular(16.r),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 8.h),
                    width: 50.w,
                    height: 4.h,
                    decoration: BoxDecoration(
                      color: context.customAppColors.grey400,
                      borderRadius: BorderRadius.circular(3.r),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 16.h,
                      bottom: 16.h,
                      left: 12.w,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.close,
                            color: context.customAppColors.neutral800,
                            size: 24.h,
                          ),
                        ),
                        horizontalSpace(12.w),
                        Text(
                          S.of(context).chooseAccountType,
                          style: AppTextStyles.font18Bold,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            verticalSpace(12.h),

            Container(
              width: 1.sw,
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RegisterTypeCard(
                    onTap: () {
                      _changeAccountType(Roles.restaurant);
                    },
                    leadingImagePath: AppIcons.iconsRestaurantOutline,
                    title: S.of(context).restaurant,
                    isChecked: _selectedAccountType == Roles.restaurant,
                  ),

                  verticalSpace(12.h),
                  RegisterTypeCard(
                    onTap: () {
                      _changeAccountType(Roles.charity);
                    },
                    leadingImagePath: AppIcons.iconsCharityOutline,
                    title: S.of(context).charity,
                    isChecked: _selectedAccountType == Roles.charity,
                  ),

                  verticalSpace(12.h),
                  RegisterTypeCard(
                    onTap: () {
                      _changeAccountType(Roles.volunteer);
                    },
                    leadingImagePath: AppIcons.iconsUsersOutline,
                    title: S.of(context).volunteer,
                    isChecked: _selectedAccountType == Roles.volunteer,
                  ),
                ],
              ),
            ),

            verticalSpace(32.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: QCustomButton(
                onTap: () {
                  Navigator.pop(context);
                  switch (_selectedAccountType) {
                    case Roles.restaurant:
                      context.pushNamed(
                        Routes.registerAccountScreen,
                        arguments: Roles.restaurant,
                      );
                      break;
                    case Roles.charity:
                      context.pushNamed(
                        Routes.registerAccountScreen,
                        arguments: Roles.charity,
                      );
                      break;
                    case Roles.volunteer:
                      context.pushNamed(
                        Routes.registerAccountScreen,
                        arguments: Roles.volunteer,
                      );
                      break;
                  }
                },
                height: 56.h,
                child: Text(
                  S.of(context).createAccount,
                  style: AppTextStyles.font16SemiBold.copyWith(
                    color: context.customAppColors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
