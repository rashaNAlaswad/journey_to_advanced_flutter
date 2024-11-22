import 'package:flutter/material.dart';
import 'routes.dart';

import '../../features/onboarding/onboarding_screen.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboarding:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
    }
    return null;
  }
}
