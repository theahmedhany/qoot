class TipModel {
  final String titleKey;
  final String subtitleKey;
  final String category;
  final String icon;

  TipModel({
    required this.titleKey,
    required this.subtitleKey,
    required this.category,
    required this.icon,
  });

  static final List<TipModel> tipsList = [
    TipModel(
      titleKey: "foodSafetyTips_keep_food_safe",
      subtitleKey: "foodSafetyTips_keep_food_safe_sub",
      category: "Storage",
      icon: "thermostat_outlined",
    ),
    TipModel(
      titleKey: "foodSafetyTips_refrigerate_leftovers",
      subtitleKey: "foodSafetyTips_refrigerate_leftovers_sub",
      category: "Storage",
      icon: "refrigerator",
    ),
    TipModel(
      titleKey: "foodSafetyTips_check_expiration",
      subtitleKey: "foodSafetyTips_check_expiration_sub",
      category: "Storage",
      icon: "calendar_today",
    ),
    TipModel(
      titleKey: "foodSafetyTips_separate_raw_meat",
      subtitleKey: "foodSafetyTips_separate_raw_meat_sub",
      category: "Storage",
      icon: "meat",
    ),

    TipModel(
      titleKey: "foodSafetyTips_wash_hands",
      subtitleKey: "foodSafetyTips_wash_hands_sub",
      category: "Handling",
      icon: "clean_hands",
    ),
    TipModel(
      titleKey: "foodSafetyTips_separate_raw_cooked",
      subtitleKey: "foodSafetyTips_separate_raw_cooked_sub",
      category: "Handling",
      icon: "warning_amber_rounded",
    ),
    TipModel(
      titleKey: "foodSafetyTips_use_clean_utensils",
      subtitleKey: "foodSafetyTips_use_clean_utensils_sub",
      category: "Handling",
      icon: "restaurant_menu",
    ),
    TipModel(
      titleKey: "foodSafetyTips_avoid_cross_contamination",
      subtitleKey: "foodSafetyTips_avoid_cross_contamination_sub",
      category: "Handling",
      icon: "no_food",
    ),

    TipModel(
      titleKey: "foodSafetyTips_serve_hygienically",
      subtitleKey: "foodSafetyTips_serve_hygienically_sub",
      category: "Serving",
      icon: "restaurant_menu",
    ),
    TipModel(
      titleKey: "foodSafetyTips_keep_hot_food",
      subtitleKey: "foodSafetyTips_keep_hot_food_sub",
      category: "Serving",
      icon: "thermostat",
    ),
    TipModel(
      titleKey: "foodSafetyTips_keep_cold_food",
      subtitleKey: "foodSafetyTips_keep_cold_food_sub",
      category: "Serving",
      icon: "ac_unit",
    ),
    TipModel(
      titleKey: "foodSafetyTips_avoid_touch_food",
      subtitleKey: "foodSafetyTips_avoid_touch_food_sub",
      category: "Serving",
      icon: "pan_tool",
    ),

    TipModel(
      titleKey: "foodSafetyTips_clean_kitchen",
      subtitleKey: "foodSafetyTips_clean_kitchen_sub",
      category: "Cleaning",
      icon: "cleaning_services",
    ),
    TipModel(
      titleKey: "foodSafetyTips_wash_cutting_boards",
      subtitleKey: "foodSafetyTips_wash_cutting_boards_sub",
      category: "Cleaning",
      icon: "table_bar",
    ),
    TipModel(
      titleKey: "foodSafetyTips_sanitize_cloths",
      subtitleKey: "foodSafetyTips_sanitize_cloths_sub",
      category: "Cleaning",
      icon: "wash",
    ),
    TipModel(
      titleKey: "foodSafetyTips_keep_trash_closed",
      subtitleKey: "foodSafetyTips_keep_trash_closed_sub",
      category: "Cleaning",
      icon: "delete",
    ),
  ];
}
