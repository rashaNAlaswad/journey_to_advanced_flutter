import 'package:flutter/material.dart';
import '../core/router/routes.dart';

import '../core/router/app_router.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key, required this.appRouter});

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.onboarding,
      onGenerateRoute: appRouter.onGenerateRoute,
    );
  }
}
