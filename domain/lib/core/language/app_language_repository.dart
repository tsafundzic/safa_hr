import 'package:flutter/material.dart';

abstract class AppLanguageRepository {
  Future<void> setAppLocale(Locale locale);

  Future<Locale?> get appLocale;
}
