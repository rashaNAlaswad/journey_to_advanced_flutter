import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:journey_to_advanced_flutter/core/theme/app_theme.dart';

import '../core/router/app_router.dart';
import '../core/router/routes.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key, required this.appRouter});

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: appTheme(),
        initialRoute: Routes.onboarding,
        onGenerateRoute: appRouter.onGenerateRoute,
      ),
    );
  }
}
