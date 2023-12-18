import 'package:data/core/theme/app_appearance_repository_impl.dart';
import 'package:domain/core/language/usecase/app_language_usecase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'data_module.dart';

final appAppearanceRepositoryProvider = Provider((ref) => AppAppearanceRepositoryImpl(ref.watch(appAppearanceLocalDataSourceProvider)));
final appLanguageUseCaseProvider = StateNotifierProvider<AppLanguageUseCase, Locale?>((ref) => AppLanguageUseCase(ref.watch(appLanguageRepositoryProvider)));
