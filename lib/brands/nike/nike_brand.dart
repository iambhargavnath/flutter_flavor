
import 'package:flutter/material.dart';

import '../../core/brand/brand_config.dart';
import 'nike_home_page.dart';

const nikeBrand = BrandConfig(
  id: 'nike',
  name: 'Nike',
  logoAsset: 'assets/brands/nike/logo.png',
  primaryColor: Color(0xFF111111),
  loginTitle: 'Welcome to Nike',
  loginSubtitle: 'Discover your next move.',
  dashboardTitle: 'Nike Dashboard',
  dashboardMessage: 'Your Nike experience is ready.',
  baseUrl: 'https://api.nike.example.com',
  homePageBuilder: NikeHomePage.new,
);
