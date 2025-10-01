import 'package:flutter/material.dart';
import 'screens/request_approved_screen.dart';
import 'screens/doctor_detail_screen.dart';
import 'screens/doctor_list_screen.dart';
import 'screens/home_screen.dart';
import 'screens/login_screen.dart';
import 'screens/register_screen.dart';
import 'screens/splash_screen.dart';
import 'screens/welcome_screen.dart';
// сюда же импортируй другие экраны по мере добавления

class Routes {
  static const String home = '/';
  static const String requestApproved = '/request-approved';
  static const String doctorDetail = '/doctor-detail';
  static const String doctorList = '/doctor-list';
  static const String login = '/login';
  static const String register = '/register';
  static const String splash = '/splash';
  static const String welcome = '/welcome';

// добавляй остальные: appointments, chat, profile и т.д.
}

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
      // пока можно временно показывать как home
      //   return MaterialPageRoute(builder: (_) => const RequestApprovedScreen());
      //   return MaterialPageRoute(builder: (_) => const DoctorListScreen());
        // return MaterialPageRoute(builder: (_) => const DoctorDetailScreen());
        // return MaterialPageRoute(builder: (_) => const HomeScreen());
        // return MaterialPageRoute(builder: (_) => const LoginScreen());
        // return MaterialPageRoute(builder: (_) => const RegisterScreen());
        // return MaterialPageRoute(builder: (_) => const SplashScreen());
        return MaterialPageRoute(builder: (_) => const WelcomeScreen());

      case Routes.requestApproved:
        return MaterialPageRoute(builder: (_) => const RequestApprovedScreen());

      case Routes.doctorDetail:
        return MaterialPageRoute(builder: (_) => const DoctorDetailScreen());

      case Routes.doctorList:
        return MaterialPageRoute(builder: (_) => const DoctorListScreen());

      case Routes.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      case Routes.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());

      case Routes.register:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());

      case Routes.splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());

      case Routes.welcome:
        return MaterialPageRoute(builder: (_) => const WelcomeScreen());




      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text('Route not found')),
          ),
        );
    }
  }
}
