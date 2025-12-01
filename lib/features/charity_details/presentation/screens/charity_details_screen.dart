import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/common/widgets/custom_button.dart';
import 'package:qoot/core/constants/api_constants.dart';
import 'package:qoot/core/helpers/extensions.dart';
import 'package:qoot/core/helpers/launch_custom_url.dart';
import 'package:qoot/core/helpers/spacing.dart';
import 'package:qoot/core/models/charity_type.dart';
import 'package:qoot/core/routing/routes.dart';
import 'package:qoot/core/theme/app_texts/app_text_styles.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:qoot/features/all_charities/data/models/all_charities_model.dart';
import 'package:qoot/features/charity_details/presentation/widgets/beneficiaries_progress_bar.dart';
import 'package:qoot/features/charity_details/presentation/widgets/charity_details_main_image.dart';
import 'package:qoot/features/charity_details/presentation/widgets/charity_details_title_section.dart';
import 'package:qoot/features/charity_details/presentation/widgets/charity_documents_bottom_sheet.dart';
import 'package:qoot/features/charity_details/presentation/widgets/charity_images_row.dart';
import 'package:qoot/features/charity_details/presentation/widgets/charity_story_section.dart';
import 'package:qoot/features/charity_details/presentation/widgets/charity_verified_section.dart';
import 'package:qoot/generated/l10n.dart';

class CharityDetailsScreen extends StatelessWidget {
  const CharityDetailsScreen({super.key, required this.charity});

  final CharityItem charity;

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
            onPressed: () async {
              await openLocationInGoogleMaps(
                context,
                lat: charity.latitude,
                lng: charity.longitude,
              );
            },
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
                    '${ApiConstants.imageBaseUrl}${charity.images.first.imagePath}',
              ),
            ),

            CharityImagesRow(
              imageUrls: charity.images
                  .skip(1)
                  .map((img) => '${ApiConstants.imageBaseUrl}${img.imagePath}')
                  .toList(),
            ),

            verticalSpace(20),

            CharityDetailsTitleSection(
              charityTitle: charity.name,
              charityLocation: charity.address,
              charityType: getCharityDisplayName(charity.type),
            ),

            BeneficiariesProgressBar(
              progress: capacityToDecimal(charity.capacity),
              count: charity.capacity,
            ),

            verticalSpace(16),

            CharityVerifiedSection(
              charityName: charity.contactName,
              charityAbbreviation: getNameInitials(charity.contactName),
              verificationDate: formatArabicDate(charity.createdAt),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  backgroundColor: Colors.transparent,
                  isScrollControlled: true,
                  builder: (context) => CharityDocumentsBottomSheet(
                    charity: charity,
                  ),
                );
              },
            ),

            verticalSpace(24),

            CharityStorySection(
              story: charity.description,
            ),

            verticalSpace(32),

            Padding(
              padding: EdgeInsets.all(16.r),
              child: CustomButton(
                text: S.of(context).donateNow,
                style: AppTextStyles.font16Bold.copyWith(
                  color: context.customAppColors.grey0,
                ),
                onTap: () {
                  context.pushNamed(Routes.createDonationScreen);
                },
              ),
            ),

            verticalSpace(12),
          ],
        ),
      ),
    );
  }

  double capacityToDecimal(int capacity, {int maxCapacity = 500}) {
    if (maxCapacity == 0) return 0;
    return capacity / maxCapacity;
  }

  String formatArabicDate(String dateString) {
    DateTime date = DateTime.parse(dateString);

    const months = [
      "يناير",
      "فبراير",
      "مارس",
      "أبريل",
      "مايو",
      "يونيو",
      "يوليو",
      "أغسطس",
      "سبتمبر",
      "أكتوبر",
      "نوفمبر",
      "ديسمبر",
    ];

    String day = date.day.toString();
    String month = months[date.month - 1];
    String year = date.year.toString();

    return "$day $month $year";
  }

  String getNameInitials(String fullName) {
    final parts = fullName.trim().split(" ");

    if (parts.length >= 2) {
      final first = parts.first.characters.first;
      final last = parts.last.characters.first;
      return "$first$last";
    }

    final name = parts.first;
    if (name.length == 1) return name;

    return "${name.characters.first}${name.characters.last}";
  }

  Future<void> openLocationInGoogleMaps(
    context, {
    required double lat,
    required double lng,
  }) async {
    final googleMapsWebUrl =
        "https://www.google.com/maps/search/?api=1&query=$lat,$lng";

    await launchCustomUrl(context, googleMapsWebUrl);
  }
}
