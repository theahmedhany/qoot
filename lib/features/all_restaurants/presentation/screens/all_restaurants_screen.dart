import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/common/widgets/custom_app_bar.dart';
import 'package:qoot/core/helpers/extensions.dart';
import 'package:qoot/core/utils/app_placeholder.dart';
import 'package:qoot/features/all_restaurants/presentation/widgets/custom_restaurant_card.dart';
import 'package:qoot/generated/l10n.dart';

class AllRestaurantsScreen extends StatelessWidget {
  const AllRestaurantsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.h),
        child: Column(
          children: [
            16.h.ph,
            CustomAppBar(text: S.of(context).restaurants),
            16.h.ph,
            Expanded(
              child: ListView.separated(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return CustomRestaurantCard(
                    imageUrl: AppPlaceholder.placeholderPlace10,
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return 12.h.ph;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
