import 'package:data/common/local_secured_storage.dart';
import 'package:data/core/theme/local/app_appearance_local_data_source.dart';
import 'package:flutter/material.dart';

class AppAppearanceLocalDataSourceImpl extends AppAppearanceLocalDataSource {
  final LocalSecuredStorage _localSecuredStorage;

  AppAppearanceLocalDataSourceImpl(this._localSecuredStorage);

  @override
  Future<ThemeMode?> get appAppearance => _localSecuredStorage.appAppearance();

  @override
  Future<void> setAppAppearance(ThemeMode appearance) async {
    return _localSecuredStorage.setAppAppearance(appearance);
  }
}
