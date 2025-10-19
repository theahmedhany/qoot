import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/common/widgets/custom_app_bar.dart';
import 'package:qoot/generated/l10n.dart';

class CharityConfirmPickupScreen extends StatelessWidget {
  const CharityConfirmPickupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.h),
        child: Column(
          children: [CustomAppBar(text: S.of(context).confirmPickup)],
        ),
      ),
    );
  }
}
