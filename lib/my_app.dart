import 'dart:async';

import 'package:app_links/app_links.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/di/service_locator.dart';
import 'package:qoot/core/middlewares/cubit/auth_middleware_cubit.dart';
import 'package:qoot/features/auth/login/presentation/logic/cubit/login_cubit.dart';
import 'package:qoot/features/auth/register_charity/presentation/logic/cubit/register_charity_cubit.dart';
import 'package:qoot/features/auth/register_restaurant/presentation/logic/cubit/register_restaurant_cubit.dart';
import 'package:qoot/features/onboarding/presentation/logic/cubit/onboarding_cubit.dart';

import 'core/helpers/app_logger.dart';
import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';
import 'core/theme/theme_data/dark_them_data.dart';
import 'core/theme/theme_data/light_theme_data.dart';
import 'core/theme/theme_manager/theme_cubit.dart';
import 'features/auth/register_account/presentation/logic/cubit/register_cubit.dart';
import 'features/auth/send_email_confirmation/presentation/logic/cubit/send_email_confirmation_cubit.dart';
import 'features/auth/send_email_reset_password/presentation/logic/cubit/forget_password_cubit.dart';
import 'generated/l10n.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key, required this.appRouter});

  final AppRouter appRouter;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();
  StreamSubscription<Uri>? _linkSubscription;

  @override
  void initState() {
    super.initState();
    handleInitialLink();
    handleIncomingLinks();
  }

  @override
  void dispose() {
    _linkSubscription?.cancel();
    super.dispose();
  }

  Future<void> handleInitialLink() async {
    try {
      final initialLink = await AppLinks().getInitialLink();
      if (initialLink != null) {
        _navigateToLink(initialLink);
      }
    } catch (e) {
      AppLogger.error("Error getting initial link: $e");
    }
  }

  void handleIncomingLinks() {
    _linkSubscription = AppLinks().uriLinkStream.listen(
      (Uri? uri) {
        if (uri != null) {
          _navigateToLink(uri);
        }
      },
      onError: (err) {
        AppLogger.error("Error in link stream: $err");
      },
    );
  }

  void _navigateToLink(Uri uri) {
    if (uri.path == '/api/open-app/confirm-email') {
      final email = uri.queryParameters['email'] ?? '';
      final token = uri.queryParameters['token'] ?? '';
      _navigatorKey.currentState?.pushNamed(
        Routes.confirmEmailScreen,
        arguments: {'email': email, 'token': token},
      );
    }
    if (uri.path == '/api/open-app/reset-password') {
      final email = uri.queryParameters['email'] ?? '';
      final token = uri.queryParameters['token'] ?? '';

      _navigatorKey.currentState?.pushNamed(
        Routes.resetPasswordScreen,
        arguments: {'email': email, 'token': token},
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 897),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (_) => ThemeCubit()),
            BlocProvider(create: (_) => getIt<OnboardingCubit>()),
            BlocProvider(create: (_) => getIt<AuthMiddlewareCubit>()),
            BlocProvider(create: (_) => getIt<RegisterCubit>()),
            BlocProvider(create: (_) => getIt<LoginCubit>()),
            BlocProvider(create: (_) => getIt<RegisterCharityCubit>()),
            BlocProvider(create: (_) => getIt<RegisterRestaurantCubit>()),
            BlocProvider(create: (_) => getIt<SendEmailConfirmationCubit>()),
            BlocProvider(create: (_) => getIt<ForgetPasswordCubit>()),
          ],
          child: BlocBuilder<ThemeCubit, ThemeMode>(
            builder: (context, newMode) {
              return MaterialApp(
                navigatorKey: _navigatorKey,
                debugShowCheckedModeBanner: false,

                // Set the app theme
                theme: getLightTheme(context),
                darkTheme: getDarkTheme(context),
                themeMode: newMode,

                // Add the localization delegates
                localizationsDelegates: const [
                  S.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                locale: const Locale('ar'),
                supportedLocales: S.delegate.supportedLocales,

                // Set the initial route based on user authentication and role
                onGenerateRoute: widget.appRouter.generateRoute,
                initialRoute: Routes.onboardingScreen,
              );
            },
          ),
        );
      },
    );
  }
}
