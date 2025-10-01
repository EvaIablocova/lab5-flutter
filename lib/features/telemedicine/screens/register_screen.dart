import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_typography.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final birthdayController = TextEditingController();
    final emailController = TextEditingController();
    final phoneController = TextEditingController();
    final locationController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.success,
        title: const Text(
          'Register',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 24),

            // Фото-плейсхолдер
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: AppColors.success, width: 2),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.person, size: 40, color: AppColors.success),
                  const SizedBox(height: 4),
                  Text(
                    'ADD PHOTOS',
                    style: AppTypography.caption.copyWith(
                      color: AppColors.success,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),

            // Full Name
            Align(
              alignment: Alignment.centerLeft,
              child: Text('Full Name', style: AppTypography.h2),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                hintText: 'Your Full Name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),

            // Birthday
            Align(
              alignment: Alignment.centerLeft,
              child: Text('Birthday', style: AppTypography.h2),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: birthdayController,
              decoration: const InputDecoration(
                hintText: 'dd/mm/yy',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),

            // Email
            Align(
              alignment: Alignment.centerLeft,
              child: Text('Email', style: AppTypography.h2),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                hintText: 'Your Email',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),

            // Phone Number
            Align(
              alignment: Alignment.centerLeft,
              child: Text('Phone Number', style: AppTypography.h2),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: phoneController,
              decoration: const InputDecoration(
                hintText: 'Your Phone Number',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),

            // Location/Adress
            Align(
              alignment: Alignment.centerLeft,
              child: Text('Location/Adress', style: AppTypography.h2),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: locationController,
              decoration: const InputDecoration(
                hintText: 'Your Location',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 32),

            // Next button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.success,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                ),
                child: const Text('Next'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
