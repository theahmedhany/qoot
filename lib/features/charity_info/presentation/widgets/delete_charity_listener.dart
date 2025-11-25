import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qoot/core/common/widgets/snackbar_helper.dart';
import 'package:qoot/core/routing/routes.dart';
import 'package:qoot/features/charity_info/presentation/logic/delete_charity/delete_charity_cubit.dart';
import 'package:qoot/features/charity_info/presentation/logic/delete_charity/delete_charity_state.dart';

class DeleteCharityListener extends StatelessWidget {
  final Widget child;

  const DeleteCharityListener({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocListener<DeleteCharityCubit, DeleteCharityState>(
      listener: (context, state) {
        state.whenOrNull(
          loading: () {},
          success: (data) {
            SnackbarHelper.showSuccessSnackbar(
              context,
              "تم حذف الجمعية بنجاح",
              onDismissed: () {
                Navigator.pushReplacementNamed(
                  context,
                  Routes.registerAccountScreen,
                );
              },
            );
          },
          failure: (error) {
            SnackbarHelper.showErrorSnackbar(
              context,
              error.toString(),
            );
          },
        );
      },
      child: child,
    );
  }
}
