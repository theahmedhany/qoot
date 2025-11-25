import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:qoot/core/common/widgets/custom_loading.dart';
import 'package:qoot/core/routing/routes.dart';
import 'package:qoot/features/restaurant_donation/presentation/cubit/restaurant_donation_cubit.dart';
import 'package:qoot/features/restaurant_donation/presentation/cubit/restaurant_donation_state.dart';
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
              onTap: () {
                context.pushNamed(Routes.allRestaurantDonationScreen);
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
        BlocBuilder<RestaurantDonationCubit, RestaurantDonationState>(
          buildWhen: (previous, current) =>
              (current is Success || current is Loading),
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => const CustomLoading(size: 100),
              error: (message) => Center(child: Text(message)),
              success: (donations) {
                return ListView.separated(
                  itemCount: donations.length,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Provider(
                      create: (context) => donations[index],
                      child: const DonationHistoryCell(),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      16.h.ph,
                );
              },
            );
          },
        ),
      ],
    );
  }
}
