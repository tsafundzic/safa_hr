// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element, unnecessary_cast

part of 'tailor_theme_extensions.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

class AppColors extends ThemeExtension<AppColors> with DiagnosticableTreeMixin {
  const AppColors({
    required this.background,
    required this.error,
    required this.onBackground,
    required this.onPrimary,
    required this.onSecondary,
    required this.onSurface,
    required this.onTertiary,
    required this.outline,
    required this.primary,
    required this.secondary,
    required this.shadow,
    required this.surface,
    required this.tertiary,
  });

  final Color background;
  final Color error;
  final Color onBackground;
  final Color onPrimary;
  final Color onSecondary;
  final Color onSurface;
  final Color onTertiary;
  final Color outline;
  final Color primary;
  final Color secondary;
  final Color shadow;
  final Color surface;
  final Color tertiary;

  static final AppColors light = AppColors(
    background: _$AppColors.background[0],
    error: _$AppColors.error[0],
    onBackground: _$AppColors.onBackground[0],
    onPrimary: _$AppColors.onPrimary[0],
    onSecondary: _$AppColors.onSecondary[0],
    onSurface: _$AppColors.onSurface[0],
    onTertiary: _$AppColors.onTertiary[0],
    outline: _$AppColors.outline[0],
    primary: _$AppColors.primary[0],
    secondary: _$AppColors.secondary[0],
    shadow: _$AppColors.shadow[0],
    surface: _$AppColors.surface[0],
    tertiary: _$AppColors.tertiary[0],
  );

  static final AppColors dark = AppColors(
    background: _$AppColors.background[1],
    error: _$AppColors.error[1],
    onBackground: _$AppColors.onBackground[1],
    onPrimary: _$AppColors.onPrimary[1],
    onSecondary: _$AppColors.onSecondary[1],
    onSurface: _$AppColors.onSurface[1],
    onTertiary: _$AppColors.onTertiary[1],
    outline: _$AppColors.outline[1],
    primary: _$AppColors.primary[1],
    secondary: _$AppColors.secondary[1],
    shadow: _$AppColors.shadow[1],
    surface: _$AppColors.surface[1],
    tertiary: _$AppColors.tertiary[1],
  );

  static final themes = [
    light,
    dark,
  ];

  @override
  AppColors copyWith({
    Color? background,
    Color? error,
    Color? onBackground,
    Color? onPrimary,
    Color? onSecondary,
    Color? onSurface,
    Color? onTertiary,
    Color? outline,
    Color? primary,
    Color? secondary,
    Color? shadow,
    Color? surface,
    Color? tertiary,
  }) {
    return AppColors(
      background: background ?? this.background,
      error: error ?? this.error,
      onBackground: onBackground ?? this.onBackground,
      onPrimary: onPrimary ?? this.onPrimary,
      onSecondary: onSecondary ?? this.onSecondary,
      onSurface: onSurface ?? this.onSurface,
      onTertiary: onTertiary ?? this.onTertiary,
      outline: outline ?? this.outline,
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
      shadow: shadow ?? this.shadow,
      surface: surface ?? this.surface,
      tertiary: tertiary ?? this.tertiary,
    );
  }

