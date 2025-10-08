import 'package:flutter/widgets.dart';
import 'package:qoot/core/common/widgets/custom_header_container.dart';
import 'package:qoot/core/utils/app_images.dart';

class HomeCharityScreen extends StatelessWidget {
  const HomeCharityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomHeaderContainer(
          imagePath: AppImages.imagesOnboarding3,
          title: 'Welcome',
          subtitle: 'Hearts & Hands Charity',
        ),
      ],
    );
  }
}
