import 'package:flutter_riverpod/flutter_riverpod.dart';

extension AsyncValueExtension<T> on AsyncValue<T> {
  /// Adapted from "extension AsyncValueX<T>" in RiverPod.
  /// Adds option to display "loading()" while refreshing the "error" state.
  R whenExtended<R>({
    bool skipLoadingOnReload = false,
    bool skipLoadingOnRefresh = true,
    bool skipError = false,
    bool loadingIfLoadingError = false,
    required R Function(T data) data,
    required R Function(Object error, StackTrace stackTrace) error,
    required R Function() loading,
  }) {
    if (isLoading) {
      bool skip;
      if (isRefreshing) {
        skip = skipLoadingOnRefresh;
      } else if (isReloading) {
        skip = skipLoadingOnReload;
      } else {
        skip = false;
      }
      if (!skip) return loading();
    }

    if (hasError && (!hasValue || !skipError)) {
      if (loadingIfLoadingError && (isLoading || isRefreshing || isReloading)) {
        return loading();
      }
      return error(this.error!, stackTrace!);
    }

    return data(requireValue);
  }
}
