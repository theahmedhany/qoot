import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:qoot/generated/l10n.dart';

String formatDate(String? dateString) {
  if (dateString == null || dateString.isEmpty) return '';

  try {
    final date = DateTime.parse(dateString);
    return DateFormat('dd MMM  • hh:mm a').format(date);
  } catch (e) {
    return dateString;
  }
}

String formatRelativeDate(String? dateString, BuildContext context) {
  if (dateString == null || dateString.isEmpty) return '';

  try {
    final date = DateTime.parse(dateString);
    final now = DateTime.now();

    final dateOnly = DateTime(date.year, date.month, date.day);
    final nowOnly = DateTime(now.year, now.month, now.day);

    final difference = dateOnly.difference(nowOnly).inDays;

    String time = DateFormat('h a').format(date);

    if (difference == 0) {
      return "${S.of(context).today} $time";
    } else if (difference == -1) {
      return "${S.of(context).tomorrow} $time";
    } else {
      return DateFormat('dd MMM • hh:mm a').format(date);
    }
  } catch (e) {
    return dateString;
  }
}

String formatExpiryDate(String? rawDate) {
  if (rawDate == null || rawDate.isEmpty) return '';
  try {
    final date = DateTime.parse(rawDate);
    return DateFormat('hh:mm a').format(date);
  } catch (e) {
    return rawDate;
  }
}
