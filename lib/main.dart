import 'package:flutter/material.dart';

import 'app/app.dart';
import 'core/router/app_router.dart';

void main() {
  runApp(MainApp(
    appRouter: AppRouter(),
  ));
}
