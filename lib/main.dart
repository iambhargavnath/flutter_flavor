
import 'package:flutter/material.dart';

import 'app/app.dart';
import 'brands/brand_registry.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  final brand = currentBrand;

  runApp(FlavorApp(brand: brand));
}
