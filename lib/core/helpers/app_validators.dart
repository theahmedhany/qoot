import 'dart:io';

import '../utils/enums.dart';
import 'app_regex.dart';

class AppValidators {
  // Email Validator
  static String? validateEmail(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'البريد الإلكتروني مطلوب';
    }
    if (!AppRegex.isEmailValid(value.trim())) {
      return 'الرجاء إدخال بريد إلكتروني صالح';
    }
    return null;
  }

  // Password Validator
  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'كلمة المرور مطلوبة';
    }
    if (!AppRegex.hasMinLength(value)) {
      return 'يجب أن تكون كلمة المرور 8 أحرف على الأقل';
    }
    if (!AppRegex.hasUpperCase(value)) {
      return 'يجب أن تحتوي كلمة المرور على حرف كبير واحد على الأقل';
    }
    if (!AppRegex.hasLowerCase(value)) {
      return 'يجب أن تحتوي كلمة المرور على حرف صغير واحد على الأقل';
    }
    if (!AppRegex.hasNumber(value)) {
      return 'يجب أن تحتوي كلمة المرور على رقم واحد على الأقل';
    }
    if (!AppRegex.hasSpecialCharacter(value)) {
      return 'يجب أن تحتوي كلمة المرور على رمز خاص واحد على الأقل';
    }
    return null; // All checks passed
  }

  // Phone Number Validator
  static String? validatePhoneNumber(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'رقم الهاتف مطلوب';
    }
    if (!AppRegex.isPhoneNumberValid(value.trim())) {
      return 'الرجاء إدخال رقم هاتف مصري صالح';
    }
    return null;
  }

  // Name Validator
  static String? validateName(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'الاسم مطلوب';
    }
    if (!AppRegex.hasMinLength(value)) {
      return 'يجب أن يكون الاسم 8 أحرف على الأقل';
    }
    return null;
  }

  // Full Name Validator
  static String? validateFullName(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'الرجاء إدخال الاسم الكامل';
    }

    // Remove extra spaces
    final trimmed = value.trim();

    // Split by spaces
    final parts = trimmed.split(RegExp(r'\s+'));

    // Check if there are at least two parts (first & last name)
    if (parts.length < 2) {
      return 'الرجاء إدخال الاسم الأول واسم العائلة';
    }

    // Ensure all parts are alphabetic (no numbers or symbols)
    final nameRegex = RegExp(r"^[a-zA-Z]+$");
    for (var part in parts) {
      if (!nameRegex.hasMatch(part)) {
        return 'يجب أن يحتوي الاسم على أحرف فقط';
      }
    }

    return null;
  }

  // File validator
  static String? validateFile(
    File? file, {
    required List<String> allowedExtensions,
    required int maxFileSizeMB,
    String fieldName = 'الملف',
  }) {
    if (file == null) return '$fieldName مطلوب';
    final ext = file.path.split('.').last.toLowerCase();
    if (!allowedExtensions.contains(ext)) {
      return 'نوع الملف غير صالح. الأنواع المسموح بها: ${allowedExtensions.join(', ')}';
    }
    final sizeInMB = file.lengthSync() / (1024 * 1024);
    if (sizeInMB > maxFileSizeMB) {
      return 'يجب أن يكون حجم الملف ≤ $maxFileSizeMB ميغابايت';
    }
    return null;
  }

  // Capacity validator
  static String? validateCapacity(
    String? value, {
    String fieldName = 'السعة',
    int? min,
    int? max,
  }) {
    if (value == null || value.trim().isEmpty) {
      return '$fieldName مطلوب';
    }
    final intValue = int.tryParse(value);
    if (intValue == null) {
      return 'يجب أن يكون $fieldName عدداً صحيحاً';
    }
    if (min != null && intValue < min) {
      return 'يجب أن تكون $fieldName على الأقل $min';
    }
    if (max != null && intValue > max) {
      return 'يجب أن تكون $fieldName على الأكثر $max';
    }
    return null;
  }

  // Charity type validator
  static String? validateCharityType(
    int? value, {
    String fieldName = 'نوع الجمعية',
  }) {
    if (value == null) {
      return '$fieldName مطلوب';
    }
    final exists = CharityType.values.any((type) => type.value == value);
    if (!exists) {
      return 'تم اختيار $fieldName غير صالح';
    }
    return null;
  }

  // Validates address
  static String? validateAddress(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'العنوان مطلوب';
    } else if (value.trim().length < 5) {
      return 'يجب أن يكون العنوان 5 أحرف على الأقل';
    } else if (value.trim().length > 150) {
      return 'يجب أن يكون العنوان أقل من 150 حرفاً';
    }
    return null;
  }

  // Validates description
  static String? validateDescription(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'الوصف مطلوب';
    } else if (value.trim().length < 20) {
      return 'يجب أن يكون الوصف 20 حرفاً على الأقل';
    } else if (value.trim().length > 500) {
      return 'يجب أن يكون الوصف أقل من 500 حرف';
    }
    return null;
  }
}
