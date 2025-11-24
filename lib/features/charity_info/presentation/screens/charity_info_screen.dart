import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/common/widgets/custom_error_message.dart';
import 'package:qoot/core/common/widgets/custom_loading.dart';
import 'package:qoot/features/charity_info/data/models/my_charity/charity_response.dart';
import 'package:qoot/features/charity_info/presentation/logic/get_charity/get_charity_cubit.dart';
import 'package:qoot/features/charity_info/presentation/logic/get_charity/get_charity_state.dart';
import 'package:qoot/features/charity_info/presentation/widgets/charity_info_success.dart';

class CharityInfoScreen extends StatelessWidget {
  const CharityInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: SafeArea(
          child: BlocBuilder<GetCharityCubit, GetCharityState>(
            builder: (context, state) {
              return state.maybeWhen(
                loading: () => const CustomLoading(size: 60),
                success: (data) {
                  final updatedCharity =
                      ModalRoute.of(context)?.settings.arguments
                          as CharityData?;
                  final displayData = updatedCharity ?? data.data;
                  return CharityInfoSuccessWidget(charity: displayData);
                },
                failure: (error) => CustomErrorMessage(message: error),
                orElse: () => const SizedBox.shrink(),
              );
            },
          ),
        ),
      ),
    );
  }
}
