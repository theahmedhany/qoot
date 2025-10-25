import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

OutlineInputBorder textFieldBorderBuilder({
  required Color color,
  double radius = 10,
  double width = 1,
}) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(radius.r),
    borderSide: BorderSide(color: color, width: width),
  );
}
