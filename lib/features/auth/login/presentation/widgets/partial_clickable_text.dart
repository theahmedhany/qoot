import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../../core/theme/app_texts/app_text_styles.dart';

class PartialClickableText extends StatelessWidget {
  const PartialClickableText({
    super.key,
    required this.unClickableText,
    required this.clickableText,
    required this.onTap,
  });
  final String unClickableText;
  final String clickableText;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text.rich(
        style: AppTextStyles.font14Regular,
        TextSpan(
          text: "$unClickableText ",
          children: [
            TextSpan(
              text: clickableText,
              style: TextStyle(decoration: TextDecoration.underline),
              recognizer: TapGestureRecognizer()..onTap = onTap,
            ),
          ],
        ),
      ),
    );
  }
}
