import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../assets/app_icons.dart';

class CustomLoading extends StatelessWidget {
  const CustomLoading({super.key, required this.size});

  final double size;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset(
        AppIcons.iconsLoadingAnimation,
        width: size.w,
        height: size.h,
      ),
    );
  }
}
