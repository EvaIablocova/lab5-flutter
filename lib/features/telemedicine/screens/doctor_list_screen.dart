import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import '../widgets/bottom_nav.dart';
import '../widgets/doctor_card.dart';

class DoctorListScreen extends StatelessWidget {
  const DoctorListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> doctors = [
      {
        'name': 'Dudung Sokmati',
        'specialty': 'Eye Specialist',
        'location': 'St. Bronxlyn 212',
        'rating': 4.9,
        'image': 'assets/images/doctor.png',
      },
      {
        'name': 'Nunung Brandon',
        'specialty': 'Eye Specialist',
        'location': 'St. Bronxlyn 212',
        'rating': 4.2,
        'image': 'assets/images/doctor1.png',
      },
      {
        'name': 'Udin Batakooran',
        'specialty': 'Eye Specialist',
        'location': 'St. Bronxlyn 212',
        'rating': 3.9,
        'image': 'assets/images/doctor2.png',
      },
      {
        'name': 'Cucup Joentravo',
        'specialty': 'Eye Specialist',
        'location': 'St. Bronxlyn 212',
        'rating': 3.1,
        'image': 'assets/images/doctor3.png',
      },
      {
        'name': 'Diding Sulidinger',
        'specialty': 'Eye Specialist',
        'location': 'St. Bronxlyn 212',
        'rating': 2.1,
        'image': 'assets/images/doctor4.png',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.success,
        title: const Text(
          'Doctor List',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: doctors.length,
        separatorBuilder: (_, __) => const SizedBox(height: 12),
        itemBuilder: (context, index) {
          final doctor = doctors[index];
          return DoctorCard(
            name: doctor['name'] as String,
            specialty: doctor['specialty'] as String,
            location: doctor['location'] as String,
            rating: doctor['rating'] as double,
            imagePath: doctor['image'] as String,
            onTap: () {
              Navigator.pushNamed(context, '/doctor-detail');
            },
          );
        },
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: 0,
        onTap: (index) {
          // обработка переходов
        },
      ),
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
