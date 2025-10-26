import 'package:flutter/material.dart';

import '../../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../../core/theme/theme_manager/theme_extensions.dart';

Text textFieldLabelBuilder(BuildContext context, String label) {
  return Text(
    label,
    style: AppTextStyles.font14SemiBold.copyWith(
      color: context.customAppColors.grey900,
    ),
  );
}