  @override
  AppColors lerp(covariant ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) return this as AppColors;
    return AppColors(
      background: Color.lerp(background, other.background, t)!,
      error: Color.lerp(error, other.error, t)!,
      onBackground: Color.lerp(onBackground, other.onBackground, t)!,
      onPrimary: Color.lerp(onPrimary, other.onPrimary, t)!,
      onSecondary: Color.lerp(onSecondary, other.onSecondary, t)!,
      onSurface: Color.lerp(onSurface, other.onSurface, t)!,
      onTertiary: Color.lerp(onTertiary, other.onTertiary, t)!,
      outline: Color.lerp(outline, other.outline, t)!,
      primary: Color.lerp(primary, other.primary, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      shadow: Color.lerp(shadow, other.shadow, t)!,
      surface: Color.lerp(surface, other.surface, t)!,
      tertiary: Color.lerp(tertiary, other.tertiary, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppColors'))
      ..add(DiagnosticsProperty('background', background))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('onBackground', onBackground))
      ..add(DiagnosticsProperty('onPrimary', onPrimary))
      ..add(DiagnosticsProperty('onSecondary', onSecondary))
      ..add(DiagnosticsProperty('onSurface', onSurface))
      ..add(DiagnosticsProperty('onTertiary', onTertiary))
      ..add(DiagnosticsProperty('outline', outline))
      ..add(DiagnosticsProperty('primary', primary))
      ..add(DiagnosticsProperty('secondary', secondary))
      ..add(DiagnosticsProperty('shadow', shadow))
      ..add(DiagnosticsProperty('surface', surface))
      ..add(DiagnosticsProperty('tertiary', tertiary));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppColors &&
            const DeepCollectionEquality()
                .equals(background, other.background) &&
            const DeepCollectionEquality().equals(error, other.error) &&
            const DeepCollectionEquality()
                .equals(onBackground, other.onBackground) &&
            const DeepCollectionEquality().equals(onPrimary, other.onPrimary) &&
            const DeepCollectionEquality()
                .equals(onSecondary, other.onSecondary) &&
            const DeepCollectionEquality().equals(onSurface, other.onSurface) &&
            const DeepCollectionEquality()
                .equals(onTertiary, other.onTertiary) &&
            const DeepCollectionEquality().equals(outline, other.outline) &&
            const DeepCollectionEquality().equals(primary, other.primary) &&
            const DeepCollectionEquality().equals(secondary, other.secondary) &&
            const DeepCollectionEquality().equals(shadow, other.shadow) &&
            const DeepCollectionEquality().equals(surface, other.surface) &&
            const DeepCollectionEquality().equals(tertiary, other.tertiary));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(background),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(onBackground),
      const DeepCollectionEquality().hash(onPrimary),
      const DeepCollectionEquality().hash(onSecondary),
      const DeepCollectionEquality().hash(onSurface),
      const DeepCollectionEquality().hash(onTertiary),
      const DeepCollectionEquality().hash(outline),
      const DeepCollectionEquality().hash(primary),
      const DeepCollectionEquality().hash(secondary),
      const DeepCollectionEquality().hash(shadow),
      const DeepCollectionEquality().hash(surface),
      const DeepCollectionEquality().hash(tertiary),
    );
  }
}

extension AppColorsBuildContext on BuildContext {
  AppColors get appColors => Theme.of(this).extension<AppColors>()!;
}

