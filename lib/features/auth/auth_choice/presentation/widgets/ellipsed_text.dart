import 'package:flutter/material.dart';

class EllipsedText extends StatelessWidget {
  const EllipsedText({super.key, required this.text, this.textStyle});
  final String text;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Text(
        text,
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis,
        style: textStyle,
      ),
    );
  }
}
