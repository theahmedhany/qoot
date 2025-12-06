import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qoot/core/common/widgets/custom_error_message.dart';
import 'package:qoot/core/helpers/spacing.dart';
import 'package:qoot/core/helpers/app_paginated_scroll.dart';
import 'package:qoot/features/charity_donations/data/models/available_donation/available_donations_response.dart';
import 'package:qoot/features/charity_donations/presentation/logic/get_available_donations/get_available_donations_cubit.dart';
import 'package:qoot/features/charity_donations/presentation/logic/get_available_donations/get_available_donations_state.dart';
import 'package:qoot/features/charity_donations/presentation/widgets/no_donations_widget.dart';
import 'package:qoot/features/charity_donations/presentation/widgets/shimmer_available_donations_card.dart';
import '../../../../core/common/widgets/custom_text_form_field.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../../core/utils/app_icons.dart';
import '../../../../generated/l10n.dart';
import '../widgets/custom_available_donations_card.dart';

class CharityDonationsScreen extends StatefulWidget {
  const CharityDonationsScreen({super.key});

  @override
  State<CharityDonationsScreen> createState() => _CharityDonationsScreenState();
}

class _CharityDonationsScreenState extends State<CharityDonationsScreen> {
  late final TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();

    // تحميل الصفحة الأولى عند بداية الشاشة
    context.read<GetAvailableDonationsCubit>().getAvailableDonations(context);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(12),
            Text(
              S.of(context).charityDonationsAllAvailableDonations,
              style: AppTextStyles.font20Bold.copyWith(
                color: context.customAppColors.grey900,
              ),
            ),
            12.h.ph,
            AppTextFormField(
              controller: controller,
              prefixIcon: Padding(
                padding: EdgeInsets.all(12.h),
                child: SvgPicture.asset(
                  AppIcons.iconsSearch,
                  height: 16.h,
                  width: 16.h,
                ),
              ),
              hintText: S.of(context).searchForOrphanageOrDonation,
              onChanged: (value) {
                context.read<GetAvailableDonationsCubit>().searchDonations(
                  value,
                );
              },
              contentPadding: EdgeInsets.symmetric(
                horizontal: 12.w,
                vertical: 14.h,
              ),
            ),
            12.h.ph,
            Expanded(
              child:
                  BlocBuilder<
                    GetAvailableDonationsCubit,
                    GetAvailableDonationsState
                  >(
                    builder: (context, state) {
                      return state.when(
                        initial: () => const SizedBox(),
                        loading: () {
                          // عرض shimmer placeholders أثناء التحميل
                          return ListView.separated(
                            itemCount: 5,
                            padding: EdgeInsets.only(top: 12.h, bottom: 32.h),
                            separatorBuilder: (_, __) => 12.h.ph,
                            itemBuilder: (_, __) =>
                                const ShimmerAvailableDonationsCard(),
                          );
                        },
                        failure: (message) => Center(
                          child: CustomErrorMessage(
                            message: message,
                            onRetry: () {
                              context
                                  .read<GetAvailableDonationsCubit>()
                                  .getAvailableDonations(context);
                            },
                          ),
                        ),
                        success: (response) {
                          final cubit = context
                              .read<GetAvailableDonationsCubit>();
                          final items = response.data?.items ?? [];

                          if (items.isEmpty) {
                            return NoDonationsWidget(
                              message: S
                                  .of(context)
                                  .noDonationsavailablerightnow,
                              actionText: S.of(context).reload,
                              onActionPressed: () {
                                cubit.clearSearchAndReload(context, controller);
                              },
                            );
                          }

                          return AppPaginatedScroll<DonationItem>(
                            items: items,
                            getPaginatedItems: (page) async {
                              await cubit.loadNextPage(context);
                              return cubit.allItems;
                            },
                            builder: (context, displayedItems) {
                              return ListView.separated(
                                itemCount: displayedItems.length,
                                padding: EdgeInsets.only(
                                  top: 12.h,
                                  bottom: 32.h,
                                ),
                                physics: const BouncingScrollPhysics(),
                                separatorBuilder: (_, __) => 12.h.ph,
                                itemBuilder: (context, index) {
                                  final donationItem = displayedItems[index];
                                  return CustomAvailableDonationsCard(
                                    donationItem: donationItem,
                                  );
                                },
                              );
                            },
                          );
                        },
                      );
                    },
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
