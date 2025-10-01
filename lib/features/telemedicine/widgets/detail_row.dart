import 'package:flutter/material.dart';
import '../../../core/theme/app_typography.dart';

class DetailRow extends StatelessWidget {
  final String label;
  final String value;

  const DetailRow({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(width: 100, child: Text(label, style: AppTypography.bodyMedium)),
          Expanded(
            child: Text(value, style: AppTypography.bodyMedium.copyWith(fontWeight: FontWeight.w500)),
          ),
        ],
      ),
    );
  }
}
