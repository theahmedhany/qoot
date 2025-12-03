import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/common/widgets/custom_loading.dart';
import 'package:qoot/core/common/widgets/snackbar_helper.dart';
import 'package:qoot/core/data/local_data/current_user.dart';
import 'package:qoot/core/helpers/app_validators.dart';
import 'package:qoot/core/middlewares/cubit/auth_middleware_cubit.dart';
import 'package:qoot/core/routing/routes.dart';
import 'package:qoot/features/restaurant_profile_info/data/model/update_restaurant_request_body.dart';
import 'package:qoot/features/restaurant_profile_info/presentation/cubit/cubit/restaurant_profile_cubit.dart';
import 'package:qoot/features/restaurant_profile_info/presentation/widgets/custom_location_restaurant_info.dart';
import 'package:qoot/features/restaurant_profile_info/presentation/widgets/custom_restaurant_info_card.dart';
import 'package:qoot/features/restaurant_profile_info/presentation/widgets/restaurant_stats.dart';

import '../../../../core/common/widgets/custom_app_bar.dart';
import '../../../../core/common/widgets/custom_button.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../../generated/l10n.dart';

class RestaurantProfileInfoScreenBody extends StatefulWidget {
  const RestaurantProfileInfoScreenBody({
    super.key,
  });

  @override
  State<RestaurantProfileInfoScreenBody> createState() =>
      _RestaurantProfileInfoScreenBodyState();
}

class _RestaurantProfileInfoScreenBodyState
    extends State<RestaurantProfileInfoScreenBody> {
  late final TextEditingController _nameController;
  late final TextEditingController _addressController;
  late final TextEditingController _descriptionController;

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _nameController = TextEditingController()
      ..text = CurrentUser.restaurantData.name;
    _addressController = TextEditingController()
      ..text = CurrentUser.restaurantData.address;
    _descriptionController = TextEditingController()
      ..text = CurrentUser.restaurantData.description;
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _addressController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomAppBar(text: S.of(context).allRestaurantInformation),
          20.h.ph,
          BlocConsumer<RestaurantProfileCubit, RestaurantProfileState>(
            listener: (context, state) async {
              if (state is Failure) {
                SnackbarHelper.showErrorSnackbar(context, state.message);
              } else if (state is Deleted) {
                await context.read<AuthMiddlewareCubit>().logout();
                if (context.mounted) {
                  context.pushNamedAndRemoveUntil(
                    Routes.onboardingScreen,
                    predicate: (route) => false,
                  );
                }
              } else if (state is Success) {
                SnackbarHelper.showSuccessSnackbar(context, 'تم التحديث بنجاح');
              }
            },
            buildWhen: (previous, current) =>
                (current is Loading ||
                current is Success ||
                current is Failure),
            builder: (context, state) {
              if (state is Loading) {
                return const Center(
                  child: CustomLoading(size: 100),
                );
              }

              return Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  border: Border.all(color: context.customAppColors.grey100),
                ),
                child: Container(
                  margin: EdgeInsets.all(16.h),
                  decoration: BoxDecoration(
                    color: context.customAppColors.grey100.withValues(
                      alpha: 0.4,
                    ),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Column(
                    children: [
                      16.h.ph,
                      CustomRestaurantInfoCard(
                        title: S.of(context).restaurantName,
                        controller: _nameController,
                        width: double.infinity,
                        maxLines: 1,
                        validator: (_) => AppValidators.validateName(
                          _nameController.text,
                        ),
                      ),
                      12.h.ph,
                      CustomRestaurantInfoCard(
                        title: S.of(context).address,
                        controller: _addressController,
                        width: double.infinity,
                        maxLines: 1,
                        validator: (_) => AppValidators.validateAddress(
                          _addressController.text,
                        ),
                      ),
                      12.h.ph,
                      CustomRestaurantInfoCard(
                        title: S.of(context).description,
                        controller: _descriptionController,
                        width: double.infinity,
                        maxLines: 3,
                        validator: (_) => AppValidators.validateDescription(
                          _descriptionController.text,
                        ),
                      ),
                      16.h.ph,
                    ],
                  ),
                ),
              );
            },
          ),
          18.h.ph,
          const CustomLocationRestaurantInfo(),
          18.h.ph,
          const RestaurantStats(),
          22.h.ph,
          CustomButton(
            onTap: () async {
              if (!_formKey.currentState!.validate()) return;
              await context.read<RestaurantProfileCubit>().updateRestaurant(
                UpdateRestaurantRequestBody(
                  name: _nameController.text,
                  address: _addressController.text,
                  description: _descriptionController.text,
                  latitude: CurrentUser.restaurantData.latitude,
                  longitude: CurrentUser.restaurantData.longitude,
                ),
              );
            },
            text: S.of(context).editRestaurantInfo,
            isIcon: true,
            icon: Icons.edit_note_rounded,
          ),
          18.h.ph,
          CustomButton(
            onTap: () async {
              await context.read<RestaurantProfileCubit>().deleteRestaurant();
            },
            color: Colors.transparent,
            textColor: context.customAppColors.error500,
            text: S.of(context).deleteRestaurant,
            isIcon: true,
            icon: Icons.delete,
            iconColor: context.customAppColors.error500,
            borderColor: context.customAppColors.error500,
          ),
          32.h.ph,
        ],
      ),
    );
  }
}
