import 'package:flutter/material.dart';

import 'custom/instagram_theme.dart';

ThemeData darkTheme() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
    scaffoldBackgroundColor: InstagramTheme.darkTheme.backgroundColor,
    extensions: [
      InstagramTheme.darkTheme,
    ],
  );
}
