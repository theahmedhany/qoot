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
  //page controller for [PageView & SmoothPageIndicator]
  final PageController _pageController = PageController();

  //page view current index
  int _currentPageIndex = 0;

  final List<String> _images = [
    AppImages.imagesOnboarding1,
    AppImages.imagesOnboarding2,
    AppImages.imagesOnboarding3,
  ];

  bool _isImagesLoaded = false;
  bool _didPrecache = false; // to ensure it runs only once

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // Run precaching once when context is ready
    if (!_didPrecache) {
      _precacheImages();
      _didPrecache = true;
    }
  }

  //Precache all images before showing the PageView
  Future<void> _precacheImages() async {
    for (var path in _images) {
      await precacheImage(AssetImage(path), context);
    }

    //After preloading, rebuild UI to show the PageView
    setState(() {
      _isImagesLoaded = true;
    });
  }

  //on dot clicked
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

  //when user scrolle the page by his finger
  void onPageChanged(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  //on next button clicked
  void onNextClicked(int index) {
    index = index + 1;
    if (index == 3) {
      //change onboarding completed status in local storage
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
              //page view controll page scro
              PageView(
                //when user scrolle the page by his finger
                onPageChanged: onPageChanged,

                //controller of the pageview
                controller: _pageController,

                children: [
                  //onboarding page view items
                  //first page
                  OnBardingPageViewItem(
                    imagePath: AppImages.imagesOnboarding1,
                    title: S.of(context).onboardingTitle1,
                    subtitle: S.of(context).onboardingSubtitle1,
                  ),
                  //second page
                  OnBardingPageViewItem(
                    imagePath: AppImages.imagesOnboarding2,
                    title: S.of(context).onboardingTitle2,
                    subtitle: S.of(context).onboardingSubtitle2,
                  ),
                  //third page
                  OnBardingPageViewItem(
                    imagePath: AppImages.imagesOnboarding3,
                    title: S.of(context).onboardingTitle3,
                    subtitle: S.of(context).onboardingSubtitle3,
                  ),
                ],
              ),

              //smooth page indicator with expand effect
              OnboardinPageViewIndecators(
                pageController: _pageController,
                onDotClicked: onDotClicked,
              ),

              //next button
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
