import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

const String _appLanguageKey = 'appLanguage';
const String _appAppearanceKey = 'appAppearance';

class LocalSecuredStorage {
  LocalSecuredStorage(this.secureStorage);

  final FlutterSecureStorage secureStorage;

  ///
  /// General operations
  ///

  Future<void> deleteAll() async {
    await secureStorage.deleteAll();
  }

  Future<void> write(String key, String value) async {
    await secureStorage.write(key: key, value: value);
  }

  Future<String?> read(String key) async {
    return secureStorage.read(key: key);
  }

  Future<void> delete(String key) async {
    return secureStorage.delete(key: key);
  }

  ///
  /// Storage values set/get - language and tokens
  ///

  Future<String?> get appLanguageCode async {
    return read(_appLanguageKey);
  }

  Future<void> setAppLanguageCode(String value) async {
    await write(_appLanguageKey, value);
  }

  ///
  /// Storage values set/get - Appearance
  ///
  ///
  Future<void> setAppAppearance(ThemeMode appearance) async {
    await write(_appAppearanceKey, appearance.name);
  }

  Future<ThemeMode?> appAppearance() async {
    String? appearanceString = await read(_appAppearanceKey);

    return ThemeMode.values.asNameMap()[appearanceString ?? ""];
  }
}
