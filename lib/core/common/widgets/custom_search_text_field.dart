import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qoot/core/common/widgets/custom_text_form_field.dart';
import 'package:qoot/core/utils/app_icons.dart';
import 'package:qoot/generated/l10n.dart';

class CustomSearchFormField extends StatelessWidget {
  const CustomSearchFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      prefixIcon: Padding(
        padding: EdgeInsets.all(12.h),
        child: SvgPicture.asset(
          AppIcons.iconsSearch,
          height: 16.h,
          width: 16.h,
        ),
      ),
      hintText: S.of(context).searchForOrphanageOrDonation,
    );
  }
}
