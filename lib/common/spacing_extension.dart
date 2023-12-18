import 'package:flutter/material.dart';

extension NumSpacingExtensions on num {
  Widget space() => SizedBox.square(dimension: toDouble());

  Widget spaceVertical() => SizedBox(height: toDouble());

  Widget spaceHorizontal() => SizedBox(width: toDouble());
}
