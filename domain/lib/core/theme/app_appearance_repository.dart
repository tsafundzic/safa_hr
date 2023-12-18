import 'package:flutter/material.dart';

abstract class AppAppearanceRepository {
  Future<void> setAppearance(ThemeMode appearance);

  Future<ThemeMode> get appearance;
}
