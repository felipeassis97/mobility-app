import 'package:flutter/widgets.dart';
import 'package:mobility_app/features/home/home_screen.dart';
import 'package:mobility_app/features/session/signin/signin_screen.dart';
import 'package:mobility_app/features/session/signup/signup_screen.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> routes(context) {
    return {
      '/': (context) => const LoginScreen(),
      '/signup': (context) => const SignupScreen(),
      '/home': (context) => const HomeScreen(),
    };
  }
}
