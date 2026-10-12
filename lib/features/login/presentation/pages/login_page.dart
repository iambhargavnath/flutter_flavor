
import 'package:flutter/material.dart';

import '../../../../core/brand/brand_config.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    required this.brand,
    super.key,
  });

  final BrandConfig brand;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                brand.logoAsset,
                height: 110,
                errorBuilder: (_, _, _) => Icon(
                  Icons.storefront,
                  size: 90,
                  color: brand.primaryColor,
                ),
              ),
              const SizedBox(height: 32),
              Text(
                brand.loginTitle,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                brand.loginSubtitle,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),
              FilledButton(
                style: FilledButton.styleFrom(
                  backgroundColor: brand.primaryColor,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (_) => brand.homePageBuilder(),
                    ),
                  );
                },
                child: const Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
