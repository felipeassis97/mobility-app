import 'package:flutter/material.dart';
import 'package:mobility_app/shared/theme/font_theme.dart';
import 'package:mobility_app/shared/utils/app_colors.dart';

class AppThemeData {
  static ThemeData materialTheme(BuildContext context) {
    return ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.white,
        backgroundColor: Colors.white,
        primarySwatch: AppColors.deepBlueSwatch,
        primaryColor: AppColors.deepBlue,
        primaryColorLight: AppColors.deepBlueLight,
        primaryColorDark: AppColors.deepBlueDark,
        textTheme: CustomTextTheme.textTheme,
        inputDecorationTheme: const InputDecorationTheme(
          labelStyle: TextStyle(color: AppColors.deepBlue),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.deepBlue),
          ),
        ));
  }
}
