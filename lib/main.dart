import 'package:flutter/material.dart';

import 'app/app.dart';
import 'core/di/dependency_injection.dart';
import 'core/router/app_router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  
  runApp(MainApp(
    appRouter: AppRouter(),
  ));
}
