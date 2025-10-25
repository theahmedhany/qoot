import 'package:flutter/material.dart';
import 'package:qoot/core/helpers/app_logger.dart';
import 'package:qoot/core/helpers/extensions.dart';
import 'package:qoot/core/routing/routes.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:qoot/features/auth/auth_choice/presentation/widgets/ellipsed_text.dart';
import '../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../core/utils/app_images.dart';
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
      //navigate to authChoiceScreen
      context.pushNamedAndRemoveUntil(Routes.authChoiceScreen, predicate: (route) => false);
      AppLogger.log("we are navigating to main app screen");
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
            return SizedBox();
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
                  const OnBardingPageViewItem(
                    imagePath: AppImages.imagesOnboarding1,
                    title: "Reduce Waste",
                    subtitle:
                        "Every day, tons of food go to waste while thousands of people are in need, Join us in turning surplus food into meaningful meals",
                  ),
                  //second page
                  const OnBardingPageViewItem(
                    imagePath: AppImages.imagesOnboarding2,
                    title: "Reduce Waste",
                    subtitle:
                        "Every day, tons of food go to waste while thousands of people are in need, Join us in turning surplus food into meaningful meals",
                  ),
                  //third page
                  const OnBardingPageViewItem(
                    imagePath: AppImages.imagesOnboarding3,
                    title: "Reduce Waste",
                    subtitle:
                        "Every day, tons of food go to waste while thousands of people are in need, Join us in turning surplus food into meaningful meals",
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
                  text: _currentPageIndex == 2 ? "Get Started" : "Next",
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
