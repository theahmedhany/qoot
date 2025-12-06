import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/common/widgets/custom_app_bar.dart';
import 'package:qoot/core/common/widgets/custom_loading.dart';
import 'package:qoot/core/common/widgets/empty_state.dart';
import 'package:qoot/core/di/service_locator.dart';
import 'package:qoot/core/helpers/extensions.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:qoot/features/all_restaurants/presentation/logic/restaurant_donations/restaurant_donations_cubit.dart';
import 'package:qoot/features/all_restaurants/presentation/logic/restaurant_donations/restaurant_donations_state.dart';
import 'package:qoot/features/charity_donations/presentation/widgets/custom_available_donations_card.dart';

class RestaurantDonationsPage extends StatelessWidget {
  final String restaurantId;

  const RestaurantDonationsPage({super.key, required this.restaurantId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          getIt<RestaurantDonationsCubit>()
            ..getRestaurantDonations(restaurantId, context),
      child: Scaffold(
        backgroundColor: context.customAppColors.background,
        body: BlocBuilder<RestaurantDonationsCubit, RestaurantDonationsState>(
          builder: (context, state) {
            return state.when(
              initial: () => const SizedBox(),
              loading: () => Center(child: CustomLoading(size: 60.sp)),
              error: (msg) => Center(child: Text(msg)),
              success: (response) {
                final items = response.data.items;

                if (items.isEmpty) {
                  return const EmptyState(
                    message: 'لا توجد تبرعات.',
                  );
                }
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: SafeArea(
                    bottom: false,
                    child: Column(
                      children: [
                        const CustomAppBar(text: 'تبرعات المطعم'),
                        16.h.ph,
                        Expanded(
                          child: ListView.separated(
                            itemCount: items.length,
                            separatorBuilder: (_, __) => 12.h.ph,
                            itemBuilder: (context, index) {
                              final item = items[index];
                              return CustomAvailableDonationsCard(
                                donationItem: item,
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
