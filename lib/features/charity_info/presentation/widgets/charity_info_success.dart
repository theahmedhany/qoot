import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qoot/core/common/widgets/custom_app_bar.dart';
import 'package:qoot/core/common/widgets/custom_button.dart';
import 'package:qoot/core/helpers/extensions.dart';
import 'package:qoot/core/routing/routes.dart';
import 'package:qoot/core/theme/app_texts/app_text_styles.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:qoot/core/utils/app_icons.dart';
import 'package:qoot/features/charity_info/data/models/my_charity/charity_response.dart';
import 'package:qoot/features/charity_info/presentation/widgets/charity_stats.dart';
import 'package:qoot/features/charity_info/presentation/widgets/custom_charity_info_card.dart';
import 'package:qoot/features/charity_info/presentation/widgets/custom_location_charity_info.dart';
import 'package:qoot/generated/l10n.dart';

class CharityInfoSuccessWidget extends StatelessWidget {
  final CharityData? charity;

  const CharityInfoSuccessWidget({super.key, required this.charity});

  @override
  Widget build(BuildContext context) {
    if (charity == null) {
      return const Center(child: Text("No data found"));
    }

    return _buildCharityInfoUI(context, charity!);
  }

  Widget _buildCharityInfoUI(BuildContext context, CharityData charity) {
    final List<Map<String, dynamic>> charityTypes = [
      {"value": 1, "name": "Orphanage", "displayName": "دار أيتام"},
      {"value": 2, "name": "ElderlyHome", "displayName": "دار مسنين"},
      {"value": 3, "name": "Shelter", "displayName": "ملجأ"},
      {"value": 4, "name": "FoodBank", "displayName": "بنك طعام"},
      {"value": 5, "name": "Other", "displayName": "غير محدد"},
    ];
    String getCharityTypeName(int type, List<Map<String, dynamic>> typesList) {
      final typeMap = typesList.firstWhere(
        (element) => element['value'] == type,
        orElse: () => {"displayName": "غير محدد"},
      );
      return typeMap['displayName'] ?? "غير محدد";
    }

    final List<Map<String, dynamic>> infoCards = [
      {
        'title': S.of(context).charityName,
        'desc': charity.name,
      },
      {
        'title': S.of(context).address,
        'desc': charity.address,
      },
      {
        'isRow': true,
        'items': [
          {
            'title': S.of(context).capacity,
            'desc': charity.capacity.toString(),
          },
          {
            'title': S.of(context).foodType,
            'desc': getCharityTypeName(charity.type, charityTypes),
          },
        ],
      },
      {
        'title': S.of(context).description,
        'desc': charity.description,
      },
    ];
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              20.h.ph,
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
                          S.of(context).allCharityInfoHopeFoundation,
                          style: AppTextStyles.font20SemiBold.copyWith(
                            color: context.customAppColors.grey900,
                          ),
                        ),
                        subtitle: Text(
                          'Charity ID: ${charity.id}',
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
              const CustomLocationCharityInfo(),
              16.h.ph,
              const CharityStats(),
              28.h.ph,
              CustomButton(
                onTap: () {
                  context.pushNamed(Routes.editCharityInfoScreen);
                },
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
              28.h.ph,
            ],
          ),
        ),
      ),
    );
  }
}
