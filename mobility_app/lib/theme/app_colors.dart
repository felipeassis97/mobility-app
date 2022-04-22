import 'package:flutter/material.dart';

abstract class AppColors {
  static MaterialColor deepBlueSwatch =
      const MaterialColor(0xFF1152FD, <int, Color>{
    50: Color(0xFFe3f2fd),
    100: Color(0xFFbbdefb),
    200: Color(0xFF90caf9),
    300: Color(0xFF64b5f6),
    400: Color(0xFF42a5f5),
    500: Color(0xFF2196f3),
    600: Color(0xFF1e88e5),
    700: Color(0xFF1976d2),
    800: Color(0xFF1565c0),
    900: Color(0xFF0d47a1),
  });

  static const Color deepBlue = Color(0xFF2979ff);
  static const Color deepBlueLight = Color(0xFF448aff);
  static const Color deepBlueDark = Color(0xFF2962ff);
}
