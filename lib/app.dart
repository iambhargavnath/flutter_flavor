
import 'package:flutter/material.dart';

import '../core/brand/brand_config.dart';
import '../features/dashboard/presentation/pages/dashboard_page.dart';
import '../features/login/presentation/pages/login_page.dart';

class FlavorApp extends StatelessWidget {
  const FlavorApp({
    required this.brand,
    super.key,
  });

  final BrandConfig brand;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: brand.name,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: brand.primaryColor,
        ),
      ),

      // Always open Login Page on app launch.
      home: LoginPage(brand: brand),

      routes: {
        '/dashboard': (_) => DashboardPage(brand: brand),
      },
    );
  }
}
