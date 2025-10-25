import 'package:flutter/material.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:qoot/generated/l10n.dart';
import 'charity_stat_card.dart';

class CharityStatsSection extends StatelessWidget {
  const CharityStatsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CharityStatCard(
          gradient: LinearGradient(
            colors: context.customAppColors.greenGradient,
          ),
          number: '1,247',
          description: S.of(context).charityHomeTotalMealsReceived,
        ),
        CharityStatCard(
          gradient: LinearGradient(
            colors: context.customAppColors.orangeGradient,
          ),
          number: '8',
          description: S.of(context).charityHomeActiveReservations,
        ),
        CharityStatCard(
          gradient: LinearGradient(
            colors: context.customAppColors.yellowGradient,
          ),
          number: '23',
          description: S.of(context).charityHomePendingDonations,
        ),
      ],
    );
  }
}
