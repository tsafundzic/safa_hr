import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:universal_io/io.dart';

import '../app_language_repository.dart';

class AppLanguageUseCase extends StateNotifier<Locale?> {
  final AppLanguageRepository _repository;

  AppLanguageUseCase(this._repository) : super(null) {
    _resolveAppLanguage();
  }

  Future<void> _resolveAppLanguage() async {
    var locale = await _repository.appLocale;
    if (locale != null) {
      state = locale;
    } else {
      String defaultLocale = Platform.localeName;
      if (defaultLocale.length > 2) {
        defaultLocale = defaultLocale.substring(0, 2);
      }
      if (defaultLocale == 'hr' || defaultLocale == 'en') {
        var locale = Locale(defaultLocale);
        await _repository.setAppLocale(locale);
        state = locale;
      } else {
        var locale = const Locale('en');
        await _repository.setAppLocale(locale);
        state = locale;
      }
    }
  }

  Future<void> setAppLanguage(Locale locale) async {
    await _repository.setAppLocale(locale);
    await _resolveAppLanguage();
  }
}
