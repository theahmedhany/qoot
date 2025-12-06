import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/features/charity_donations/presentation/logic/get_available_donations/get_available_donations_cubit.dart';
import 'package:qoot/features/charity_donations/presentation/logic/get_available_donations/get_available_donations_state.dart';
import 'package:qoot/features/charity_home/presentation/screens/all_urgent_donations_screen.dart';
import 'package:qoot/features/charity_home/presentation/widgets/urgent_donations_card_shimmer.dart';

import '../../../../core/helpers/extensions.dart';
import '../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../../generated/l10n.dart';
import 'urgent_donations_card.dart';

class UrgentDonationsSection extends StatelessWidget {
  const UrgentDonationsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetAvailableDonationsCubit, GetAvailableDonationsState>(
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox(),
          loading: () {
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
                    Text(
                      S.of(context).viewAll,
                      style: AppTextStyles.font12Regular.copyWith(
                        color: context.customAppColors.primary800,
                      ),
                    ),
                  ],
                ),
                16.h.ph,
                Column(
                  spacing: 16.h,
                  children: List.generate(
                    2,
                    (_) => const UrgentDonationsCardShimmer(),
                  ),
                ),
              ],
            );
          },
          success: (response) {
            // استدعاء الدالة صح مع الأقواس
            final urgentList = context
                .watch<GetAvailableDonationsCubit>()
                .getUrgentDonations();

            if (urgentList.isEmpty) return const SizedBox();

            final topTwo = urgentList.take(2).toList();

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
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => AllUrgentDonationsScreen(
                              urgentDonations: urgentList,
                            ),
                          ),
                        );
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
                8.h.ph,
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.only(top: 8.r),
                  itemCount: topTwo.length,
                  itemBuilder: (context, index) =>
                      UrgentDonationsCard(donationItem: topTwo[index]),
                  separatorBuilder: (context, index) => 17.h.ph,
                ),
              ],
            );
          },
          failure: (message) {
            return Center(
              child: Text(
                message,
                style: AppTextStyles.font14Regular.copyWith(
                  color: context.customAppColors.error500,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
