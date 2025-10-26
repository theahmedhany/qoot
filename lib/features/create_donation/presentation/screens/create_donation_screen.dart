import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';
import '../widgets/create_donation_form.dart';
import '../../../../generated/l10n.dart';

class CreateDonationScreen extends StatelessWidget {
  const CreateDonationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.customAppColors.background,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: context.customAppColors.grey900,
          ),
          onPressed: () {
            context.pop();
          },
        ),
        title: Text(
          S.of(context).createDonationScreenTitle,
          style: AppTextStyles.font18Bold.copyWith(
            color: context.customAppColors.grey900,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.r),
        child: const CreateDonationForm(),
      ),
    );
  }
}
