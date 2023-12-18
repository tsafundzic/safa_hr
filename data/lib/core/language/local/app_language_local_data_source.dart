import 'package:flutter/material.dart';

abstract class AppLanguageLocalDataSource {
  Future<void> setAppLocale(Locale locale);

  Future<Locale?> get appLocale;
}
