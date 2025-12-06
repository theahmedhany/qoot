import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/common/widgets/custom_error_message.dart';
import 'package:qoot/core/common/widgets/empty_state.dart';
import 'package:qoot/core/di/service_locator.dart';
import 'package:qoot/core/helpers/app_paginated_scroll.dart';
import 'package:qoot/features/charity_reservations/data/models/charity_reservation/charity_reservation_response.dart';
import 'package:qoot/features/charity_reservations/presentation/logic/charity_reservations/charity_reservations_cubit.dart';
import 'package:qoot/features/charity_reservations/presentation/logic/charity_reservations/charity_reservations_state.dart';
import 'package:qoot/features/charity_reservations/presentation/logic/donation_images/donation_images_cubit.dart';
import 'package:qoot/features/charity_reservations/presentation/widgets/shimmer_reservations_card.dart';
import '../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../../generated/l10n.dart';
import 'custom_reservations_card.dart';

enum ReservationTab { all, active, received, expired }

class ReservationTabsWithList extends StatefulWidget {
  const ReservationTabsWithList({super.key});

  @override
  State<ReservationTabsWithList> createState() =>
      _ReservationTabsWithListState();
}

class _ReservationTabsWithListState extends State<ReservationTabsWithList> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      context.read<CharityReservationsCubit>().fetchReservationsInitial(
        context,
      );
    });
  }

  ReservationTab currentTab = ReservationTab.all;

  @override
  Widget build(BuildContext context) {
    final tabs = {
      ReservationTab.all: S.of(context).charityReservationsTabBarAll,
      ReservationTab.active: S.of(context).charityReservationsTabBarActive,
      ReservationTab.received: S.of(context).charityReservationsTabBarReserved,
      ReservationTab.expired: S.of(context).charityReservationsTabBarExpired,
    };

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: context.customAppColors.grey100.withValues(alpha: 0.7),
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: tabs.entries.map((entry) {
              final isSelected = currentTab == entry.key;
              return Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() => currentTab = entry.key);
                    context.read<CharityReservationsCubit>().changeTab(
                      currentTab,
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 9),
                    decoration: BoxDecoration(
                      color: isSelected
                          ? context.customAppColors.white
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(6.r),
                    ),
                    child: Center(
                      child: Text(
                        entry.value,
                        style: AppTextStyles.font14Regular.copyWith(
                          color: isSelected
                              ? context.customAppColors.primary800
                              : context.customAppColors.accent600,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
        20.h.verticalSpace,

        Expanded(
          child:
              BlocBuilder<CharityReservationsCubit, CharityReservationsState>(
                builder: (context, state) {
                  return state.when(
                    initial: () => ListView.builder(
                      itemCount: 5,
                      padding: EdgeInsets.only(bottom: 8.h),
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) =>
                          const ShimmerReservationsCard(),
                    ),
                    loading: () {
                      return ListView.builder(
                        itemCount: 5,
                        padding: EdgeInsets.only(bottom: 8.h),
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (context, index) =>
                            const ShimmerReservationsCard(),
                      );
                    },
                    success: (reservations) {
                      if (reservations.isEmpty) {
                        return const Center(
                          child: EmptyState(
                            message: 'لا توجد حجوزات متاحة حالياً.',
                          ),
                        );
                      }

                      final cubit = context.read<CharityReservationsCubit>();

                      return AppPaginatedScroll<CharityReservationItem>(
                        items: cubit.filteredReservations,
                        getPaginatedItems: (page) async {
                          return await cubit.fetchMorePaginated(context);
                        },
                        builder: (context, items) {
                          final colors = _getStatusColors(context);
                          return ListView.builder(
                            itemCount: cubit.filteredReservations.length,
                            padding: EdgeInsets.only(bottom: 8.h),
                            physics: const BouncingScrollPhysics(),
                            itemBuilder: (context, index) {
                              final item = cubit.filteredReservations[index];
                              return Padding(
                                padding: EdgeInsets.only(bottom: 12.h),
                                child: BlocProvider(
                                  create: (context) =>
                                      getIt<DonationImagesCubit>()
                                        ..getDonationImages(
                                          item.donationId.toString(),
                                        ),
                                  child: CustomReservationsCard(
                                    charityReservationItem: item,
                                    statusTextColor: colors.$1,
                                    statusBackgroundColor: colors.$2,
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      );
                    },
                    failure: (message) => Center(
                      child: CustomErrorMessage(
                        message: message,
                        onRetry: () => context
                            .read<CharityReservationsCubit>()
                            .fetchReservationsInitial(context),
                      ),
                    ),
                  );
                },
              ),
        ),
      ],
    );
  }

  (Color, Color) _getStatusColors(BuildContext context) {
    switch (currentTab) {
      case ReservationTab.all:
        return (
          context.customAppColors.primary700,
          context.customAppColors.primary700.withValues(alpha: .2),
        );
      case ReservationTab.active:
        return (
          context.customAppColors.primary600,
          context.customAppColors.primary600.withValues(alpha: .15),
        );
      case ReservationTab.received:
        return (
          context.customAppColors.error500,
          context.customAppColors.error500.withValues(alpha: .15),
        );
      case ReservationTab.expired:
        return (
          context.customAppColors.accent600,
          context.customAppColors.accent600.withValues(alpha: .15),
        );
    }
  }
}
