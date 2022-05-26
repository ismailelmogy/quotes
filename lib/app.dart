import 'package:flutter/material.dart';
import 'package:quotes/config/routes/app_routes.dart';
import 'package:quotes/core/utils/app_strings.dart';
import 'config/themes/app_theme.dart';

class QuoteApp extends StatelessWidget {
  const QuoteApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appName,
      debugShowCheckedModeBanner: false,
      theme: appTheme(),
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}
