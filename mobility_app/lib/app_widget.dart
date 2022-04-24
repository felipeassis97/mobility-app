import 'package:flutter/material.dart';
import 'package:mobility_app/features/session/login/login_screen.dart';
import 'package:mobility_app/theme/theme_data.dart';

class MobilityApp extends StatelessWidget {
  const MobilityApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobility App',
      theme: AppThemeData.materialTheme(context),
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
    );
  }
}
