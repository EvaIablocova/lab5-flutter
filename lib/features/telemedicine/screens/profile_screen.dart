import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_typography.dart';
import '../widgets/bottom_nav.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.success,
        title: const Text(
          'Profile',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.white),
            onPressed: () {
              // меню или настройки
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const SizedBox(height: 16),

            // Аватар
            CircleAvatar(
              radius: 50,
              backgroundColor: AppColors.divider,
              child: const Icon(Icons.person, size: 60, color: Colors.white),
            ),
            const SizedBox(height: 16),

            // Имя
            Text(
              'John Doe',
              style: AppTypography.h1,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),

            // Детали профиля
            _buildDetailRow('Username', 'johndoe'),
            const SizedBox(height: 12),
            _buildDetailRow('Email', 'john@doe.com'),
            const SizedBox(height: 12),
            _buildDetailRow('Phone Number', '0000000000'),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavBar(currentIndex: 0),

      // Центральная кнопка "+"
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

  Widget _buildDetailRow(String label, String value) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Text(label, style: AppTypography.bodyMedium),
        ),
        Expanded(
          flex: 3,
          child: Text(
            value,
            style: AppTypography.bodyMedium.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
