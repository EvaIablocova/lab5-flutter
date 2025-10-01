import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_typography.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: AppColors.success,
          // Если у тебя есть фон с иконками, можно подключить:
          // image: DecorationImage(
          //   image: AssetImage('assets/images/medical_pattern.png'),
          //   fit: BoxFit.cover,
          //   opacity: 0.1,
          // ),
        ),
        child: Center(
          child: Text(
            'Telemedicine',
            style: AppTypography.h1.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
