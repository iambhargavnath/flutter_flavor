
import 'package:flutter/material.dart';

import '../../core/brand/brand_config.dart';
import 'puma_home_page.dart';

const pumaBrand = BrandConfig(
  id: 'puma',
  name: 'Puma',
  logoAsset: 'assets/brands/puma/logo.png',
  primaryColor: Color(0xFF6C1D45),
  loginTitle: 'Welcome to Puma',
  loginSubtitle: 'Move at your own pace.',
  dashboardTitle: 'Puma Dashboard',
  dashboardMessage: 'Your Puma experience is ready.',
  baseUrl: 'https://api.puma.example.com',
  homePageBuilder: PumaHomePage.new,
);
