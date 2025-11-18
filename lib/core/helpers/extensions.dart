import 'package:flutter/widgets.dart';
import 'package:qoot/generated/l10n.dart';

extension Navigation on BuildContext {
  Future<dynamic> pushNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
    return Navigator.of(
      this,
    ).pushReplacementNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushNamedAndRemoveUntil(
    String routeName, {
    Object? arguments,
    required RoutePredicate predicate,
  }) {
    return Navigator.of(
      this,
    ).pushNamedAndRemoveUntil(routeName, predicate, arguments: arguments);
  }

  void pop() => Navigator.of(this).pop();
}

extension EmptyPadding on num {
  SizedBox get ph => SizedBox(height: toDouble());
  SizedBox get pw => SizedBox(width: toDouble());
}

extension SLocalizationHelper on S {
  String textByKey(String key) {
    switch (key) {
      case "foodSafetyTips_keep_food_safe":
        return foodSafetyTips_keep_food_safe;
      case "foodSafetyTips_keep_food_safe_sub":
        return foodSafetyTips_keep_food_safe_sub;
      case "foodSafetyTips_refrigerate_leftovers":
        return foodSafetyTips_refrigerate_leftovers;
      case "foodSafetyTips_refrigerate_leftovers_sub":
        return foodSafetyTips_refrigerate_leftovers_sub;
      case "foodSafetyTips_check_expiration":
        return foodSafetyTips_check_expiration;
      case "foodSafetyTips_check_expiration_sub":
        return foodSafetyTips_check_expiration_sub;
      case "foodSafetyTips_separate_raw_meat":
        return foodSafetyTips_separate_raw_meat;
      case "foodSafetyTips_separate_raw_meat_sub":
        return foodSafetyTips_separate_raw_meat_sub;
      case "foodSafetyTips_wash_hands":
        return foodSafetyTips_wash_hands;
      case "foodSafetyTips_wash_hands_sub":
        return foodSafetyTips_wash_hands_sub;
      case "foodSafetyTips_separate_raw_cooked":
        return foodSafetyTips_separate_raw_cooked;
      case "foodSafetyTips_separate_raw_cooked_sub":
        return foodSafetyTips_separate_raw_cooked_sub;
      case "foodSafetyTips_use_clean_utensils":
        return foodSafetyTips_use_clean_utensils;
      case "foodSafetyTips_use_clean_utensils_sub":
        return foodSafetyTips_use_clean_utensils_sub;
      case "foodSafetyTips_avoid_cross_contamination":
        return foodSafetyTips_avoid_cross_contamination;
      case "foodSafetyTips_avoid_cross_contamination_sub":
        return foodSafetyTips_avoid_cross_contamination_sub;
      case "foodSafetyTips_serve_hygienically":
        return foodSafetyTips_serve_hygienically;
      case "foodSafetyTips_serve_hygienically_sub":
        return foodSafetyTips_serve_hygienically_sub;
      case "foodSafetyTips_keep_hot_food":
        return foodSafetyTips_keep_hot_food;
      case "foodSafetyTips_keep_hot_food_sub":
        return foodSafetyTips_keep_hot_food_sub;
      case "foodSafetyTips_keep_cold_food":
        return foodSafetyTips_keep_cold_food;
      case "foodSafetyTips_keep_cold_food_sub":
        return foodSafetyTips_keep_cold_food_sub;
      case "foodSafetyTips_avoid_touch_food":
        return foodSafetyTips_avoid_touch_food;
      case "foodSafetyTips_avoid_touch_food_sub":
        return foodSafetyTips_avoid_touch_food_sub;
      case "foodSafetyTips_clean_kitchen":
        return foodSafetyTips_clean_kitchen;
      case "foodSafetyTips_clean_kitchen_sub":
        return foodSafetyTips_clean_kitchen_sub;
      case "foodSafetyTips_wash_cutting_boards":
        return foodSafetyTips_wash_cutting_boards;
      case "foodSafetyTips_wash_cutting_boards_sub":
        return foodSafetyTips_wash_cutting_boards_sub;
      case "foodSafetyTips_sanitize_cloths":
        return foodSafetyTips_sanitize_cloths;
      case "foodSafetyTips_sanitize_cloths_sub":
        return foodSafetyTips_sanitize_cloths_sub;
      case "foodSafetyTips_keep_trash_closed":
        return foodSafetyTips_keep_trash_closed;
      case "foodSafetyTips_keep_trash_closed_sub":
        return foodSafetyTips_keep_trash_closed_sub;
      default:
        return key;
    }
  }
}
