import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/helpers/extensions.dart';
import 'package:qoot/core/theme/app_texts/app_text_styles.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:qoot/core/utils/app_placeholder.dart';
import 'package:qoot/features/charity_home/presentation/widgets/urgent_donations_card.dart';
import 'package:qoot/generated/l10n.dart';

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
        16.h.ph,
        ListView.separated(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: 2,
          itemBuilder: (context, index) {
            return UrgentDonationsCard(
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
