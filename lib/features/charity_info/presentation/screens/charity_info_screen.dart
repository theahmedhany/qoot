import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qoot/core/common/widgets/custom_app_bar.dart';
import 'package:qoot/core/common/widgets/custom_button.dart';
import 'package:qoot/core/helpers/extensions.dart';
import 'package:qoot/core/theme/app_texts/app_text_styles.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:qoot/core/utils/app_icons.dart';
import 'package:qoot/features/charity_info/presentation/widgets/charity_stats.dart';
import 'package:qoot/features/charity_info/presentation/widgets/custom_charity_info_card.dart';
import 'package:qoot/features/charity_info/presentation/widgets/custom_location_charity_info.dart';
import 'package:qoot/generated/l10n.dart';

class CharityInfoScreen extends StatelessWidget {
  const CharityInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> infoCards = [
      {'title': 'Charity Name', 'desc': 'Hope Foundation for Children'},
      {'title': 'Address', 'desc': '123 Charity Street, Downtown, City 12345'},
      {
        'isRow': true,
        'items': [
          {'title': 'Capacity', 'desc': '500 Beneficiaries', 'width': 140.w},
          {'title': 'Type', 'desc': 'Children\'s Welfare', 'width': 140.w},
        ],
      },
      {
        'title': 'Description',
        'desc':
            'We provide food, education, and healthcare support to underprivileged children in urban areas. Our mission is to create a better future for every child through comprehensive care programs.',
      },
    ];

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              14.h.ph,
              CustomAppBar(text: S.of(context).allCharityInfo),
              20.h.ph,
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  border: Border.all(color: context.customAppColors.grey100),
                ),
                child: Padding(
                  padding: EdgeInsets.all(16.h),
                  child: Column(
                    children: [
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: Container(
                          width: 64.h,
                          height: 64.h,
                          decoration: BoxDecoration(
                            color: context.customAppColors.primary800,
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          child: Center(
                            child: SvgPicture.asset(
                              AppIcons.foundationIcon,
                              height: 20.h,
                              width: 25.w,
                            ),
                          ),
                        ),
                        title: Text(
                          'Hope Foundation',
                          style: AppTextStyles.font20SemiBold.copyWith(
                            color: context.customAppColors.grey900,
                          ),
                        ),

                        subtitle: Text(
                          'Charity ID: #CF2024001',
                          style: AppTextStyles.font14Regular.copyWith(
                            color: context.customAppColors.accent600,
                          ),
                        ),
                      ),
                      16.h.ph,
                      for (var card in infoCards) ...[
                        if (card['isRow'] == true)
                          IntrinsicHeight(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                for (var item in card['items']) ...[
                                  Expanded(
                                    child: CustomCharityInfoCard(
                                      title: item['title'],
                                      desc: item['desc'],
                                      width: double.infinity,
                                    ),
                                  ),
                                  if (item != card['items'].last) 16.w.pw,
                                ],
                              ],
                            ),
                          )
                        else
                          CustomCharityInfoCard(
                            title: card['title'],
                            desc: card['desc'],
                            width: double.infinity,
                          ),
                        if (card != infoCards.last) 16.h.ph,
                      ],
                    ],
                  ),
                ),
              ),
              18.h.ph,
              CustomLocationCharityInfo(),
              16.h.ph,
              CharityStats(),
              28.h.ph,
              CustomButton(
                text: S.of(context).editCharityInfo,
                isIcon: true,
                icon: Icons.edit_note_rounded,
              ),
              16.h.ph,
              CustomButton(
                color: Colors.transparent,
                textColor: context.customAppColors.error500,
                text: S.of(context).deleteCharity,
                isIcon: true,
                icon: Icons.delete,
                iconColor: context.customAppColors.error500,
                borderColor: context.customAppColors.error500,
              ),
              10.h.ph,
            ],
          ),
        ),
      ),
    );
  }
}
