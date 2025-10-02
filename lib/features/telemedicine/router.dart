import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/welcome_screen.dart';
import 'screens/login_screen.dart';
import 'screens/register_screen.dart';
import 'screens/home_screen.dart';
import 'screens/request_approved_screen.dart';
import 'screens/doctor_list_screen.dart';
import 'screens/doctor_detail_screen.dart';
import 'screens/profile_screen.dart';

class Routes {
  static const String splash = '/splash';
  static const String welcome = '/welcome';
  static const String login = '/login';
  static const String register = '/register';
  static const String home = '/home';
  static const String requestApproved = '/request-approved';
  static const String doctorList = '/doctor-list';
  static const String doctorDetail = '/doctor-detail';
  static const String profile = '/profile';
}

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());

      case Routes.welcome:
        return MaterialPageRoute(builder: (_) => const WelcomeScreen());

      case Routes.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());

      case Routes.register:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());

      case Routes.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      case Routes.requestApproved:
        return MaterialPageRoute(builder: (_) => const RequestApprovedScreen());

      case Routes.doctorList:
        return MaterialPageRoute(builder: (_) => const DoctorListScreen());

      case Routes.doctorDetail:
        return MaterialPageRoute(builder: (_) => const DoctorDetailScreen());

      case Routes.profile:
        return MaterialPageRoute(builder: (_) => const ProfileScreen());

      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text('Route not found')),
          ),
        );
    }
  }
}
