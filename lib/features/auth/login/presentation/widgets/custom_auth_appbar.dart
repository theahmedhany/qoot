import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../../core/theme/theme_manager/theme_extensions.dart';

class CustomAuthAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAuthAppBar({
    super.key,
    required this.title,
    this.showBackButton = true,
  });
  final String title;
  final bool showBackButton;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      automaticallyImplyLeading: showBackButton,

      backgroundColor: context.customAppColors.background,
      surfaceTintColor: Colors.transparent,
      scrolledUnderElevation: 0,
      title: Text(title, style: AppTextStyles.font20SemiBold),
      elevation: 0,
      leading: showBackButton
          ? IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(Icons.arrow_back_ios_new, size: 24.sp),
            )
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
