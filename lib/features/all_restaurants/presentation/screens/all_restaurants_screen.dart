import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/common/widgets/custom_app_bar.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/utils/app_placeholder.dart';
import '../../../../generated/l10n.dart';
import '../widgets/custom_restaurant_card.dart';

class AllRestaurantsScreen extends StatelessWidget {
  const AllRestaurantsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: Column(
            children: [
              CustomAppBar(text: S.of(context).restaurants),
              16.h.ph,
              Expanded(
                child: ListView.separated(
                  itemCount: 10,
                  padding: EdgeInsets.only(
                    bottom: 24.h,
                  ),
                  itemBuilder: (context, index) {
                    return const CustomRestaurantCard(
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
      ),
    );
  }
}
