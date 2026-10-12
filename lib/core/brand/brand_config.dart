
import 'package:flutter/material.dart';

class BrandConfig {
  const BrandConfig({
    required this.id,
    required this.name,
    required this.logoAsset,
    required this.primaryColor,
    required this.loginTitle,
    required this.loginSubtitle,
    required this.dashboardTitle,
    required this.dashboardMessage,
    required this.baseUrl,
    required this.homePageBuilder,
  });

  final String id;
  final String name;
  final String logoAsset;
  final Color primaryColor;

  final String loginTitle;
  final String loginSubtitle;

  final String dashboardTitle;
  final String dashboardMessage;

  final String baseUrl;

  final Widget Function() homePageBuilder;
}
