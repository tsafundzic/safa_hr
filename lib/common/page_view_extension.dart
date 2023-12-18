import 'package:flutter/cupertino.dart';

extension PageControllerExtensions on PageController {
  double get currentPage {
    return hasClients ? (page?.round() ?? 0) + 1 : 1;
  }
}
