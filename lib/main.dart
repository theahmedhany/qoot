import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/helpers/shared_pref_helper.dart';
import 'core/routing/app_router.dart';
import 'my_app.dart';

void main() async {
  // Ensure that all bindings are initialized.
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize screen utilities.
  await ScreenUtil.ensureScreenSize();

  // Initialize shared preferences.
  await SharedPrefHelper.init();

  // Make sure the app runs in full-screen mode.
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

  // Set the status bar color to transparent.
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );

  // Run the app with DevicePreview for testing on different devices.
  runApp(
    DevicePreview(
      enabled: false, //ToDo: active it when no need to preview
      // enabled: !kReleaseMode, //ToDo: active it to preview
      builder: (context) {
        return MyApp(appRouter: AppRouter());
      },
    ),
  );
}
