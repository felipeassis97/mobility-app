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

  static const Color feedbackColorHelperPure = Color(0xFFFF8A00);
  static const Color feedbackColorHelperLight = Color(0xFFFFE3C2);
  static const Color cancelReasonColor = Color(0xFFF3EEE8);
  static const Color feedbackColorHelperMedium = Color(0xFFCC6E00);
  static const Color feedbackColorHelperDark = Color(0xFF7A4200);

  static const Color neutralColorLowPure = Color(0xFF000000);
  static const Color neutralColorLowLight = Color(0xFFA3A3A3);
  static const Color neutralColorLowMedium = Color(0xFF666666);
  static const Color neutralColorLowDark = Color(0xFF292929);
  static const Color neutralColorHightPure = Color(0xFFFFFFFF);
  static const Color neutralColorHightLight = Color(0xFFF5F5F5);
  static const Color neutralColorHightMedium = Color(0xFFE0E0E0);
  static const Color neutralColorHightDark = Color(0xFFCCCCCC);
}
