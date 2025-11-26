import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qoot/core/helpers/extensions.dart';
import 'package:qoot/core/theme/app_texts/app_text_styles.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:qoot/features/create_donation/presentation/manager/create_donation_cubit.dart';
import 'package:qoot/features/create_donation/presentation/widgets/create_donation_bloc_listener.dart';
import 'package:qoot/features/create_donation/presentation/widgets/create_donation_form.dart';
import 'package:qoot/generated/l10n.dart';

class CreateDonationScreen extends StatelessWidget {
  const CreateDonationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CreateDonationCubit(),
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
            S.of(context).createDonationScreenTitle,
            style: AppTextStyles.font18Bold.copyWith(
              color: context.customAppColors.grey900,
            ),
          ),
          centerTitle: true,
        ),
        body: const Stack(
          children: [
            CreateDonationForm(),
            CreateDonationBlocListener(),
          ],
        ),
      ),
    );
  }
}
