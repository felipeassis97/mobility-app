import 'package:flutter/material.dart';
import 'package:mobility_app/shared/routes/app_routes.dart';
import 'package:mobility_app/shared/theme/theme_data.dart';

class MobilityApp extends StatelessWidget {
  const MobilityApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Mobility App',
        theme: AppThemeData.materialTheme(context),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: AppRoutes.routes(context));
  }
}
