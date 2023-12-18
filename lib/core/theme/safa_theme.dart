import 'package:flutter/material.dart';

import 'tailor_theme_extensions.dart';

enum AppThemeType {
  light,
  dark,
}

class AppTheme {
  static ThemeData safaTheme(AppThemeType themeType) {
    Brightness brightness;
    AppColors colors;
    AppTextStyles textStyles;
    switch (themeType) {
      case AppThemeType.light:
        brightness = Brightness.light;
        colors = AppColors.light;
        textStyles = AppTextStyles.light;
        break;
      case AppThemeType.dark:
        brightness = Brightness.dark;
        colors = AppColors.dark;
        textStyles = AppTextStyles.dark;
        break;
    }

    const Radius inputsRadius = Radius.circular(6);

    return ThemeData(
      useMaterial3: true,
      fontFamily: 'Saira',
      textTheme: TextTheme(
        titleSmall: textStyles.titleSmall,
        titleMedium: textStyles.titleMedium,
        titleLarge: textStyles.titleLarge,
        labelSmall: textStyles.labelSmall,
        labelMedium: textStyles.labelMedium,
        labelLarge: textStyles.labelLarge,
        bodySmall: textStyles.bodySmall,
        bodyMedium: textStyles.bodyMedium,
      ),
      brightness: brightness,
      scaffoldBackgroundColor: colors.background,
      colorScheme: ColorScheme(
        brightness: brightness,
        background: colors.background,
        onBackground: colors.onBackground,
        surface: colors.surface,
        primary: colors.primary,
        outline: colors.outline,
        shadow: colors.shadow,
        primaryContainer: colors.primary,
        secondaryContainer: colors.secondary,
        tertiaryContainer: colors.tertiary,
        tertiary: colors.tertiary,
        error: colors.error,
        onError: colors.onBackground,
        onPrimary: colors.onPrimary,
        onSecondary: colors.onSecondary,
        onSurface: colors.onSurface,
        secondary: colors.secondary,
      ),
      dividerTheme: DividerThemeData(
        color: colors.shadow,
      ),
      inputDecorationTheme: InputDecorationTheme(
        labelStyle: textStyles.titleSmall,
        contentPadding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
        hintStyle: textStyles.titleSmall.copyWith(color: colors.outline),
        errorStyle: textStyles.labelMedium.copyWith(color: colors.error),
        // floatingLabelStyle: textStyles.formValue,
        counterStyle: textStyles.titleSmall.copyWith(color: colors.outline),
        border: OutlineInputBorder(
          borderRadius: const BorderRadius.all(inputsRadius),
          borderSide: BorderSide(width: 1.0, color: colors.outline),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(inputsRadius),
          borderSide: BorderSide(width: 1.0, color: colors.outline),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(inputsRadius),
          borderSide: BorderSide(width: 1.0, color: colors.error),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(inputsRadius),
          borderSide: BorderSide(width: 1.0, color: colors.shadow),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(inputsRadius),
          borderSide: BorderSide(width: 1.0, color: colors.primary),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(inputsRadius),
          borderSide: BorderSide(width: 1.0, color: colors.primary),
        ),
      ),
    );
  }
}
