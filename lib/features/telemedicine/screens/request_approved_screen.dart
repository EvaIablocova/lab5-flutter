import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_typography.dart';
import '../widgets/detail_row.dart';
import '../widgets/doctor_card.dart';

class RequestApprovedScreen extends StatelessWidget {
  const RequestApprovedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Request Status')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 96,
              height: 96,
              decoration: BoxDecoration(
                color: AppColors.success.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.check_circle,
                  color: AppColors.success, size: 72),
            ),
            const SizedBox(height: 16),
            Text(
              'Your Request Has Been Approved',
              style: AppTypography.h1,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper m.',
              style: AppTypography.bodyMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            Align(
                alignment: Alignment.centerLeft,
                child: Text('Request Details', style: AppTypography.h2)),
            const SizedBox(height: 12),
            const DetailRow(label: 'Name', value: 'Jojon Suehndra'),
            const DetailRow(label: 'Disease', value: 'Sore Eyes'),
            const DetailRow(label: 'Location', value: 'St. Bronxh 212'),
            const DetailRow(
              label: 'Description',
              value:
              'Aku ingin menjadi setitik awan kecil di langit bersama mentari dan embun',
            ),
            const SizedBox(height: 24),
            Align(
                alignment: Alignment.centerLeft,
                child: Text('Doctor', style: AppTypography.h2)),
            const SizedBox(height: 12),
            const DoctorCard(
              name: 'Dudung Sokmati',
              specialty: 'Eye Specialist',
              location: 'St. Bronxlyn 212',
              rating: 4.9,
              imagePath: 'assets/images/doctor.png',
            ),
            const SizedBox(height: 32),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => Navigator.pop(context, 'confirmed'),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.success,
                        padding:
                        const EdgeInsets.symmetric(vertical: 14)),
                    child: const Text('Confirm'),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () => Navigator.pop(context, 'cancelled'),
                    style: OutlinedButton.styleFrom(
                        padding:
                        const EdgeInsets.symmetric(vertical: 14)),
                    child: const Text('Cancel Request'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
