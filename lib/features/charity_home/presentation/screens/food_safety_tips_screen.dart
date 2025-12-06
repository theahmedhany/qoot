import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qoot/core/common/widgets/custom_app_bar.dart';
import 'package:qoot/core/common/widgets/custom_text_form_field.dart';
import 'package:qoot/core/helpers/extensions.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:qoot/core/utils/app_icons.dart';
import 'package:qoot/features/charity_home/data/models/tip_model/tip_model.dart';
import 'package:qoot/features/charity_home/presentation/widgets/custom_filter_chip.dart';
import 'package:qoot/features/charity_home/presentation/widgets/tip_card.dart';
import 'package:qoot/generated/l10n.dart';

class TipsScreen extends StatefulWidget {
  const TipsScreen({super.key});

  @override
  State<TipsScreen> createState() => _TipsScreenState();
}

class _TipsScreenState extends State<TipsScreen> {
  String selectedCategoryKey = "All";
  String searchQuery = "";

  @override
  Widget build(BuildContext context) {
    final filters = _filterCategoryMap(context);
    List<TipModel> filteredTips = TipModel.tipsList.where((tip) {
      final title = S.of(context).textByKey(tip.titleKey).toLowerCase();
      final subtitle = S.of(context).textByKey(tip.subtitleKey).toLowerCase();
      final matchesSearch =
          title.startsWith(searchQuery.toLowerCase()) ||
          subtitle.startsWith(searchQuery.toLowerCase());
      final matchesCategory =
          selectedCategoryKey == "All" || tip.category == selectedCategoryKey;

      return matchesSearch && matchesCategory;
    }).toList();

    return Scaffold(
      backgroundColor: context.customAppColors.background,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            20.h.ph,
            CustomAppBar(text: S.of(context).charityHomeFoodSafetyTips),
            20.h.ph,
            AppTextFormField(
              prefixIcon: Padding(
                padding: EdgeInsets.all(12.w),
                child: SvgPicture.asset(
                  AppIcons.iconsSearch,
                  width: 16.w,
                  height: 16.h,
                ),
              ),
              onChanged: (value) => setState(() => searchQuery = value),
              hintText: S.of(context).searchForOrphanageOrDonation,
            ),
            16.h.ph,
            SizedBox(
              height: 40.h,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: filters.entries.map((entry) {
                  return CustomFilterChip(
                    text: entry.value,
                    isSelected: selectedCategoryKey == entry.key,
                    onTap: () {
                      setState(() {
                        selectedCategoryKey = entry.key;
                      });
                    },
                  );
                }).toList(),
              ),
            ),
            16.h.ph,
            Expanded(
              child: ListView.separated(
                itemCount: filteredTips.length,
                separatorBuilder: (_, __) => SizedBox(height: 12.h),
                itemBuilder: (_, index) {
                  final tip = filteredTips[index];
                  return TipsCard(
                    title: S.of(context).textByKey(tip.titleKey),
                    subtitle: S.of(context).textByKey(tip.subtitleKey),
                    icon: _getIconData(tip.icon),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Map<String, String> _filterCategoryMap(BuildContext context) {
    return {
      "All": S.of(context).filterAll,
      "Storage": S.of(context).filterStorage,
      "Handling": S.of(context).filterHandling,
      "Serving": S.of(context).filterServing,
      "Cleaning": S.of(context).filterCleaning,
    };
  }

  IconData _getIconData(String iconName) {
    switch (iconName) {
      case "thermostat_outlined":
        return Icons.thermostat_outlined;
      case "refrigerator":
        return Icons.ac_unit;
      case "calendar_today":
        return Icons.calendar_today;
      case "meat":
        return Icons.set_meal;
      case "clean_hands":
        return Icons.clean_hands;
      case "warning_amber_rounded":
        return Icons.warning_amber_rounded;
      case "restaurant_menu":
        return Icons.restaurant_menu;
      case "no_food":
        return Icons.no_food;
      case "thermostat":
        return Icons.thermostat;
      case "ac_unit":
        return Icons.ac_unit;
      case "pan_tool":
        return Icons.pan_tool;
      case "cleaning_services":
        return Icons.cleaning_services;
      case "table_bar":
        return Icons.table_bar;
      case "wash":
        return Icons.wash;
      case "delete":
        return Icons.delete;
      default:
        return Icons.info_outline;
    }
  }
}
