import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../../generated/l10n.dart';

class CharityStorySection extends StatefulWidget {
  const CharityStorySection({super.key, required this.story});

  final String story;

  @override
  State<CharityStorySection> createState() => _CharityStorySectionState();
}

class _CharityStorySectionState extends State<CharityStorySection> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final appColors = context.customAppColors;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            S.of(context).CharityDetailsScreenStoryTitle,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyles.font20Bold.copyWith(color: appColors.grey900),
          ),

          verticalSpace(8),

          Text(
            widget.story,
            maxLines: _isExpanded ? null : 4,
            overflow: TextOverflow.fade,
            style: AppTextStyles.font12Regular.copyWith(
              color: appColors.grey700,
            ),
          ),

          verticalSpace(4),

          GestureDetector(
            onTap: () {
              setState(() {
                _isExpanded = !_isExpanded;
              });
            },
            child: Text(
              _isExpanded
                  ? S.of(context).CharityDetailsScreenStoryReadLess
                  : S.of(context).CharityDetailsScreenStoryReadMore,
              style: AppTextStyles.font12Bold.copyWith(
                color: appColors.primary800,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
