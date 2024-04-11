import 'package:flutter/material.dart';

class AppColor {
  static const orange = Color(0xFFFC6011);
  static const primary = Color(0xFF4A4B4D);
  static const secondary = Color(0xFF7C7D7E);
  static const placeholder = Color(0xFFB6B7B7);
  static const placeholderBg = Color(0xFFF2F2F2);
}

final ColorScheme customColorScheme = ColorScheme.light(
  background: AppColor.primary,
  primary: AppColor.secondary,
  secondary: AppColor.placeholder,
  surface: AppColor.placeholderBg,
  onBackground: Colors.black, // Example color for text on background
  onPrimary: Colors.white,    // Example color for text on primary
  onSecondary: Colors.black,  // Example color for text on secondary
  onSurface: Colors.black,    // Example color for text on surface
);

// Usage:
ThemeData lightMode = ThemeData(
  colorScheme: customColorScheme,
);

