import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/extensions.dart';
import '../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../../core/utils/app_placeholder.dart';
import '../../../../generated/l10n.dart';
import 'urgent_donations_card.dart';

class UrgentDonationsSection extends StatelessWidget {
  const UrgentDonationsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              S.of(context).charityHomeUrgentDonations,
              style: AppTextStyles.font18SemiBold.copyWith(
                color: context.customAppColors.grey900,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                S.of(context).viewAll,
                style: AppTextStyles.font12Regular.copyWith(
                  color: context.customAppColors.primary800,
                ),
              ),
            ),
          ],
        ),
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 2,
          padding: EdgeInsets.only(top: 16.h),
          itemBuilder: (context, index) {
            return const UrgentDonationsCard(
              imageUrl: AppPlaceholder.placeholderFood4,
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return 17.h.ph;
          },
        ),
      ],
    );
  }
}
