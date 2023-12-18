import 'package:data/common/local_secured_storage.dart';
import 'package:data/core/language/app_language_repository_impl.dart';
import 'package:data/core/language/local/app_language_local_data_source_impl.dart';
import 'package:data/core/theme/local/app_appearance_local_data_source_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

final _secureStorageProvider = Provider<FlutterSecureStorage>((ref) => const FlutterSecureStorage());
final _localSecuredStorageProvider = Provider<LocalSecuredStorage>((ref) => LocalSecuredStorage(ref.watch(_secureStorageProvider)));

final languageLocalDataSourceProvider = Provider((ref) => AppLanguageLocalDataSourceImpl(ref.watch(_localSecuredStorageProvider)));
final appLanguageRepositoryProvider = Provider((ref) => AppLanguageRepositoryImpl(ref.watch(languageLocalDataSourceProvider)));

final appAppearanceLocalDataSourceProvider = Provider((ref) => AppAppearanceLocalDataSourceImpl(ref.watch(_localSecuredStorageProvider)));
