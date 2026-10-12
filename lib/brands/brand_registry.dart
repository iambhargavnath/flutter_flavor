
import 'package:flutter/services.dart';

import '../core/brand/brand_config.dart';
import 'adidas/adidas_brand.dart';
import 'nike/nike_brand.dart';
import 'puma/puma_brand.dart';

const Map<String, BrandConfig> brandRegistry = {
  'nike': nikeBrand,
  'puma': pumaBrand,
  'adidas': adidasBrand,
};

BrandConfig get currentBrand {
  final flavor = appFlavor;

  if (flavor == null || !brandRegistry.containsKey(flavor)) {
    throw StateError(
      'Unknown app flavor: $flavor. '
          'Run the app with --flavor nike, puma, or adidas.',
    );
  }

  return brandRegistry[flavor]!;
}
