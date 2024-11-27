import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/home/home_screen.dart';
import '../../features/login/cubit/login_cubit.dart';
import '../../features/login/ui/login_screen.dart';
import '../../features/onboarding/onboarding_screen.dart';
import '../../features/signup/cubit/signup_cubit.dart';
import '../../features/signup/ui/signup_screen.dart';
import '../di/dependency_injection.dart';
import 'routes.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboarding:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.login:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      case Routes.signup:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<SignupCubit>(),
                  child: const SignupScreen(),
                ));
      case Routes.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
    }
    return null;
  }
}
