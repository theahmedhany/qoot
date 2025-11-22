import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
<<<<<<< Updated upstream
import 'package:qoot/core/helpers/extensions.dart';
import 'package:qoot/core/theme/app_texts/app_text_styles.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:qoot/features/all_charities/presentation/widgets/all_charities_list.dart';
import 'package:qoot/generated/l10n.dart';
=======
import 'package:qoot/features/all_charities/presentation/manager/all_charities_cubit.dart';

import '../../../../core/helpers/extensions.dart';
import '../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../../generated/l10n.dart';
import '../widgets/all_charities_list.dart';
>>>>>>> Stashed changes

class AllCharitiesScreen extends StatelessWidget {
  const AllCharitiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AllCharitiesCubit()..getAllCharities(),
      child: Scaffold(
        backgroundColor: context.customAppColors.background,
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
            S.of(context).allCharitiesScreenTitle,
            style: AppTextStyles.font18Bold.copyWith(
              color: context.customAppColors.grey900,
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.r),
          child: const AllCharitiesList(),
        ),
      ),
    );
  }
}
