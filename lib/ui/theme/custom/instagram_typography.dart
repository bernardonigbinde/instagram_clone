import 'package:flutter/material.dart';

extension InstagramTypographyExtension on BuildContext {
  InstagramTypography get typography {
    return InstagramTypography();
  }
}

class InstagramTypography extends TextStyle {
  static const InstagramTypography _instance = InstagramTypography.internal();

  const InstagramTypography.internal();

  factory InstagramTypography() => _instance;

  TextStyle get searchTextFieldTextStyle => const TextStyle();

  TextStyle get storyLiveIndicator => const TextStyle();

  TextStyle get liveIndicator => const TextStyle();

  TextStyle get _titleTextStyle => const TextStyle(
        fontFamily: "SF Pro Text",
        fontSize: 16,
        height: 21,
        letterSpacing: -0.33,
      );

  TextStyle get navBarTitle => _titleTextStyle.copyWith(
        fontWeight: FontWeight.w600,
        color: const Color(0xFF262626),
      );

  TextStyle get navBarPrimaryAction => _titleTextStyle.copyWith(
        fontWeight: FontWeight.w600,
        color: const Color(0xFF3897F0),
      );

  TextStyle get navBarSecondaryAction => navBarTitle.copyWith(
        color: const Color(0xFF262626),
        fontWeight: FontWeight.w400,
      );

  /// Form Styles
  TextStyle get _formTextStyle => const TextStyle(
        fontFamily: "SF Pro Text",
        fontSize: 16,
        color: Color(0xFF262626),
        fontWeight: FontWeight.w400,
      );

  TextStyle get sectionTitle => _formTextStyle.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 15,
        height: 20,
        letterSpacing: -.25,
      );

  TextStyle get formLabel => _formTextStyle.copyWith(
        color: const Color(0xFF262626),
        fontSize: 15,
        height: 17.9,
        letterSpacing: -0.25,
      );

  TextStyle get largeFormTextButton => _formTextStyle.copyWith(
        color: const Color(0xFF3897F0),
      );

  TextStyle get smallFormTextButton => _formTextStyle.copyWith(
        color: const Color(0xFF3897F0),
        fontWeight: FontWeight.w600,
        fontSize: 13,
        height: 21,
        letterSpacing: -.05,
      );

  TextStyle get disabledFormField => _formTextStyle.copyWith(
        color: const Color(0x4D3C3C43),
        height: 19.09,
        letterSpacing: -0.33,
      );
}
