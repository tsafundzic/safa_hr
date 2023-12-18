
import 'package:data/core/theme/local/app_appearance_local_data_source.dart';
import 'package:domain/core/theme/app_appearance_repository.dart';
import 'package:flutter/material.dart';

class AppAppearanceRepositoryImpl extends AppAppearanceRepository {
  final AppAppearanceLocalDataSource _dataSource;

  AppAppearanceRepositoryImpl(this._dataSource);

  @override
  Future<ThemeMode> get appearance async {
    var appearance = await _dataSource.appAppearance;
    return appearance ?? ThemeMode.system;
  }

  @override
  Future<void> setAppearance(ThemeMode appearance) async {
   return _dataSource.setAppAppearance(appearance);
  }
}
