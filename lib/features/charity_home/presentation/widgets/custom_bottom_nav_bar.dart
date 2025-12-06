import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/helpers/extensions.dart';
import '../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../../core/utils/app_icons.dart';
import '../../../../generated/l10n.dart';
import '../manager/navbar_cubit/navbar_cubit.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key, required this.views});
  final List<Widget> views;

  Widget buildNavBarIcon({
    required bool isSelected,
    required String filledIcon,
    required String outlineIcon,
    required BuildContext context,
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
            colorFilter: ColorFilter.mode(
              isSelected
                  ? context.customAppColors.primary800
                  : context.customAppColors.grey300,
              BlendMode.srcIn,
            ),
          ),
        ),
        5.ph,
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavbarCubit, NavbarState>(
      builder: (context, state) {
        final currentIndex = state is NavbarUpdate ? state.currentIndex : 0;

        return Scaffold(
          backgroundColor: context.customAppColors.background,
          body: views[currentIndex],

          bottomNavigationBar: Container(
            padding: EdgeInsets.only(
              left: 8.r,
              right: 8.r,
              top: 8.r,
              bottom: 12.r,
            ),
            decoration: BoxDecoration(
              color: context.customAppColors.grey0,
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
                backgroundColor: context.customAppColors.grey0,

                currentIndex: currentIndex,
                onTap: (newIndex) {
                  context.read<NavbarCubit>().updateIndex(newIndex);
                },

                type: BottomNavigationBarType.fixed,
                showSelectedLabels: true,
                showUnselectedLabels: true,

                selectedItemColor: context.customAppColors.primary800,
                unselectedItemColor: context.customAppColors.neutral300,

                selectedLabelStyle: AppTextStyles.font12Regular.copyWith(
                  color: context.customAppColors.primary800,
                ),
                unselectedLabelStyle: AppTextStyles.font12Regular.copyWith(
                  color: context.customAppColors.grey300,
                ),

                items: [
                  BottomNavigationBarItem(
                    icon: buildNavBarIcon(
                      isSelected: currentIndex == 0,
                      filledIcon: AppIcons.iconsHomeFilled,
                      outlineIcon: AppIcons.iconsHomeOutline,
                      context: context,
                    ),
                    label: S.of(context).charityhome,
                  ),

                  BottomNavigationBarItem(
                    icon: buildNavBarIcon(
                      isSelected: currentIndex == 1,
                      filledIcon: AppIcons.iconsDonationFilled,
                      outlineIcon: AppIcons.iconsDonationOutline,
                      context: context,
                    ),
                    label: S.of(context).charitydonations,
                  ),

                  BottomNavigationBarItem(
                    icon: buildNavBarIcon(
                      isSelected: currentIndex == 2,
                      filledIcon: AppIcons.iconsArchiveFilled,
                      outlineIcon: AppIcons.iconsArchiveOutline,
                      context: context,
                    ),
                    label: S.of(context).charityreservations,
                  ),

                  BottomNavigationBarItem(
                    icon: buildNavBarIcon(
                      isSelected: currentIndex == 3,
                      filledIcon: AppIcons.iconsProfileFilled,
                      outlineIcon: AppIcons.iconsProfileOutline,
                      context: context,
                    ),
                    label: S.of(context).charityprofile,
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
