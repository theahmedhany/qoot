import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../theme/app_texts/app_text_styles.dart';
import '../../theme/theme_manager/theme_extensions.dart';

class CustomProfileListTile extends StatelessWidget {
  const CustomProfileListTile({
    super.key,
    required this.iconUrl,
    required this.title,
    this.subTitle,
    this.onPressed,
    this.isSwitcher = false,
    this.isNew = false,
  });
  final String iconUrl;
  final String title;
  final String? subTitle;
  final bool isSwitcher;
  final bool isNew;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: subTitle == null ? 55.h : 75.h,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(color: context.customAppColors.grey100),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            dense: true,
            visualDensity: const VisualDensity(vertical: -4),
            leading: SvgPicture.asset(iconUrl),
            title: Row(
              children: [
                Text(
                  title,
                  style: AppTextStyles.font12Regular.copyWith(
                    color: context.customAppColors.neutral800,
                  ),
                ),
                if (isNew) ...[
                  SizedBox(width: 8.w),
                  Container(
                    height: 16.h,
                    decoration: BoxDecoration(
                      color: context.customAppColors.primary300,
                      borderRadius: BorderRadius.circular(16.r),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 8.w),

                    child: Center(
                      child: Text(
                        'New',
                        style: AppTextStyles.font11Regular.copyWith(
                          color: context.customAppColors.primary600,
                        ),
                      ),
                    ),
                  ),
                ],
              ],
            ),
            subtitle: subTitle != null
                ? Text(
                    subTitle!,
                    style: AppTextStyles.font11Regular.copyWith(
                      color: context.customAppColors.grey600,
                    ),
                  )
                : null,
            trailing: isSwitcher
                ? const CustomProfileSwitcher()
                : IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: context.customAppColors.grey700,
                      size: 18.sp,
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}

class CustomProfileSwitcher extends StatefulWidget {
  const CustomProfileSwitcher({super.key});

  @override
  State<CustomProfileSwitcher> createState() => _CustomProfileSwitcherState();
}

class _CustomProfileSwitcherState extends State<CustomProfileSwitcher> {
  bool isActive = true;
  @override
  Widget build(BuildContext context) {
    return Switch.adaptive(
      value: isActive,
      onChanged: (value) {
        setState(() {
          isActive = value;
        });
      },
    );
  }
}
