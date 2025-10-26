import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../../core/utils/app_icons.dart';
import '../../../../generated/l10n.dart';

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
                    backgroundColor: context.customAppColors.primary400
                        .withValues(alpha: 0.2),
                    child: Text(
                      charityAbbreviation,
                      style: AppTextStyles.font18SemiBold.copyWith(
                        color: context.customAppColors.primary800,
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
}
