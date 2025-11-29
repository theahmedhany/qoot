import 'package:flutter/material.dart';
import 'package:qoot/core/di/service_locator.dart';

import '../../../../core/common/widgets/custom_loading.dart';
import '../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../../core/utils/app_animations.dart';
import '../../../../core/utils/app_images.dart';
import '../../../../generated/l10n.dart';
import '../../../auth/auth_choice/presentation/widgets/ellipsed_text.dart';
import '../logic/cubit/onboarding_cubit.dart';
import '../widgets/onboarding_next_button.dart';
import '../widgets/onboarding_pageview_indecators.dart';
import '../widgets/onboarding_pageview_item.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final PageController _pageController = PageController();

  int _currentPageIndex = 0;

  final List<String> _images = [
    AppImages.imagesOnboarding1,
    AppImages.imagesOnboarding2,
    AppImages.imagesOnboarding3,
  ];

  bool _isImagesLoaded = false;
  bool _didPrecache = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    if (!_didPrecache) {
      _precacheImages();
      _didPrecache = true;
    }
  }

  Future<void> _precacheImages() async {
    for (var path in _images) {
      await precacheImage(AssetImage(path), context);
    }

    setState(() {
      _isImagesLoaded = true;
    });
  }

  void onDotClicked(int index) {
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
    setState(() {
      _currentPageIndex = index;
    });
  }

  void onPageChanged(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  void onNextClicked(int index) {
    index = index + 1;
    if (index == 3) {
      getIt<OnboardingCubit>().completeOnboarding();

      return;
    }
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) {
          if (_isImagesLoaded == false) {
            return const CustomLoading(
              size: 100,
              loadingAnimation: AppAnimations.animationsSandyLoading,
            );
          }
          return Stack(
            children: [
              PageView(
                onPageChanged: onPageChanged,

                controller: _pageController,

                children: [
                  OnBardingPageViewItem(
                    imagePath: AppImages.imagesOnboarding1,
                    title: S.of(context).onboardingTitle1,
                    subtitle: S.of(context).onboardingSubtitle1,
                  ),

                  OnBardingPageViewItem(
                    imagePath: AppImages.imagesOnboarding2,
                    title: S.of(context).onboardingTitle2,
                    subtitle: S.of(context).onboardingSubtitle2,
                  ),

                  OnBardingPageViewItem(
                    imagePath: AppImages.imagesOnboarding3,
                    title: S.of(context).onboardingTitle3,
                    subtitle: S.of(context).onboardingSubtitle3,
                  ),
                ],
              ),

              OnboardinPageViewIndecators(
                pageController: _pageController,
                onDotClicked: onDotClicked,
              ),

              OnboardingNextButton(
                onNextClicked: () => onNextClicked(_currentPageIndex),
                child: EllipsedText(
                  text: _currentPageIndex == 2
                      ? S.of(context).getStarted
                      : S.of(context).next,
                  textStyle: AppTextStyles.font16SemiBold.copyWith(
                    color: context.customAppColors.white,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
