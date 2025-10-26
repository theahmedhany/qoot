import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';
import 'donation_history_cell.dart';
import '../../../../generated/l10n.dart';

class DonationHistorySection extends StatelessWidget {
  const DonationHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              S.of(context).donationHistory,
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
          itemCount: 3,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return const DonationHistoryCell();
          },
          separatorBuilder: (BuildContext context, int index) => 16.h.ph,
        ),
      ],
    );
  }
}
