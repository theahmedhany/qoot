import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/data/local_data/current_user.dart';
import 'core/di/service_locator.dart';
import 'core/helpers/bloc_observer.dart';
import 'core/routing/app_router.dart';
import 'my_app.dart';

void main() async {
  //bloc observer for debugging bloc states
  Bloc.observer = AppBlocObserver();

  // Ensure that all bindings are initialized.
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize the service locator for dependency injection.
  await initServiceLocator();

  // initializing current user data before running the app
  await CurrentUser.init();

  // Initialize screen utilities.
  await ScreenUtil.ensureScreenSize();

  // Initialize shared preferences.
  // await SharedPrefHelper.init();    moved to service locator (get_it)

  // Make sure the app runs in full-screen mode.
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

  // Set the status bar color to transparent.
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

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
