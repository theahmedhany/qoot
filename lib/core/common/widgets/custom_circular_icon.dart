import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';

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
      backgroundColor: context.customAppColors.primary800.withValues(
        alpha: 0.2,
      ),
      child: SvgPicture.asset(icon),
    );
  }
}
