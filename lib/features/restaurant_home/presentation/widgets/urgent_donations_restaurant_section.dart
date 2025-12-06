import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:qoot/core/common/widgets/custom_loading.dart';
import 'package:qoot/core/routing/routes.dart';
import 'package:qoot/features/all_charities/data/models/all_charities_model.dart';
import 'package:qoot/features/restaurant_home/presentation/cubit/restaurant_home_cubit.dart';
import 'package:qoot/features/restaurant_home/presentation/cubit/restaurant_home_state.dart';

import '../../../../core/helpers/extensions.dart';
import '../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../../generated/l10n.dart';
import 'urgent_donations_cell.dart';

class RestaurantUrgentDonationsSection extends StatelessWidget {
  const RestaurantUrgentDonationsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.r),
          child: Row(
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
        ),
        16.h.ph,
        SizedBox(
          height: 370.h,
          child: BlocBuilder<RestaurantHomeCubit, RestaurantHomeState>(
            buildWhen: (previous, current) =>
                (current is Success || current is Loading),
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => const CustomLoading(size: 100),
                error: (message) => Center(child: Text(message)),
                success: (res) {
                  return ListView.separated(
                    itemCount: res.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    itemBuilder: (context, index) {
                      return SizedBox(
                        width: 250.w,
                        child: Provider(
                          create: (_) => res[index],
                          child: UrgentDonationsCell(
                            onTap: () {
                              final charityItem = CharityItem(
                                id: res[index].id,
                                name: res[index].name,
                                description: res[index].description,
                                address: res[index].address,
                                latitude: res[index].latitude,
                                longitude: res[index].longitude,
                                capacity: res[index].capacity,
                                type: res[index].type,
                                status: res[index].status,
                                statusDisplayName: res[index].statusDisplayName,
                                isActive: res[index].isActive,
                                createdAt: res[index].createdAt
                                    .toIso8601String(),
                                contactName: res[index].contactName,
                                email: res[index].email,
                                phoneNumber: res[index].phoneNumber,
                                images: res[index].images
                                    .map(
                                      (img) => CharityImage(
                                        id: img.id,
                                        imagePath: img.imagePath,
                                        isPrimary: img.isPrimary,
                                        charityId: img.charityId,
                                        createdAt: img.createdAt
                                            .toIso8601String(),
                                      ),
                                    )
                                    .toList(),
                              );

                              context.pushNamed(
                                Routes.charityDetailsScreen,
                                arguments: charityItem,
                              );
                            },
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return 12.w.pw;
                    },
                  );
                },
              );
            },
          ),
        ),
        21.h.ph,
      ],
    );
  }
}