class AppTextStyles extends ThemeExtension<AppTextStyles>
    with DiagnosticableTreeMixin {
  const AppTextStyles({
    required this.bodyLarge,
    required this.bodyMedium,
    required this.bodySmall,
    required this.displayLarge,
    required this.displayMedium,
    required this.displaySmall,
    required this.headlineLarge,
    required this.headlineMedium,
    required this.headlineSmall,
    required this.labelLarge,
    required this.labelMedium,
    required this.labelSmall,
    required this.titleLarge,
    required this.titleMedium,
    required this.titleSmall,
  });

  final TextStyle bodyLarge;
  final TextStyle bodyMedium;
  final TextStyle bodySmall;
  final TextStyle displayLarge;
  final TextStyle displayMedium;
  final TextStyle displaySmall;
  final TextStyle headlineLarge;
  final TextStyle headlineMedium;
  final TextStyle headlineSmall;
  final TextStyle labelLarge;
  final TextStyle labelMedium;
  final TextStyle labelSmall;
  final TextStyle titleLarge;
  final TextStyle titleMedium;
  final TextStyle titleSmall;

  static final AppTextStyles light = AppTextStyles(
    bodyLarge: _$AppTextStyles.bodyLarge[0],
    bodyMedium: _$AppTextStyles.bodyMedium[0],
    bodySmall: _$AppTextStyles.bodySmall[0],
    displayLarge: _$AppTextStyles.displayLarge[0],
    displayMedium: _$AppTextStyles.displayMedium[0],
    displaySmall: _$AppTextStyles.displaySmall[0],
    headlineLarge: _$AppTextStyles.headlineLarge[0],
    headlineMedium: _$AppTextStyles.headlineMedium[0],
    headlineSmall: _$AppTextStyles.headlineSmall[0],
    labelLarge: _$AppTextStyles.labelLarge[0],
    labelMedium: _$AppTextStyles.labelMedium[0],
    labelSmall: _$AppTextStyles.labelSmall[0],
    titleLarge: _$AppTextStyles.titleLarge[0],
    titleMedium: _$AppTextStyles.titleMedium[0],
    titleSmall: _$AppTextStyles.titleSmall[0],
  );

  static final AppTextStyles dark = AppTextStyles(
    bodyLarge: _$AppTextStyles.bodyLarge[1],
    bodyMedium: _$AppTextStyles.bodyMedium[1],
    bodySmall: _$AppTextStyles.bodySmall[1],
    displayLarge: _$AppTextStyles.displayLarge[1],
    displayMedium: _$AppTextStyles.displayMedium[1],
    displaySmall: _$AppTextStyles.displaySmall[1],
    headlineLarge: _$AppTextStyles.headlineLarge[1],
    headlineMedium: _$AppTextStyles.headlineMedium[1],
    headlineSmall: _$AppTextStyles.headlineSmall[1],
    labelLarge: _$AppTextStyles.labelLarge[1],
    labelMedium: _$AppTextStyles.labelMedium[1],
    labelSmall: _$AppTextStyles.labelSmall[1],
    titleLarge: _$AppTextStyles.titleLarge[1],
    titleMedium: _$AppTextStyles.titleMedium[1],
    titleSmall: _$AppTextStyles.titleSmall[1],
  );

  static final themes = [
    light,
    dark,
  ];

  @override
  AppTextStyles copyWith({
    TextStyle? bodyLarge,
    TextStyle? bodyMedium,
    TextStyle? bodySmall,
    TextStyle? displayLarge,
    TextStyle? displayMedium,
    TextStyle? displaySmall,
    TextStyle? headlineLarge,
    TextStyle? headlineMedium,
    TextStyle? headlineSmall,
    TextStyle? labelLarge,
    TextStyle? labelMedium,
    TextStyle? labelSmall,
    TextStyle? titleLarge,
    TextStyle? titleMedium,
    TextStyle? titleSmall,
  }) {
    return AppTextStyles(
      bodyLarge: bodyLarge ?? this.bodyLarge,
      bodyMedium: bodyMedium ?? this.bodyMedium,
      bodySmall: bodySmall ?? this.bodySmall,
      displayLarge: displayLarge ?? this.displayLarge,
      displayMedium: displayMedium ?? this.displayMedium,
      displaySmall: displaySmall ?? this.displaySmall,
      headlineLarge: headlineLarge ?? this.headlineLarge,
      headlineMedium: headlineMedium ?? this.headlineMedium,
      headlineSmall: headlineSmall ?? this.headlineSmall,
      labelLarge: labelLarge ?? this.labelLarge,
      labelMedium: labelMedium ?? this.labelMedium,
      labelSmall: labelSmall ?? this.labelSmall,
      titleLarge: titleLarge ?? this.titleLarge,
      titleMedium: titleMedium ?? this.titleMedium,
      titleSmall: titleSmall ?? this.titleSmall,
    );
  }

  @override
  AppTextStyles lerp(covariant ThemeExtension<AppTextStyles>? other, double t) {
    if (other is! AppTextStyles) return this as AppTextStyles;
    return AppTextStyles(
      bodyLarge: TextStyle.lerp(bodyLarge, other.bodyLarge, t)!,
      bodyMedium: TextStyle.lerp(bodyMedium, other.bodyMedium, t)!,
      bodySmall: TextStyle.lerp(bodySmall, other.bodySmall, t)!,
      displayLarge: TextStyle.lerp(displayLarge, other.displayLarge, t)!,
      displayMedium: TextStyle.lerp(displayMedium, other.displayMedium, t)!,
      displaySmall: TextStyle.lerp(displaySmall, other.displaySmall, t)!,
      headlineLarge: TextStyle.lerp(headlineLarge, other.headlineLarge, t)!,
      headlineMedium: TextStyle.lerp(headlineMedium, other.headlineMedium, t)!,
      headlineSmall: TextStyle.lerp(headlineSmall, other.headlineSmall, t)!,
      labelLarge: TextStyle.lerp(labelLarge, other.labelLarge, t)!,
      labelMedium: TextStyle.lerp(labelMedium, other.labelMedium, t)!,
      labelSmall: TextStyle.lerp(labelSmall, other.labelSmall, t)!,
      titleLarge: TextStyle.lerp(titleLarge, other.titleLarge, t)!,
      titleMedium: TextStyle.lerp(titleMedium, other.titleMedium, t)!,
      titleSmall: TextStyle.lerp(titleSmall, other.titleSmall, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppTextStyles'))
      ..add(DiagnosticsProperty('bodyLarge', bodyLarge))
      ..add(DiagnosticsProperty('bodyMedium', bodyMedium))
      ..add(DiagnosticsProperty('bodySmall', bodySmall))
      ..add(DiagnosticsProperty('displayLarge', displayLarge))
      ..add(DiagnosticsProperty('displayMedium', displayMedium))
      ..add(DiagnosticsProperty('displaySmall', displaySmall))
      ..add(DiagnosticsProperty('headlineLarge', headlineLarge))
      ..add(DiagnosticsProperty('headlineMedium', headlineMedium))
      ..add(DiagnosticsProperty('headlineSmall', headlineSmall))
      ..add(DiagnosticsProperty('labelLarge', labelLarge))
      ..add(DiagnosticsProperty('labelMedium', labelMedium))
      ..add(DiagnosticsProperty('labelSmall', labelSmall))
      ..add(DiagnosticsProperty('titleLarge', titleLarge))
      ..add(DiagnosticsProperty('titleMedium', titleMedium))
      ..add(DiagnosticsProperty('titleSmall', titleSmall));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppTextStyles &&
            const DeepCollectionEquality().equals(bodyLarge, other.bodyLarge) &&
            const DeepCollectionEquality()
                .equals(bodyMedium, other.bodyMedium) &&
            const DeepCollectionEquality().equals(bodySmall, other.bodySmall) &&
            const DeepCollectionEquality()
                .equals(displayLarge, other.displayLarge) &&
            const DeepCollectionEquality()
                .equals(displayMedium, other.displayMedium) &&
            const DeepCollectionEquality()
                .equals(displaySmall, other.displaySmall) &&
            const DeepCollectionEquality()
                .equals(headlineLarge, other.headlineLarge) &&
            const DeepCollectionEquality()
                .equals(headlineMedium, other.headlineMedium) &&
            const DeepCollectionEquality()
                .equals(headlineSmall, other.headlineSmall) &&
            const DeepCollectionEquality()
                .equals(labelLarge, other.labelLarge) &&
            const DeepCollectionEquality()
                .equals(labelMedium, other.labelMedium) &&
            const DeepCollectionEquality()
                .equals(labelSmall, other.labelSmall) &&
            const DeepCollectionEquality()
                .equals(titleLarge, other.titleLarge) &&
            const DeepCollectionEquality()
                .equals(titleMedium, other.titleMedium) &&
            const DeepCollectionEquality()
                .equals(titleSmall, other.titleSmall));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(bodyLarge),
      const DeepCollectionEquality().hash(bodyMedium),
      const DeepCollectionEquality().hash(bodySmall),
      const DeepCollectionEquality().hash(displayLarge),
      const DeepCollectionEquality().hash(displayMedium),
      const DeepCollectionEquality().hash(displaySmall),
      const DeepCollectionEquality().hash(headlineLarge),
      const DeepCollectionEquality().hash(headlineMedium),
      const DeepCollectionEquality().hash(headlineSmall),
      const DeepCollectionEquality().hash(labelLarge),
      const DeepCollectionEquality().hash(labelMedium),
      const DeepCollectionEquality().hash(labelSmall),
      const DeepCollectionEquality().hash(titleLarge),
      const DeepCollectionEquality().hash(titleMedium),
      const DeepCollectionEquality().hash(titleSmall),
    );
  }
}

extension AppTextStylesBuildContext on BuildContext {
  AppTextStyles get appTextStyles => Theme.of(this).extension<AppTextStyles>()!;
}
