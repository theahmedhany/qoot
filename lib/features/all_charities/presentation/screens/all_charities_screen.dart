import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/extensions.dart';
import '../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../../generated/l10n.dart';
import '../widgets/all_charities_list.dart';

class AllCharitiesScreen extends StatelessWidget {
  const AllCharitiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final charities = [
      CharityItem(
        imageUrl:
            'https://images.unsplash.com/photo-1564013799919-ab600027ffc6?w=400',
        name: 'Charity Name',
        location: 'Cairo, Egypt',
        rating: '56',
      ),
      CharityItem(
        imageUrl:
            'https://images.unsplash.com/photo-1600596542815-ffad4c1539a9?w=400',
        name: 'Charity Name',
        location: 'Cairo, Egypt',
        rating: '56',
      ),
      CharityItem(
        imageUrl:
            'https://images.unsplash.com/photo-1486406146926-c627a92ad1ab?w=400',
        name: 'Charity Name',
        location: 'Cairo, Egypt',
        rating: '56',
      ),
      CharityItem(
        imageUrl:
            'https://images.unsplash.com/photo-1545324418-cc1a3fa10c00?w=400',
        name: 'Charity Name',
        location: 'Cairo, Egypt',
        rating: '56',
      ),
      CharityItem(
        imageUrl:
            'https://images.unsplash.com/photo-1560448204-e02f11c3d0e2?w=400',
        name: 'Charity Name',
        location: 'Cairo, Egypt',
        rating: '56',
      ),
      CharityItem(
        imageUrl:
            'https://images.unsplash.com/photo-1582407947304-fd86f028f716?w=400',
        name: 'Charity Name',
        location: 'Cairo, Egypt',
        rating: '56',
      ),
      CharityItem(
        imageUrl:
            'https://images.unsplash.com/photo-1564013799919-ab600027ffc6?w=400',
        name: 'Charity Name',
        location: 'Cairo, Egypt',
        rating: '56',
      ),
      CharityItem(
        imageUrl:
            'https://images.unsplash.com/photo-1600596542815-ffad4c1539a9?w=400',
        name: 'Charity Name',
        location: 'Cairo, Egypt',
        rating: '56',
      ),
      CharityItem(
        imageUrl:
            'https://images.unsplash.com/photo-1486406146926-c627a92ad1ab?w=400',
        name: 'Charity Name',
        location: 'Cairo, Egypt',
        rating: '56',
      ),
      CharityItem(
        imageUrl:
            'https://images.unsplash.com/photo-1545324418-cc1a3fa10c00?w=400',
        name: 'Charity Name',
        location: 'Cairo, Egypt',
        rating: '56',
      ),
      CharityItem(
        imageUrl:
            'https://images.unsplash.com/photo-1582407947304-fd86f028f716?w=400',
        name: 'Charity Name',
        location: 'Cairo, Egypt',
        rating: '56',
      ),
    ];

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
          S.of(context).allCharitiesScreenTitle,
          style: AppTextStyles.font18Bold.copyWith(
            color: context.customAppColors.grey900,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.r),
        child: AllCharitiesList(charities: charities),
      ),
    );
  }
}

// TODO: Remove this with actual Charity model.
class CharityItem {
  final String imageUrl;
  final String name;
  final String location;
  final String rating;

  CharityItem({
    required this.imageUrl,
    required this.name,
    required this.location,
    required this.rating,
  });
}
