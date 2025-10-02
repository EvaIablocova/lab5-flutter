import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import '../router.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;

  const BottomNavBar({super.key, required this.currentIndex});

  void _navigate(BuildContext context, int index) {
    switch (index) {
      case 0: // Home
        Navigator.pushReplacementNamed(context, Routes.home);
        break;
      case 1: // Notifications (placeholder)
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Notifications coming soon')),
        );
        break;
      case 2: // Doctor List (Schedule tab)
        Navigator.pushReplacementNamed(context, Routes.doctorList);
        break;
      case 3: // Profile
        Navigator.pushReplacementNamed(context, Routes.profile);
        break;
    }
  }

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
                color: currentIndex == 0
                    ? AppColors.success
                    : AppColors.textSecondary),
            onPressed: () => _navigate(context, 0),
          ),
          IconButton(
            icon: Icon(Icons.notifications,
                color: currentIndex == 1
                    ? AppColors.success
                    : AppColors.textSecondary),
            onPressed: () => _navigate(context, 1),
          ),
          const SizedBox(width: 48), // spațiu pentru FAB
          IconButton(
            icon: Icon(Icons.calendar_today,
                color: currentIndex == 2
                    ? AppColors.success
                    : AppColors.textSecondary),
            onPressed: () => _navigate(context, 2),
          ),
          IconButton(
            icon: Icon(Icons.person,
                color: currentIndex == 3
                    ? AppColors.success
                    : AppColors.textSecondary),
            onPressed: () => _navigate(context, 3),
          ),
        ],
      ),
    );
  }
}
