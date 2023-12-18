import 'package:flutter/material.dart';
import 'package:domain/core/language/app_language_repository.dart';

import 'local/app_language_local_data_source.dart';

class AppLanguageRepositoryImpl extends AppLanguageRepository {
  final AppLanguageLocalDataSource _localDataSource;

  AppLanguageRepositoryImpl(this._localDataSource);

  @override
  Future<void> setAppLocale(Locale locale) async {
    return _localDataSource.setAppLocale(locale);
  }

  @override
  Future<Locale?> get appLocale => _localDataSource.appLocale;
}
