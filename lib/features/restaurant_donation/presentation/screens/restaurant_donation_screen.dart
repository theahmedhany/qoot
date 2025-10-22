import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/helpers/extensions.dart';
import 'package:qoot/features/restaurant_donation/presentation/widgets/donation_history_section.dart';
import 'package:qoot/features/restaurant_donation/presentation/widgets/calendar_section/table_calendar_section.dart';

class RestaurantDonationScreen extends StatelessWidget {
  const RestaurantDonationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 16.h),
            child: Column(
              children: [
                const TableCalendarSection(),
                21.h.ph,
                const DonationHistorySection(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
