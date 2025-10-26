import 'package:flutter/material.dart';

import '../../../../../core/theme/theme_manager/theme_extensions.dart';

class TodayFocusedDay extends StatelessWidget {
  final String formattedDayString;
  const TodayFocusedDay({
    super.key,
    required this.formattedDayString,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircleAvatar(
        backgroundColor: context.customAppColors.primary800,
        child: Text(
          formattedDayString,
          style: TextStyle(color: context.customAppColors.white),
        ),
      ),
    );
  }
}
