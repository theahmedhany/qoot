import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_lazy_indexed_stack/flutter_lazy_indexed_stack.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/helpers/extensions.dart';
import '../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../../core/utils/app_icons.dart';
import '../../../../generated/l10n.dart';
import '../../../charity_home/presentation/manager/navbar_cubit/navbar_cubit.dart';

class CustomHomeBottomNavBar extends StatelessWidget {
  const CustomHomeBottomNavBar({super.key, required this.views});
  final List<Widget> views;

  Widget buildNavBarIcon({
    required bool isSelected,
    required String filledIcon,
    required String outlineIcon,
  }) {
    return Column(
      children: [
        AnimatedScale(
          scale: isSelected ? 1.1 : 1.0,
          duration: const Duration(milliseconds: 200),
          child: SvgPicture.asset(
            isSelected ? filledIcon : outlineIcon,
            height: 24.h,
            width: 24.w,
          ),
        ),
        5.ph,
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavbarCubit, NavbarState>(
      builder: (context, index) {
        final currentIndex = index is NavbarUpdate ? index.currentIndex : 0;

        return Scaffold(
          body: LazyIndexedStack(index: currentIndex, children: views),
          bottomNavigationBar: Container(
            padding: EdgeInsets.only(
              left: 8.r,
              right: 8.r,
              top: 8.r,
              bottom: 12.r,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(32.r)),
            ),
            child: Theme(
              data: Theme.of(context).copyWith(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                hoverColor: Colors.transparent,
              ),
              child: BottomNavigationBar(
                elevation: 0,
                backgroundColor: Colors.transparent,

                currentIndex: currentIndex,
                onTap: (newIndex) {
                  context.read<NavbarCubit>().updateIndex(newIndex);
                },

                enableFeedback: false,
                type: BottomNavigationBarType.fixed,
                showSelectedLabels: true,
                showUnselectedLabels: true,

                selectedItemColor: context.customAppColors.primary800,
                unselectedItemColor: context.customAppColors.neutral300,

                selectedLabelStyle: AppTextStyles.font12Regular.copyWith(
                  color: context.customAppColors.primary800,
                ),
                unselectedLabelStyle: AppTextStyles.font12Regular.copyWith(
                  color: context.customAppColors.neutral300,
                ),

                items: [
                  BottomNavigationBarItem(
                    icon: buildNavBarIcon(
                      isSelected: currentIndex == 0,
                      filledIcon: AppIcons.iconsHomeFilled,
                      outlineIcon: AppIcons.iconsHomeOutline,
                    ),
                    label: S.of(context).restaurantHome,
                  ),
                  BottomNavigationBarItem(
                    icon: buildNavBarIcon(
                      isSelected: currentIndex == 1,
                      filledIcon: AppIcons.iconsDonationFilled,
                      outlineIcon: AppIcons.iconsDonationOutline,
                    ),
                    label: S.of(context).restaurantDonations,
                  ),
                  BottomNavigationBarItem(
                    icon: buildNavBarIcon(
                      isSelected: currentIndex == 2,
                      filledIcon: AppIcons.iconsArchiveFilled,
                      outlineIcon: AppIcons.iconsArchiveOutline,
                    ),
                    label: S.of(context).restaurantNotifications,
                  ),
                  BottomNavigationBarItem(
                    icon: buildNavBarIcon(
                      isSelected: currentIndex == 3,
                      filledIcon: AppIcons.iconsProfileFilled,
                      outlineIcon: AppIcons.iconsProfileOutline,
                    ),
                    label: S.of(context).restaurantProfile,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
