import 'package:flutter/material.dart';

abstract class AppAppearanceLocalDataSource {
  Future<void> setAppAppearance(ThemeMode appearance);

  Future<ThemeMode?> get appAppearance;
}
