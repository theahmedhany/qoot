import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/extensions.dart';
import '../../../../core/routing/routes.dart';
import '../screens/all_charities_screen.dart';
import 'all_charities_card.dart';

class AllCharitiesList extends StatelessWidget {
  const AllCharitiesList({super.key, required this.charities});

  final List<CharityItem> charities;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.only(top: 16.r, bottom: 24.r),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 0.75,
      ),
      itemCount: charities.length,
      itemBuilder: (context, index) {
        return AllCharitiesCard(
          charity: charities[index],
          onTap: () {
            context.pushNamed(Routes.charityDetailsScreen);
          },
        );
      },
    );
  }
}
