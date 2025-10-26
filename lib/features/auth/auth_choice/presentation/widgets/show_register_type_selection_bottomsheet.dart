import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/theme_manager/theme_extensions.dart';
import 'register_type_selection_bottom_sheet.dart';

void showRegisterTypeSelectionBottomSheet(BuildContext context) async {
  await showModalBottomSheet(
    backgroundColor: context.customAppColors.grey50,
    isDismissible: true,
    isScrollControlled: true,
    enableDrag: true,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
    context: context,
    builder: (context) {
      return const RegisterTypeSelectionBottomSheet();
    },
  );
}
