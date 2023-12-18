import 'dart:ui';

import '../../../common/local_secured_storage.dart';
import 'app_language_local_data_source.dart';


class AppLanguageLocalDataSourceImpl extends AppLanguageLocalDataSource {
  final LocalSecuredStorage _localSecuredStorage;

  AppLanguageLocalDataSourceImpl(this._localSecuredStorage);

  @override
  Future<void> setAppLocale(Locale locale) async => _localSecuredStorage.setAppLanguageCode(locale.languageCode);

  @override
  Future<Locale?> get appLocale async {
    String? localeLanguageCode = await _localSecuredStorage.appLanguageCode;
    return localeLanguageCode != null ? Locale(localeLanguageCode) : null;
  }
}
