import 'package:app_links/app_links.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:qoot/core/helpers/app_logger.dart';
import '../../routing/routes.dart';

class DeepLinkService {
  final AppLinks _appLinks = AppLinks();
  StreamSubscription? _sub;

  void initLinks(BuildContext context) async {
    // Stream for incoming links while app is running
    _sub = _appLinks.uriLinkStream.listen(
      (uri) {
        _handleUri(context, uri);
      },
      onError: (err) {
        AppLogger.error('Deep link error: $err');
      },
    );

    // Initial URI when app is launched
    try {
      final initialUri = await _appLinks.getInitialLink();
      if (initialUri != null) {
        _handleUri(context, initialUri);
      }
    } catch (e) {
      AppLogger.error('Error fetching initial deep link: $e');
    }
  }

  void _handleUri(BuildContext context, Uri uri) {
    final email = uri.queryParameters['email'];
    final token = uri.queryParameters['token'];
    if (email != null && token != null) {
      Navigator.of(context).pushNamed(
        Routes.confirmEmailScreen,
        arguments: {'email': email, 'token': token},
      );
    }
  }

  void dispose() {
    _sub?.cancel();
  }
}
