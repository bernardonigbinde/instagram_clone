import 'package:flutter/material.dart';

import 'custom/instagram_theme.dart';

ThemeData lightTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    scaffoldBackgroundColor: InstagramTheme.lightTheme.backgroundColor,
    extensions: [
      InstagramTheme.lightTheme,
    ],
  );
}
