import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';
import 'core/theme/theme_data/dark_them_data.dart';
import 'core/theme/theme_data/light_theme_data.dart';
import 'core/theme/theme_manager/theme_cubit.dart';
import 'generated/l10n.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.appRouter});

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 897),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MultiBlocProvider(
          providers: [BlocProvider(create: (_) => ThemeCubit())],
          child: BlocBuilder<ThemeCubit, ThemeMode>(
            builder: (context, newMode) {
              return MaterialApp(
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
                locale: const Locale('en'),
                supportedLocales: S.delegate.supportedLocales,

                // Set the initial route based on user authentication and role
                onGenerateRoute: appRouter.generateRoute,
                initialRoute: Routes.navbarCharity,
              );
            },
          ),
        );
      },
    );
  }
}
