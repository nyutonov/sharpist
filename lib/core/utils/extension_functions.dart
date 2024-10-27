import 'package:sharpist/config/theme/themes.dart';
import 'package:flutter/material.dart';

extension Space on int {
  Widget get height => SizedBox(height: toDouble());
  Widget get width => SizedBox(width: toDouble());
}

extension BuildContextExt on BuildContext {
  ThemeData get theme => Theme.of(this);

  ColorScheme get colorScheme => theme.colorScheme;

  AppThemeColors get color => theme.extension<AppThemeColors>()!;

  ThemeTextStyles get textStyle => theme.extension<ThemeTextStyles>()!;
}