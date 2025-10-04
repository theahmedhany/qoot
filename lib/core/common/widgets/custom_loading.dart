import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:qoot/core/utils/app_animations.dart';

class CustomLoading extends StatelessWidget {
  const CustomLoading({super.key, required this.size, this.loadingAnimation});

  final double size;
  final String? loadingAnimation;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset(
        loadingAnimation ?? AppAnimations.animationsSandyLoading,
        width: size.w,
        height: size.h,
      ),
    );
  }
}
