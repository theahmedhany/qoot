import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../../core/utils/app_placeholder.dart';
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
        // ===== Tabs =====
        Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: context.customAppColors.grey50,
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: tabs.entries.map((entry) {
              final isSelected = currentTab == entry.key;
              return Expanded(
                child: GestureDetector(
                  onTap: () => setState(() => currentTab = entry.key),
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

        // ===== List of Cards =====
        Expanded(
          child: ListView.builder(
            itemCount: 4,
            padding: EdgeInsets.only(
              bottom: 8.h,
            ),
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              final colors = _getStatusColors(context);
              final text = _getStatusText();
              return Padding(
                padding: EdgeInsets.only(bottom: 12.h),
                child: CustomReservationsCard(
                  imageUrl: AppPlaceholder.placeholderFood4,
                  status: text,
                  statusTextColor: colors.$1,
                  statusBackgroundColor: colors.$2,
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
          context.customAppColors.primary700,
          context.customAppColors.primary700.withValues(alpha: .15),
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

  String _getStatusText() {
    switch (currentTab) {
      case ReservationTab.all:
        return 'Reserved';
      case ReservationTab.active:
        return 'Active';
      case ReservationTab.received:
        return 'Received';
      case ReservationTab.expired:
        return 'Expired';
    }
  }
}
