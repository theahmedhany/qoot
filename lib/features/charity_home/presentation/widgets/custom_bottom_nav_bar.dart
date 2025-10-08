import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qoot/core/helpers/extensions.dart';
import 'package:qoot/core/theme/app_colors/light_app_colors.dart';
import 'package:qoot/core/theme/app_texts/app_text_styles.dart';
import 'package:qoot/core/utils/app_icons.dart';
import 'package:qoot/features/charity_home/presentation/manager/navbar_cubit/navbar_cubit.dart';

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
      builder: (context, index) {
        final currentIndex = index is NavbarUpdate ? index.currentIndex : 0;

        return SafeArea(
          child: Scaffold(
            body: views[currentIndex],
            bottomNavigationBar: Container(
              height: 75,
              decoration: const BoxDecoration(
                color: Colors.white,
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
                backgroundColor: Colors.white,
                currentIndex: currentIndex,
                onTap: (newIndex) {
                  context.read<NavbarCubit>().updateIndex(newIndex);
                },
                type: BottomNavigationBarType.fixed,
                showSelectedLabels: true,
                showUnselectedLabels: true,
                selectedItemColor: LightAppColors.primary800,
                unselectedItemColor: LightAppColors.neutral300,
                selectedLabelStyle: AppTextStyles.font12Regular.copyWith(
                  color: LightAppColors.primary800,
                ),
                unselectedLabelStyle: AppTextStyles.font12Regular.copyWith(
                  color: LightAppColors.neutral300,
                ),
                items: [
                  BottomNavigationBarItem(
                    icon: buildNavBarIcon(
                      isSelected: currentIndex == 0,
                      filledIcon: AppIcons.iconsHomeFilled,
                      outlineIcon: AppIcons.iconsHomeOutline,
                    ),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: buildNavBarIcon(
                      isSelected: currentIndex == 1,
                      filledIcon: AppIcons.iconsDonationFilled,
                      outlineIcon: AppIcons.iconsDonationOutline,
                    ),
                    label: 'Donation',
                  ),
                  BottomNavigationBarItem(
                    icon: buildNavBarIcon(
                      isSelected: currentIndex == 2,
                      filledIcon: AppIcons.iconsArchiveFilled,
                      outlineIcon: AppIcons.iconsArchiveOutline,
                    ),
                    label: 'Reservations',
                  ),
                  BottomNavigationBarItem(
                    icon: buildNavBarIcon(
                      isSelected: currentIndex == 3,
                      filledIcon: AppIcons.iconsProfileFilled,
                      outlineIcon: AppIcons.iconsProfileOutline,
                    ),
                    label: 'Profile',
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
