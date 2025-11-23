import 'package:qoot/core/constants/api_constants.dart';

class AppImageUrlBuilder {
  AppImageUrlBuilder._();
  static String build(String url) => ApiConstants.imageBaseUrl + url;
}
