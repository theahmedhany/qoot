import 'package:intl/intl.dart';

class HelperFunctions {
  HelperFunctions._();

  static Map<String, String> splitFullName(String fullName) {
    final trimmed = fullName.trim();

    // Find the index of the first space
    final firstSpaceIndex = trimmed.indexOf(' ');

    if (firstSpaceIndex == -1) {
      // Only one name provided
      return {
        'firstName': trimmed,
        'lastName': '',
      };
    }

    final firstName = trimmed.substring(0, firstSpaceIndex).trim();
    final lastName = trimmed.substring(firstSpaceIndex + 1).trim();

    return {
      'firstName': firstName,
      'lastName': lastName,
    };
  }

  static String formatDate(DateTime date) {
    return DateFormat('MMMM d, yyyy').format(date);
  }
}
