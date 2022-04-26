import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobility_app/app_widget.dart';
import 'shared/utils/app_colors.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: AppColors.deepBlue, // navigation bar color
    statusBarColor: AppColors.deepBlue, // status bar color
  ));

  runApp(const MobilityApp());
}
