import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
<<<<<<< Updated upstream
import 'package:qoot/core/helpers/extensions.dart';
import 'package:qoot/core/theme/app_texts/app_text_styles.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:qoot/core/utils/app_placeholder.dart';
import 'package:qoot/features/restaurant_home/presentation/widgets/urgent_donations_cell.dart';
import 'package:qoot/generated/l10n.dart';
=======
import 'package:provider/provider.dart';
import 'package:qoot/core/common/widgets/custom_loading.dart';
import 'package:qoot/core/routing/routes.dart';
import 'package:qoot/features/restaurant_home/presentation/cubit/restaurant_home_cubit.dart';
import 'package:qoot/features/restaurant_home/presentation/cubit/restaurant_home_state.dart';

import '../../../../core/helpers/extensions.dart';
import '../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../../core/utils/app_placeholder.dart';
import '../../../../generated/l10n.dart';
import 'urgent_donations_cell.dart';
>>>>>>> Stashed changes

class RestaurantUrgentDonationsSection extends StatelessWidget {
  const RestaurantUrgentDonationsSection({super.key});

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
              onTap: () {
                context.pushNamed(Routes.allCharitiesScreen);
              },
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
        SizedBox(
          height: 370.h,
          child: ListView.separated(
            itemCount: 3,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return SizedBox(
                width: 250.w,
                child: const UrgentDonationsCell(
                  imageUrl: AppPlaceholder.placeholderFood4,
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return 12.w.pw;
            },
          ),
        ),
      ],
    );
  }
}
