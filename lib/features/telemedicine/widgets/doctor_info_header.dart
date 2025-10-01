import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_typography.dart';

class DoctorInfoHeader extends StatelessWidget {
  final String name;
  final String specialty;
  final double rating;
  final String imagePath;

  const DoctorInfoHeader({
    super.key,
    required this.name,
    required this.specialty,
    required this.rating,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(radius: 40, backgroundImage: AssetImage(imagePath)),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: AppTypography.h1),
              Text(specialty,
                  style: AppTypography.bodyMedium.copyWith(
                    color: AppColors.textSecondary,
                  )),
              const SizedBox(height: 4),
              Row(
                children: [
                  const Icon(Icons.star, color: Colors.amber, size: 18),
                  const SizedBox(width: 4),
                  Text(rating.toString(),
                      style: AppTypography.bodyMedium.copyWith(
                        fontWeight: FontWeight.w600,
                      )),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
