import 'package:flutter/material.dart';

extension InstagramThemeExtension on BuildContext {
  InstagramTheme get theme {
    return Theme.of(this).extension<InstagramTheme>()!;
  }
}

class InstagramTheme extends ThemeExtension<InstagramTheme> {
  final Color? accentColor;
  final Color? backgroundColor;

  const InstagramTheme({
    this.accentColor,
    this.backgroundColor,
  });

  @override
  ThemeExtension<InstagramTheme> copyWith({
    Color? accentColor,
    Color? backgroundColor,
  }) {
    return InstagramTheme(
      accentColor: accentColor ?? this.accentColor,
      backgroundColor: backgroundColor ?? this.backgroundColor,
    );
  }

  @override
  ThemeExtension<InstagramTheme> lerp(covariant ThemeExtension<InstagramTheme>? other, double t) {
    if (other is! InstagramTheme) return this;
    return InstagramTheme(
      accentColor: Color.lerp(accentColor, other.accentColor, t),
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t),
    );
  }

  /// LIGHT THEME
  static const lightTheme = InstagramTheme(
    accentColor: Color(0xFF347EF0),
    backgroundColor: Color(0xFF262626),
  );

  /// DARK THEME
  static const darkTheme = InstagramTheme(
    accentColor: Color(0xFF347EF0),
    backgroundColor: Color(0xFFF9F9F9),
  );
}
