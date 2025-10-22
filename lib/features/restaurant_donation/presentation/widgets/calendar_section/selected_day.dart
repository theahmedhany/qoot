import 'package:flutter/material.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';

class SelectedDay extends StatelessWidget {
  final String formattedDayString;
  const SelectedDay({
    super.key,
    required this.formattedDayString,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: context.customAppColors.black),
        ),
        child: CircleAvatar(
          backgroundColor: context.customAppColors.white,
          child: Text(
            formattedDayString,
            style: TextStyle(color: context.customAppColors.black),
          ),
        ),
      ),
    );
  }
}
