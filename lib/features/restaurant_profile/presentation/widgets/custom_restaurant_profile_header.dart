import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/helpers/extensions.dart';
import 'package:qoot/core/theme/app_texts/app_text_styles.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:qoot/core/utils/app_placeholder.dart';
import 'package:qoot/generated/l10n.dart';

class CustomRestaurantProfileHeader extends StatelessWidget {
  const CustomRestaurantProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
        width: 96.w,
        height: 96.w,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage(AppPlaceholder.placeholderPlace3),
            fit: BoxFit.cover,
          ),
        ),
      ),
      title: Text(
        'Restaurant Name',
        style: AppTextStyles.font16Bold.copyWith(
          color: context.customAppColors.accent600,
        ),
      ),
      subtitle: Row(
        children: [
          Text(
            S.of(context).verifiedAccount,
            style: AppTextStyles.font13Regular.copyWith(
              color: context.customAppColors.neutral800,
            ),
          ),
          8.w.pw,
          const Icon(Icons.verified, color: Colors.green, size: 16),
        ],
      ),
    );
  }
}
