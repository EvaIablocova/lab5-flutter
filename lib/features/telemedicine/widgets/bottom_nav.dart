import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int)? onTap;

  const BottomNavBar({super.key, required this.currentIndex, this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 6.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: Icon(Icons.home,
                color: currentIndex == 0 ? AppColors.success : AppColors.textSecondary),
            onPressed: () => onTap?.call(0),
          ),
          IconButton(
            icon: Icon(Icons.notifications,
                color: currentIndex == 1 ? AppColors.success : AppColors.textSecondary),
            onPressed: () => onTap?.call(1),
          ),
          const SizedBox(width: 48), // место под FAB
          IconButton(
            icon: Icon(Icons.calendar_today,
                color: currentIndex == 2 ? AppColors.success : AppColors.textSecondary),
            onPressed: () => onTap?.call(2),
          ),
          IconButton(
            icon: Icon(Icons.person,
                color: currentIndex == 3 ? AppColors.success : AppColors.textSecondary),
            onPressed: () => onTap?.call(3),
          ),
        ],
      ),
    );
  }
}
