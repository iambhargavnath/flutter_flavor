
import 'package:flutter/material.dart';

import '../../core/brand/brand_config.dart';
import 'adidas_home_page.dart';

const adidasBrand = BrandConfig(
  id: 'adidas',
  name: 'Adidas',
  logoAsset: 'assets/brands/adidas/logo.png',
  primaryColor: Color(0xFF007A5E),
  loginTitle: 'Welcome to Adidas',
  loginSubtitle: 'Own your next chapter.',
  dashboardTitle: 'Adidas Dashboard',
  dashboardMessage: 'Your Adidas experience is ready.',
  baseUrl: 'https://api.adidas.example.com',
  homePageBuilder: AdidasHomePage.new,
);
