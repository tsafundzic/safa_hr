import 'package:di/domain_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:layout/layout.dart';
import 'package:safa_hr/core/l10n/app_localizations.dart';

import 'core/di/di.dart';
import 'core/theme/safa_theme.dart';

class SafaApp extends ConsumerWidget {
  const SafaApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    final appLocale = ref.watch(appLanguageUseCaseProvider);

    return Layout(
      format: FluidLayoutFormat(),
      child: Theme(
        data: AppTheme.safaTheme(AppThemeType.light),
        child: MaterialApp.router(
          routerConfig: router,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          locale: appLocale ?? AppLocalizations.supportedLocales.first,
          theme: AppTheme.safaTheme(AppThemeType.light),
          darkTheme: AppTheme.safaTheme(AppThemeType.dark),
          themeMode: ref.watch(appAppearanceUseCaseProvider),
        ),
      ),
    );
  }
}
