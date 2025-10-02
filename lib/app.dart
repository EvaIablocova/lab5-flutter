import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'features/telemedicine/router.dart';

class TelemedicineApp extends StatelessWidget {
  const TelemedicineApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Telemedicine',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,       // светлая тема
      darkTheme: AppTheme.dark,    // тёмная тема (опционально)
      themeMode: ThemeMode.light,  // можно переключать
      initialRoute: Routes.splash,   // стартовый экран
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}

