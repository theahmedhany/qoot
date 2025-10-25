import 'package:flutter/material.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';

import '../../../../../core/theme/app_texts/app_text_styles.dart';

Text textFieldLabelBuilder(BuildContext context, String label) {
  return Text(
    label,
    style: AppTextStyles.font14SemiBold.copyWith(color: context.customAppColors.grey900),
  );
}
