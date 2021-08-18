import 'dart:ui';

import 'package:flutter/material.dart';

class Palette {
  static const Color primary = Color(0xFF01499F);
  static const Color secondary = Color(0xFF0459A5);
  static const Color odd = Color(0xFFDDDDDD);
  static const Color even = Color(0xFFFFFFFF);
  static const Color grey = Color(0x3D242020);

  static ThemeData buildLightTheme() {
    final Color primaryColor = Color(0xFF01499F);
    final Color secondaryColor = Color(0xFF0459A5);
    final ColorScheme colorScheme = const ColorScheme.light().copyWith(
      primary: primaryColor,
      secondary: secondaryColor,
    );
    final ThemeData base = ThemeData.light();
    return base.copyWith(
      colorScheme: colorScheme,
      primaryColor: primaryColor,
      buttonColor: primaryColor,
      indicatorColor: Colors.white,
      splashColor: Colors.white24,
      splashFactory: InkRipple.splashFactory,
      accentColor: secondaryColor,
      canvasColor: Colors.white,
      backgroundColor: const Color(0xFFFFFFFF),
      scaffoldBackgroundColor: const Color(0xFFF6F6F6),
      errorColor: const Color(0xFFB00020),
      buttonTheme: ButtonThemeData(
        colorScheme: colorScheme,
        textTheme: ButtonTextTheme.primary,
      ),
      // textTheme: _buildTextTheme(base.textTheme),
      // primaryTextTheme: _buildTextTheme(base.primaryTextTheme),
      // accentTextTheme: _buildTextTheme(base.accentTextTheme),
      platform: TargetPlatform.iOS,
    );
  }
}
