import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/common/widgets/custom_app_bar.dart';
import 'package:qoot/core/helpers/extensions.dart';
import 'package:qoot/features/charity_donations/data/models/available_donation/donation_item.dart';
import 'package:qoot/features/charity_home/presentation/widgets/urgent_donations_card.dart';
import 'package:qoot/generated/l10n.dart';

class AllUrgentDonationsScreen extends StatelessWidget {
  final List<DonationItem> urgentDonations;

  const AllUrgentDonationsScreen({
    super.key,
    required this.urgentDonations,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.h),
        child: Column(
          children: [
            CustomAppBar(text: S.of(context).charityHomeUrgentDonations),
            12.h.ph,
            Expanded(
              child: ListView.separated(
                itemCount: urgentDonations.length,
                itemBuilder: (context, index) {
                  final item = urgentDonations[index];
                  return UrgentDonationsCard(
                    donationItem: item,
                  );
                },
                separatorBuilder: (context, index) => 17.h.ph,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
