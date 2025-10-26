import 'package:flutter/material.dart';

import '../../../../../core/common/buttons/custom_button.dart';
import '../../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../../core/theme/theme_manager/theme_extensions.dart';
import 'ellipsed_text.dart';
import 'show_register_type_selection_bottomsheet.dart';

class CreateAccountButton extends StatelessWidget {
  const CreateAccountButton({super.key});

  @override
  Widget build(BuildContext context) {
    return QCustomButton(
      onTap: () {
        //show bottom sheet
        showRegisterTypeSelectionBottomSheet(context);
      },
      child: EllipsedText(
        text: "Create Account",
        textStyle: AppTextStyles.font16SemiBold.copyWith(
          color: context.customAppColors.white,
        ),
      ),
    );
  }
}
