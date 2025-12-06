import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/common/widgets/custom_loading.dart';
import 'package:qoot/core/common/widgets/empty_state.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:qoot/features/all_restaurants/presentation/logic/restaurants_with_donations/restaurants_with_donations_cubit.dart';
import 'package:qoot/features/all_restaurants/presentation/logic/restaurants_with_donations/restaurants_with_donations_state.dart';

import '../../../../core/common/widgets/custom_app_bar.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../generated/l10n.dart';
import '../widgets/custom_restaurant_card.dart';

class AllRestaurantsScreen extends StatelessWidget {
  const AllRestaurantsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.customAppColors.background,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: Expanded(
            child:
                BlocBuilder<
                  RestaurantsWithDonationsCubit,
                  RestaurantsWithDonationsState
                >(
                  builder: (context, state) {
                    return state.when(
                      initial: () =>
                          const Center(child: CustomLoading(size: 60)),
                      loading: () =>
                          const Center(child: CustomLoading(size: 60)),
                      error: (message) => Center(child: Text(message)),
                      success: (data) {
                        final restaurants = data.data;
                        if (restaurants.isEmpty) {
                          return Center(
                            child: EmptyState(
                              message: S.of(context).noRestaurantsAvailable,
                            ),
                          );
                        }
                        return Column(
                          children: [
                            CustomAppBar(text: S.of(context).restaurants),
                            16.h.ph,
                            Expanded(
                              child: ListView.separated(
                                itemCount: restaurants.length,
                                padding: EdgeInsets.only(bottom: 24.h),
                                itemBuilder: (context, index) {
                                  final restaurant = restaurants[index];
                                  return CustomRestaurantCard(
                                    restaurantItem: restaurant,
                                    isContact: false,
                                  );
                                },
                                separatorBuilder: (_, index) => 12.h.ph,
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
          ),
        ),
      ),
    );
  }
}
