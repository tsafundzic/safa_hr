import 'package:domain/core/theme/app_appearance_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppAppearanceManager extends StateNotifier<ThemeMode> {
  final AppAppearanceRepository _repository;

  AppAppearanceManager(this._repository) : super(ThemeMode.system) {
    _resolveAppearance();
  }

  Future<void> _resolveAppearance() async {
    state = await _repository.appearance;
  }

  Future<void> setAppAppearance(ThemeMode appearance) async
  {
    await _repository.setAppearance(appearance);
    _resolveAppearance();
  }
}
