import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_typography.dart';
import '../widgets/bottom_nav.dart';

class DoctorDetailScreen extends StatelessWidget {
  const DoctorDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Doctor Details')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Шапка с фото, именем, специализацией и рейтингом
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/images/doctor.png'),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Dudung Sokmati', style: AppTypography.h1),
                      Text(
                        'Eye Specialist',
                        style: AppTypography.bodyMedium.copyWith(
                          color: AppColors.success, // зелёный текст
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          const Icon(Icons.star, color: Colors.amber, size: 18),
                          const SizedBox(width: 4),
                          Text(
                            '4.9',
                            style: AppTypography.bodyMedium.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),

            // Short Description
            Text('Short Description', style: AppTypography.h2),
            const SizedBox(height: 8),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
                  't. Ut enim ad minim venia m, quis nostrud exercitation ullamco',
              style: AppTypography.bodyMedium,
            ),
            const SizedBox(height: 24),

            // Locationn
            Text('Locationn', style: AppTypography.h2),
            const SizedBox(height: 8),
            Row(
              children: [
                const Icon(Icons.location_on, color: AppColors.success),
                const SizedBox(width: 8),
                Text('St. Bronxlyn 212', style: AppTypography.bodyMedium),
              ],
            ),
            const SizedBox(height: 12),
            Container(
              height: 180,
              decoration: BoxDecoration(
                color: AppColors.divider,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Center(
                child: Icon(Icons.map, size: 64, color: AppColors.success),
              ),
            ),
            const SizedBox(height: 24),

            // Кнопка Request
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, 'requested');
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

      // Нижняя навигация с вырезом под FAB
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
}
