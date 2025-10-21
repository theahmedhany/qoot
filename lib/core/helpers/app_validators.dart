import 'dart:io';

import '../utils/enums.dart';
import 'app_regex.dart';

class AppValidators {
  // Email Validator
  static String? validateEmail(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Email is required';
    }
    if (!AppRegex.isEmailValid(value.trim())) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  // Password Validator
  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }
    if (!AppRegex.hasMinLength(value)) {
      return 'Password must be at least 8 characters long';
    }
    if (!AppRegex.hasUpperCase(value)) {
      return 'Password must contain at least one uppercase letter';
    }
    if (!AppRegex.hasLowerCase(value)) {
      return 'Password must contain at least one lowercase letter';
    }
    if (!AppRegex.hasNumber(value)) {
      return 'Password must contain at least one number';
    }
    if (!AppRegex.hasSpecialCharacter(value)) {
      return 'Password must contain at least one special character';
    }
    return null; // All checks passed
  }

  // Phone Number Validator
  static String? validatePhoneNumber(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Phone number is required';
    }
    if (!AppRegex.isPhoneNumberValid(value.trim())) {
      return 'Please enter a valid Egyptian phone number';
    }
    return null;
  }

  // Name Validator
  static String? validateName(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Name is required';
    }
    if (value.trim().length < 3) {
      return 'Name must be at least 3 characters';
    }
    return null;
  }

  //file validator
  static String? validateFile(
    File? file, {
    required List<String> allowedExtensions,
    required int maxFileSizeMB,
    String fieldName = 'File',
  }) {
    if (file == null) return '$fieldName is required';
    final ext = file.path.split('.').last.toLowerCase();
    if (!allowedExtensions.contains(ext)) {
      return 'Invalid file type. Allowed: ${allowedExtensions.join(', ')}';
    }
    final sizeInMB = file.lengthSync() / (1024 * 1024);
    if (sizeInMB > maxFileSizeMB) {
      return 'File size must be ≤ $maxFileSizeMB MB';
    }
    return null;
  }

  //capacity validator
  static String? validateCapacity(
    String? value, {
    String fieldName = 'Capacity',
    int? min,
    int? max,
  }) {
    if (value == null || value.trim().isEmpty) {
      return '$fieldName is required';
    }
    final intValue = int.tryParse(value);
    if (intValue == null) {
      return '$fieldName must be a valid integer';
    }
    if (min != null && intValue < min) {
      return '$fieldName must be at least $min';
    }
    if (max != null && intValue > max) {
      return '$fieldName must be at most $max';
    }
    return null;
  }

  //charity type validator
  static String? validateCharityType(int? value, {String fieldName = 'Charity Type'}) {
    if (value == null) {
      return '$fieldName is required';
    }
    final exists = CharityType.values.any((type) => type.value == value);
    if (!exists) {
      return 'Invalid $fieldName selected';
    }
    return null;
  }

  // Validates address
  static String? validateAddress(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Address is required';
    } else if (value.trim().length < 5) {
      return 'Address must be at least 5 characters long';
    } else if (value.trim().length > 150) {
      return 'Address must be less than 150 characters';
    }
    return null;
  }

  // Validates description
  static String? validateDescription(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Description is required';
    } else if (value.trim().length < 20) {
      return 'Description must be at least 20 characters long';
    } else if (value.trim().length > 500) {
      return 'Description must be less than 500 characters';
    }
    return null;
  }
}
