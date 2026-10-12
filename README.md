# Flutter Flavor

A Flutter multi-brand application demonstrating how to build and maintain multiple branded app variants using Flutter Flavorizr and feature-based Clean Architecture.

This project is created for **educational purposes only**.

## Overview

The application supports three example brands:

- Nike
- Puma
- Adidas

Each flavor has its own application name, application identifier, brand assets, home page, display text, and base URL configuration.

The login page and dashboard are shared across all brands.

### Application Flow

```text
App Launch
    |
    v
Login Page
    |
    | Login button
    v
Brand Home Page
    |
    | Go to Dashboard button
    v
Dashboard Page
```

The selected flavor determines which brand configuration is loaded.

## Features

- Multiple Flutter flavors
- Brand-specific application identifiers
- Brand-specific application names and launcher icons
- Shared login screen with brand-specific logo and text
- Independent home screen for each brand
- Shared dashboard with brand-specific text and base URL
- Centralized brand configuration
- Feature-based project organization
- Native flavor configuration using Flutter Flavorizr

## Tech Stack

- Flutter
- Dart
- Flutter Flavorizr
- Material 3
- Android Studio

## Project Structure

```text
flutter_flavor/
├── assets/
│   └── brands/
│       ├── nike/
│       ├── puma/
│       └── adidas/
├── lib/
│   ├── app/
│   │   └── app.dart
│   ├── core/
│   │   └── brand/
│   │       └── brand_config.dart
│   ├── brands/
│   │   ├── brand_registry.dart
│   │   ├── nike/
│   │   ├── puma/
│   │   └── adidas/
│   ├── features/
│   │   ├── login/
│   │   │   └── presentation/
│   │   │       └── pages/
│   │   └── dashboard/
│   │       └── presentation/
│   │           └── pages/
│   └── main.dart
├── android/
├── ios/
├── flavorizr.yaml
├── pubspec.yaml
├── pubspec.lock
├── .gitignore
├── LICENSE
└── README.md
```

## Getting Started

### Prerequisites

- Flutter SDK
- Dart SDK compatible with your Flutter installation
- Android Studio
- Android SDK and an emulator or Android device
- Xcode for iOS builds on macOS

### 1. Clone the repository

```bash
git clone <repository-url>
cd flutter_flavor
```

Replace `<repository-url>` with your repository URL.

### 2. Install dependencies

```bash
flutter pub get
```

### 3. Generate flavor configuration

Make sure Flutter Flavorizr is declared in your project dependencies or development dependencies.

```bash
dart run flutter_flavorizr
```

This generates or updates native flavor configuration according to `flavorizr.yaml`.

Review generated files before committing changes.

### 4. Run a flavor

Run the Nike flavor:

```bash
flutter run --flavor nike
```

Run the Puma flavor:

```bash
flutter run --flavor puma
```

Run the Adidas flavor:

```bash
flutter run --flavor adidas
```

The corresponding Android product flavors and launch configurations must be generated successfully before these commands will work.

## Brand Configuration

Brand-specific settings are defined through `BrandConfig`.

Each brand provides:

- Brand ID
- Display name
- Logo asset path
- Primary color
- Login title and subtitle
- Dashboard title and message
- Base URL
- Home page builder

The brand registry maps flavor names to brand configurations.

This keeps shared screens independent of brand-specific implementation details.

## Adding a New Brand

For example, to add a new brand named Reebok:

1. Create `assets/brands/reebok/`.
2. Add the brand's logo, launcher icon, and splash assets.
3. Create `reebok_brand.dart` and `reebok_home_page.dart`.
4. Define the new `BrandConfig`.
5. Register the brand in `lib/brands/brand_registry.dart`.
6. Add its configuration to `flavorizr.yaml`.
7. Regenerate native flavor configuration.
8. Test the new flavor on the intended platforms.

The shared login page and dashboard should not require brand-specific changes.

## Splash Screens and Launcher Icons

Launcher icons and native splash screens require platform-specific configuration.

Adding an image to the Flutter assets directory does not automatically configure a native splash screen.

Configure and verify the appropriate assets and generated native settings for each supported platform.

## Important Notes

- Base URLs in the sample brand configurations are placeholders.
- Replace placeholder URLs with your own valid endpoints before integrating a backend.
- The login button demonstrates navigation only; it does not perform authentication.
- The dashboard prints brand configuration data and does not make network requests.
- Ensure all referenced assets exist before building the application.
- Generated platform files may change when Flutter Flavorizr is run.

## License and Educational Use

Copyright © 2026 Bhargav Nath. All rights reserved.

This project is provided for educational purposes only.

The source code is intended for learning, experimentation, and demonstration. No permission to redistribute, publish, sell, or use this project commercially is granted by this notice.

Nike, Puma, Adidas, and other referenced names, logos, and trademarks belong to their respective owners. Their inclusion is for illustrative and educational purposes only and does not imply sponsorship, affiliation, or endorsement.

For permissions beyond educational use, contact the copyright holder.

See the `LICENSE` file for the full project notice.

## Author

**Bhargav Nath**

## Disclaimer

This is an educational demonstration of Flutter flavors and multi-brand application architecture. It is not an official application of Nike, Puma, Adidas, or their affiliates.