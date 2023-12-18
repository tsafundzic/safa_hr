import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:safa_hr/core/gen/fonts.gen.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'tailor_theme_extensions.tailor.dart';

@Tailor(themes: ["light", "dark"], themeGetter: ThemeGetter.onBuildContext)
class _$AppColors {
  // Material colors
  static const List<Color> background = [_white, _black];
  static const List<Color> onBackground = primary;
  static const List<Color> surface = background;
  static const List<Color> onSurface = onBackground;
  static const List<Color> primary = [_black, _white];
  static const List<Color> onPrimary = [_white, _black];
  static const List<Color> secondary = [_blue, _blue];
  static const List<Color> onSecondary = onPrimary;
  static const List<Color> tertiary = [_lightGrey, _lightGrey];
  static const List<Color> onTertiary = onPrimary;
  static const List<Color> error = [_blue, _blue];
  static const List<Color> outline = [_grey, _grey];
  static const List<Color> shadow = [_black10, _white20];

  static const Color _blue = Color(0xFF0d9ddb);
  static const Color _black = Color(0xFF000000);
  static const Color _grey = Color(0xFF7A7C81);
  static const Color _white = Color(0xFFFFFFFF);
  static const Color _white20 = Color(0x33FFFFFF);
  static const Color _black10 = Color(0x1A000000);
  static const Color _lightGrey = Color(0xFFF8F8F8);
}

@Tailor(themes: ["light", "dark"], themeGetter: ThemeGetter.onBuildContext)
class _$AppTextStyles {
  static const String _fontFamily = FontFamily.saira;

  static List<TextStyle> displayLarge = [
    TextStyle(fontFamily: _fontFamily, fontSize: 24, fontWeight: FontWeight.w700, color: AppColors.themes[0].primary),
    TextStyle(fontFamily: _fontFamily, fontSize: 24, fontWeight: FontWeight.w700, color: AppColors.themes[1].primary),
  ];
  static List<TextStyle> displayMedium = [
    TextStyle(fontFamily: _fontFamily, fontSize: 24, fontWeight: FontWeight.w500, color: AppColors.themes[0].primary),
    TextStyle(fontFamily: _fontFamily, fontSize: 24, fontWeight: FontWeight.w500, color: AppColors.themes[1].primary),
  ];
  static List<TextStyle> displaySmall = [
    TextStyle(fontFamily: _fontFamily, fontSize: 22, fontWeight: FontWeight.w500, color: AppColors.themes[0].primary),
    TextStyle(fontFamily: _fontFamily, fontSize: 22, fontWeight: FontWeight.w500, color: AppColors.themes[1].primary),
  ];
  static List<TextStyle> headlineLarge = [
    TextStyle(fontFamily: _fontFamily, fontSize: 21, fontWeight: FontWeight.w700, color: AppColors.themes[0].primary),
    TextStyle(fontFamily: _fontFamily, fontSize: 21, fontWeight: FontWeight.w700, color: AppColors.themes[1].primary),
  ];
  static List<TextStyle> headlineMedium = [
    TextStyle(fontFamily: _fontFamily, fontSize: 19, fontWeight: FontWeight.w500, color: AppColors.themes[0].primary),
    TextStyle(fontFamily: _fontFamily, fontSize: 19, fontWeight: FontWeight.w500, color: AppColors.themes[1].primary),
  ];
  static List<TextStyle> headlineSmall = [
    TextStyle(fontFamily: _fontFamily, fontSize: 17, fontWeight: FontWeight.w500, color: AppColors.themes[0].primary),
    TextStyle(fontFamily: _fontFamily, fontSize: 17, fontWeight: FontWeight.w500, color: AppColors.themes[1].primary),
  ];
  static List<TextStyle> titleLarge = [
    TextStyle(fontFamily: _fontFamily, fontSize: 27, fontWeight: FontWeight.w700, color: AppColors.themes[0].primary),
    TextStyle(fontFamily: _fontFamily, fontSize: 27, fontWeight: FontWeight.w700, color: AppColors.themes[1].primary),
  ];
  static List<TextStyle> titleMedium = [
    TextStyle(fontFamily: _fontFamily, fontSize: 21, fontWeight: FontWeight.w700, color: AppColors.themes[0].primary),
    TextStyle(fontFamily: _fontFamily, fontSize: 21, fontWeight: FontWeight.w700, color: AppColors.themes[1].primary),
  ];
  static List<TextStyle> titleSmall = [
    TextStyle(fontFamily: _fontFamily, fontSize: 17, fontWeight: FontWeight.w500, color: AppColors.themes[0].primary),
    TextStyle(fontFamily: _fontFamily, fontSize: 17, fontWeight: FontWeight.w500, color: AppColors.themes[1].primary),
  ];
  static List<TextStyle> bodyLarge = [
    TextStyle(fontFamily: _fontFamily, fontSize: 17, fontWeight: FontWeight.w700, color: AppColors.themes[0].primary),
    TextStyle(fontFamily: _fontFamily, fontSize: 17, fontWeight: FontWeight.w700, color: AppColors.themes[1].primary),
  ]; // Default for TextField MATERIAL 3
  static List<TextStyle> bodyMedium = [
    TextStyle(fontFamily: _fontFamily, fontSize: 15, fontWeight: FontWeight.w300, color: AppColors.themes[0].primary),
    TextStyle(fontFamily: _fontFamily, fontSize: 15, fontWeight: FontWeight.w300, color: AppColors.themes[1].primary),
  ]; // Default for Text
  static List<TextStyle> bodySmall = [
    TextStyle(fontFamily: _fontFamily, fontSize: 14, fontWeight: FontWeight.w500, color: AppColors.themes[0].primary),
    TextStyle(fontFamily: _fontFamily, fontSize: 14, fontWeight: FontWeight.w500, color: AppColors.themes[1].primary),
  ];
  static List<TextStyle> labelLarge = [
    TextStyle(fontFamily: _fontFamily, fontSize: 16, fontWeight: FontWeight.w700, color: AppColors.themes[0].primary),
    TextStyle(fontFamily: _fontFamily, fontSize: 16, fontWeight: FontWeight.w700, color: AppColors.themes[1].primary),
  ];
  static List<TextStyle> labelMedium = [
    TextStyle(fontFamily: _fontFamily, fontSize: 15, fontWeight: FontWeight.w400, color: AppColors.themes[0].primary),
    TextStyle(fontFamily: _fontFamily, fontSize: 15, fontWeight: FontWeight.w400, color: AppColors.themes[1].primary),
  ];
  static List<TextStyle> labelSmall = [
    TextStyle(fontFamily: _fontFamily, fontSize: 15, fontWeight: FontWeight.w300, color: AppColors.themes[0].primary),
    TextStyle(fontFamily: _fontFamily, fontSize: 15, fontWeight: FontWeight.w300, color: AppColors.themes[1].primary),
  ];
}
