import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/common/widgets/custom_button.dart';
import 'package:qoot/core/helpers/extensions.dart';
import 'package:qoot/core/helpers/spacing.dart';
import 'package:qoot/core/theme/app_texts/app_text_styles.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:qoot/features/charity_details/presentation/widgets/beneficiaries_progress_bar.dart';
import 'package:qoot/features/charity_details/presentation/widgets/charity_details_main_image.dart';
import 'package:qoot/features/charity_details/presentation/widgets/charity_details_title_section.dart';
import 'package:qoot/features/charity_details/presentation/widgets/charity_documents_bottom_sheet.dart';
import 'package:qoot/features/charity_details/presentation/widgets/charity_images_row.dart';
import 'package:qoot/features/charity_details/presentation/widgets/charity_story_section.dart';
import 'package:qoot/features/charity_details/presentation/widgets/charity_verified_section.dart';
import 'package:qoot/generated/l10n.dart';

class CharityDetailsScreen extends StatelessWidget {
  CharityDetailsScreen({super.key});

  final List<String> imageUrls = [
    'https://images.unsplash.com/photo-1564013799919-ab600027ffc6?w=400',
    'https://images.unsplash.com/photo-1593113630400-16fd46c3e20b?w=400',
    'https://images.unsplash.com/photo-1600596542815-ffad4c1539a9?w=400',
    'https://images.unsplash.com/photo-1486406146926-c627a92ad1ab?w=400',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.customAppColors.background,
      appBar: AppBar(
        backgroundColor: context.customAppColors.background,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: context.customAppColors.grey900,
          ),
          onPressed: () {
            context.pop();
          },
        ),
        title: Text(
          S.of(context).charityDetailsScreenTitle,
          style: AppTextStyles.font18Bold.copyWith(
            color: context.customAppColors.grey900,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              Icons.open_in_new,
              color: context.customAppColors.grey900,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FadeInUp(
              from: 20,
              child: CharityDetailsMainImage(
                imageUrl:
                    'https://images.unsplash.com/photo-1582407947304-fd86f028f716?w=400',
              ),
            ),

            CharityImagesRow(imageUrls: imageUrls),

            verticalSpace(20),

            CharityDetailsTitleSection(
              charityTitle: 'Charity Title Goes Here',
              charityLocation: 'Cairo, Egypt',
            ),

            BeneficiariesProgressBar(progress: 0.25, count: 125),

            verticalSpace(16),

            CharityVerifiedSection(
              charityName: 'Orphan Foundation',
              charityAbbreviation: 'OF',
              verificationDate: 'May 01 2023',
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  backgroundColor: Colors.transparent,
                  isScrollControlled: true,
                  builder: (context) => const CharityDocumentsBottomSheet(),
                );
              },
            ),

            verticalSpace(24),

            CharityStorySection(
              story:
                  'Join us in making a lasting impact on young lives by contributing to our Scholarship Donation Program for orphanages. Your generous donation will provide deserving children with access to quality education, opening doors to endless possibilities and a brighter future. Together, we can empower these young minds to achieve their dreams and transform their lives. Every contribution counts. Be the change-maker today and help shape a better tomorrow for these children.',
            ),

            verticalSpace(32),

            Padding(
              padding: EdgeInsets.all(16.r),
              child: CustomButton(
                text: S.of(context).charityDetailsScreenDonateButton,
                style: AppTextStyles.font16Bold.copyWith(
                  color: context.customAppColors.grey0,
                ),
                onTap: () {},
              ),
            ),

            verticalSpace(12),
          ],
        ),
      ),
    );
  }
}
