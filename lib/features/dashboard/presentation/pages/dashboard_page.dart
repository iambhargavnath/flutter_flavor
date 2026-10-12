
import 'package:flutter/material.dart';

import '../../../../core/brand/brand_config.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({
    required this.brand,
    super.key,
  });

  final BrandConfig brand;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dashboard')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              brand.dashboardTitle,
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            Text(brand.dashboardMessage),
            const SizedBox(height: 24),
            const Text(
              'Base URL',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            SelectableText(brand.baseUrl),
            const SizedBox(height: 12),
            SelectableText('Flavor: ${brand.id}'),
          ],
        ),
      ),
    );
  }
}
