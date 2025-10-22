import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/helpers/extensions.dart';
import 'package:qoot/core/helpers/spacing.dart';
import 'package:qoot/core/theme/app_texts/app_text_styles.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:qoot/core/utils/app_icons.dart';
import 'package:qoot/features/charity_details/presentation/widgets/charity_documents_sheet_item.dart';
import 'package:qoot/generated/l10n.dart';

class CharityDocumentsBottomSheet extends StatelessWidget {
  const CharityDocumentsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.customAppColors.background,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(28.r),
          topRight: Radius.circular(28.r),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FadeInUp(
            duration: const Duration(milliseconds: 300),
            child: Container(
              margin: EdgeInsets.only(top: 12.r),
              width: 40.w,
              height: 4.h,
              decoration: BoxDecoration(
                color: context.customAppColors.grey300,
                borderRadius: BorderRadius.circular(2.r),
              ),
            ),
          ),

          FadeInUp(
            duration: const Duration(milliseconds: 400),
            delay: const Duration(milliseconds: 100),
            child: Padding(
              padding: EdgeInsets.all(20.r),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      context.pop();
                    },
                    icon: Icon(
                      Icons.close,
                      size: 32.r,
                      color: context.customAppColors.grey900,
                    ),
                  ),
                  horizontalSpace(8),
                  Text(
                    S.of(context).charityDetailsDocumentsBottomSheetTitle,
                    style: AppTextStyles.font20Bold.copyWith(
                      color: context.customAppColors.grey900,
                    ),
                  ),
                ],
              ),
            ),
          ),

          FadeIn(
            duration: const Duration(milliseconds: 400),
            delay: const Duration(milliseconds: 150),
            child: Container(
              height: 1,
              color: context.customAppColors.grey300,
              margin: EdgeInsets.symmetric(horizontal: 20.r),
            ),
          ),

          verticalSpace(20),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.r),
            child: Column(
              children: [
                FadeInUp(
                  duration: const Duration(milliseconds: 500),
                  delay: const Duration(milliseconds: 200),
                  child: CharityDocumentsSheetItem(
                    icon: AppIcons.iconsProof,
                    title: S
                        .of(context)
                        .charityDetailsDocumentsBottomSheetProof,
                    onTap: () {},
                  ),
                ),
                verticalSpace(12),
                FadeInUp(
                  duration: const Duration(milliseconds: 500),
                  delay: const Duration(milliseconds: 300),
                  child: CharityDocumentsSheetItem(
                    icon: AppIcons.iconsLicense,
                    title: S
                        .of(context)
                        .charityDetailsDocumentsBottomSheetLicense,
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),

          verticalSpace(32),
        ],
      ),
    );
  }
}
