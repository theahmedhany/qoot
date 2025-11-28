import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/di/service_locator.dart';
import 'package:qoot/core/services/storage/charity_local_storage.dart';

import '../../../../core/helpers/extensions.dart';
import '../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../../core/utils/app_placeholder.dart';
import '../../../../generated/l10n.dart';

class CustomCharityProfileHeader extends StatelessWidget {
  const CustomCharityProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final charity = getIt<CharityLocalStorage>();
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
        charity.charityName ?? "",
        style: AppTextStyles.font16Bold.copyWith(
          color: context.customAppColors.accent600,
        ),
        overflow: TextOverflow.ellipsis,
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
