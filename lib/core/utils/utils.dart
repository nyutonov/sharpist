import 'package:ansicolor/ansicolor.dart';
import 'package:flutter/material.dart';

class Utils {
  static String numberFormat(int k) {
    if (k > 9) {
      return k.toString();
    } else {
      return "0$k";
    }
  }

  static AnsiPen debug = AnsiPen()..gray(level: 0.5);
  static AnsiPen warning = AnsiPen()..yellow(bold: true);
  static AnsiPen error = AnsiPen()..red(bold: true);
  static AnsiPen info = AnsiPen()..blue(bold: true);
  static AnsiPen success = AnsiPen()..green(bold: true);

  static void printWarning(String text) {
    debugPrint(warning(text));
    debugPrint(debug(""));
  }

  static void printError(String text) {
    debugPrint(error(text));
    debugPrint(debug(""));
  }

  static void printInfo(String text) {
    debugPrint(info(text));
    debugPrint(debug(""));
  }

  static void printSuccess(String text) {
    debugPrint(success(text));
    debugPrint(debug(""));
  }
}