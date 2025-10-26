import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helpers/extensions.dart';
import '../widgets/calendar_section/table_calendar_section.dart';
import '../widgets/donation_history_section.dart';

class RestaurantDonationScreen extends StatelessWidget {
  const RestaurantDonationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 16.h),
              child: Column(
                children: [
                  const TableCalendarSection(),
                  21.h.ph,
                  const DonationHistorySection(),
                  21.h.ph,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
