import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomCircularIcon extends StatelessWidget {
  final String icon;
  const CustomCircularIcon({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20.r,
      backgroundColor: const Color(
        0xff10B981,
      ).withValues(alpha: .2),
      child: SvgPicture.asset(icon),
    );
  }
}
