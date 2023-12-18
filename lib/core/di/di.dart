import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:safa_hr/core/routing/router.dart';
import 'package:safa_hr/core/theme/app_appearance_manager.dart';
import 'package:di/domain_module.dart';

final routerProvider = Provider((ref) => getRouter(ref));

final appAppearanceUseCaseProvider = StateNotifierProvider<AppAppearanceManager, ThemeMode>((ref) => AppAppearanceManager(ref.watch(appAppearanceRepositoryProvider)));
