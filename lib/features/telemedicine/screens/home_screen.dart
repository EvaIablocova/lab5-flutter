import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_typography.dart';
import '../widgets/bottom_nav.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final diseaseController = TextEditingController();
    final locationController = TextEditingController();
    final descriptionController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.success,
        title: const Text(
          'Home',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.success.withOpacity(0.5), // мягкий зелёный
                    width: 1.5, // тоньше линия
                  ),
                  borderRadius: BorderRadius.circular(16), // более скруглённые углы
                ),
                child: Text(
                  'VERY URGENT',
                  style: AppTypography.h1.copyWith(color: AppColors.success),
                  textAlign: TextAlign.center,
                ),
              ),
            ),

            const SizedBox(height: 24),

            // Name
            Text('Name', style: AppTypography.h2),
            const SizedBox(height: 8),
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                hintText: 'Your Name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),

            // Disease
            Text('Disease', style: AppTypography.h2),
            const SizedBox(height: 8),
            TextField(
              controller: diseaseController,
              decoration: const InputDecoration(
                hintText: 'What is your illness',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),

            // Location
            Text('Location', style: AppTypography.h2),
            const SizedBox(height: 8),
            TextField(
              controller: locationController,
              decoration: const InputDecoration(
                hintText: 'Where your location',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),

            // Description
            Text('Description (Optional)', style: AppTypography.h2),
            const SizedBox(height: 8),
            TextField(
              controller: descriptionController,
              maxLines: 3,
              decoration: const InputDecoration(
                hintText: 'Describe Here',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 24),

            // Request button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/request-approved');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.success,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                ),
                child: const Text('Request'),
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavBar(currentIndex: 0),


      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // действие при нажатии "+"
        },
        backgroundColor: AppColors.success,
        child: const Icon(Icons.add, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
