import 'package:flutter/material.dart';

mixin StateExtensionsMixin<T extends StatefulWidget> on State<T> {
  void setStateIfMounted(VoidCallback fn, {bool runWithoutSetStateIfNotMounted = false}) {
    if (mounted) {
      setState(fn);
    } else if (runWithoutSetStateIfNotMounted) {
      fn.call();
    }
  }
}
