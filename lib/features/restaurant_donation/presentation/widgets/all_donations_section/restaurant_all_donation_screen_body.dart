import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/helpers/extensions.dart';
import 'package:qoot/features/restaurant_donation/presentation/widgets/all_donations_section/full_donation_history_section.dart';

class RestaurantAllDonationsScreenBody extends StatelessWidget {
  const RestaurantAllDonationsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 16.h),
      child: Column(
        children: [
          16.h.ph,
          const Expanded(child: FullDonationHistorySection()),
        ],
      ),
    );
  }
}
