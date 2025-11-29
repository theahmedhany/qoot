import 'package:flutter/material.dart';
import 'package:qoot/core/common/widgets/custom_button.dart';
import 'package:qoot/core/common/widgets/snackbar_helper.dart';
import 'package:qoot/core/helpers/spacing.dart';

import '../../../../core/common/widgets/custom_loading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          const Center(child: Text('أهلا بك في الشاشة الرئيسية!')),
          verticalSpace(50),
          const CustomLoading(size: 100),
          verticalSpace(50),

          CustomButton(
            text: 'زر تجريبي',
            onTap: () {
              SnackbarHelper.showErrorSnackbar(
                context,
                'هذا زر تجريبي في الشاشة الرئيسية.',
              );
            },
          ),
        ],
      ),
    );
  }
}
