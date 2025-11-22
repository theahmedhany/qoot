import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qoot/core/helpers/spacing.dart';
import 'package:qoot/core/theme/app_texts/app_text_styles.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:qoot/core/utils/app_icons.dart';
import 'package:qoot/generated/l10n.dart';

class CharityVerifiedSection extends StatelessWidget {
  const CharityVerifiedSection({
    super.key,
    required this.charityName,
    required this.charityAbbreviation,
    required this.verificationDate,
    required this.onPressed,
  });

  final String charityName, charityAbbreviation, verificationDate;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            S.of(context).CharityDetailsScreenCampaignerTitle,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyles.font20Bold.copyWith(
              color: context.customAppColors.grey900,
            ),
          ),

          verticalSpace(12),

          CupertinoButton(
            onPressed: onPressed,
            padding: EdgeInsets.zero,
            child: Container(
              padding: EdgeInsets.all(12.r),
              decoration: BoxDecoration(
                color: context.customAppColors.background,
                border: Border.all(color: context.customAppColors.grey100),
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 25.r,
                    backgroundColor:
                        avatarColors[Random().nextInt(avatarColors.length)],
                    child: Center(
                      child: Text(
                        charityAbbreviation,
                        style: AppTextStyles.font16SemiBold.copyWith(
                          color: context.customAppColors.grey900,
                        ),
                      ),
                    ),
                  ),

                  horizontalSpace(12),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Flexible(
                              child: Text(
                                charityName,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: AppTextStyles.font14Bold.copyWith(
                                  color: context.customAppColors.grey900,
                                ),
                              ),
                            ),
                            horizontalSpace(4),
                            SvgPicture.asset(
                              AppIcons.iconsVerifyCheck,
                              width: 18.r,
                              height: 18.r,
                              colorFilter: ColorFilter.mode(
                                context.customAppColors.primary800,
                                BlendMode.srcIn,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          '${S.of(context).CharityDetailsScreenVerifiedAccount} $verificationDate',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: AppTextStyles.font12Regular.copyWith(
                            color: context.customAppColors.grey600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  static const List<Color> avatarColors = [
    Color(0xFFF0A5A5),
    Color(0xFFA5F3ED),
    Color(0xFFE7D4A5),
    Color(0xFFB0E5EC),
    Color(0xFFCDB4F0),
    Color(0xFFEAD3B2),
    Color(0xFFB8CFF5),
    Color(0xFFF5B5D1),
  ];
}
