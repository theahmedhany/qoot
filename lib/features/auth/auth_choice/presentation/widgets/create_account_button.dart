import 'package:flutter/material.dart';

import '../../../../../core/common/widgets/q_custom_button.dart';
import '../../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../../../generated/l10n.dart';
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
        text: S.of(context).createAccount,
        textStyle: AppTextStyles.font16SemiBold.copyWith(
          color: context.customAppColors.white,
        ),
      ),
    );
  }
}
