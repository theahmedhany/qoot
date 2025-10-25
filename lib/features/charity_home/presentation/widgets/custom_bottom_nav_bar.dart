import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qoot/core/helpers/extensions.dart';
import 'package:qoot/core/theme/app_texts/app_text_styles.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:qoot/core/utils/app_icons.dart';
import 'package:qoot/features/charity_home/presentation/manager/navbar_cubit/navbar_cubit.dart';
import 'package:qoot/generated/l10n.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key, required this.views});
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
      builder: (context, state) {
        final currentIndex = state is NavbarUpdate ? state.currentIndex : 0;
        return Scaffold(
          body: SafeArea(child: views[currentIndex]),
          bottomNavigationBar: Container(
            padding: EdgeInsets.symmetric(vertical: 8.h),
            decoration: BoxDecoration(
              color: context.customAppColors.grey0,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  offset: Offset(0, -1),
                ),
              ],
            ),
            child: BottomNavigationBar(
              elevation: 2,
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
                color: context.customAppColors.neutral300,
              ),
              items: [
                BottomNavigationBarItem(
                  icon: buildNavBarIcon(
                    isSelected: currentIndex == 0,
                    filledIcon: AppIcons.iconsHomeFilled,
                    outlineIcon: AppIcons.iconsHomeOutline,
                  ),
                  label: S.of(context).charityhome,
                ),
                BottomNavigationBarItem(
                  icon: buildNavBarIcon(
                    isSelected: currentIndex == 1,
                    filledIcon: AppIcons.iconsDonationFilled,
                    outlineIcon: AppIcons.iconsDonationOutline,
                  ),
                  label: S.of(context).charitydonations,
                ),
                BottomNavigationBarItem(
                  icon: buildNavBarIcon(
                    isSelected: currentIndex == 2,
                    filledIcon: AppIcons.iconsArchiveFilled,
                    outlineIcon: AppIcons.iconsArchiveOutline,
                  ),
                  label: S.of(context).charityreservations,
                ),
                BottomNavigationBarItem(
                  icon: buildNavBarIcon(
                    isSelected: currentIndex == 3,
                    filledIcon: AppIcons.iconsProfileFilled,
                    outlineIcon: AppIcons.iconsProfileOutline,
                  ),
                  label: S.of(context).charityprofile,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
