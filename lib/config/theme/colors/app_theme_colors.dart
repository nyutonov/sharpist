part of 'package:sharpist/config/theme/themes.dart';

// A set of colors for the entire app.

// light
const colorLightScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFFF67280),
  onPrimary: Colors.white,
  surface: Colors.white,
  onSurface: Color(0xFF020000),
  secondary: Color(0xFF69D7C7),
  onSecondary: Color(0xFF020000),
  error: Color(0xFFFF382B),
  onError: Colors.white,
  outline: Color(0xFFC7C7CC),
);

// dark
const colorDarkScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFFF67280),
  onPrimary: Colors.white,
  surface: Colors.black,
  onSurface: Color(0xFF020000),
  secondary: Color(0xFF69D7C7),
  onSecondary: Color(0xFF020000),
  error: Color(0xFFFE4336),
  onError: Colors.white,
  outline: Color(0xFFC7C7CC),
);

// custom
class AppThemeColors extends ThemeExtension<AppThemeColors> {
  const AppThemeColors({
    required this.background,
    required this.onBackground,
    required this.backgroundColor,
    required this.text1,
    required this.text2,
    required this.black,
    required this.grey,
    required this.grey2,
    required this.grey3,
    required this.grey4,
    required this.grey5,
    required this.grey6,
    required this.blue,
    required this.yellow,
    required this.textPrimary,
    required this.textSecondary,
    required this.tabBackground,
    required this.textFieldUnderline,
    required this.textFieldBackground,
    required this.textFieldBackground2,
    required this.success,
    required this.secondaryColor,
  });

  final Color background;
  final Color onBackground;
  final Color backgroundColor;
  final Color text1;
  final Color text2;
  final Color black;
  final Color grey;
  final Color grey2;
  final Color grey3;
  final Color grey4;
  final Color grey5;
  final Color grey6;
  final Color blue;
  final Color yellow;
  final Color textPrimary;
  final Color textSecondary;
  final Color tabBackground;
  final Color textFieldUnderline;
  final Color textFieldBackground;
  final Color textFieldBackground2;
  final Color success;
  final Color secondaryColor;

  static const AppThemeColors light = AppThemeColors(
    background: Colors.white,
    onBackground: Colors.black,
    backgroundColor: Color(0xFFF7F7F7),
    text1: Color(0xFF00040A),
    text2: Color(0xFF323232),
    black: Color(0xFF171717),
    grey: Color(0xFF8E8E93),
    grey2: Color(0xFFAFB0B4),
    grey3: Color(0xFFC7C7CC),
    grey4: Color(0xFFD2D2D7),
    grey5: Color(0xFFE6E6EB),
    grey6: Color(0xFFF2F2F7),
    blue: Color(0xFF007BFE),
    yellow: Color(0xFFFFCD00),
    textPrimary: Color(0xFF101828),
    textSecondary: Color(0xFF8E8E93),
    tabBackground: Color(0x1E767680),
    textFieldUnderline: Color(0xFFDCDCDC),
    textFieldBackground: Color(0xFFF5F5F5),
    textFieldBackground2: Color(0xFFF1F1F1),
    success: Color(0xFF31C859),
    secondaryColor: Color(0xFF111126),
  );

  static const AppThemeColors dark = AppThemeColors(
    background: Colors.black,
    onBackground: Colors.white,
    backgroundColor: Colors.black12,
    text1: Colors.white,
    text2: Colors.white,
    black: Colors.black,
    grey: Color(0xFF8E8E93),
    grey2: Color(0xFF636366),
    grey3: Color(0xFF464649),
    grey4: Color(0xFF373739),
    grey5: Color(0xFF28282A),
    grey6: Color(0xFF151518),
    blue: Color(0xFF0385FF),
    yellow: Color(0xFFFFCD00),
    textPrimary: Colors.white,
    textSecondary: Colors.white,
    tabBackground: Colors.white,
    textFieldUnderline: Colors.white,
    textFieldBackground: Colors.white,
    textFieldBackground2: Colors.white,
    success: Color(0xFF31C859),
    secondaryColor: Colors.white,
  );

  @override
  ThemeExtension<AppThemeColors> copyWith({
    Color? background,
    Color? onBackground,
    Color? backgroundColor,
    Color? secondaryText,
    Color? text1,
    Color? text2,
    Color? black,
    Color? grey,
    Color? grey2,
    Color? grey3,
    Color? grey4,
    Color? grey5,
    Color? grey6,
    Color? blue,
    Color? yellow,
    Color? textPrimary,
    Color? textSecondary,
    Color? tabBackground,
    Color? textFieldUnderline,
    Color? textFieldBackground,
    Color? textFieldBackground2,
    Color? success,
    Color? secondaryColor,
  }) =>
      AppThemeColors(
        background: background ?? this.background,
        onBackground: onBackground ?? this.onBackground,
        backgroundColor: backgroundColor ?? this.backgroundColor,
        text1: text1 ?? this.text1,
        text2: text2 ?? this.text2,
        black: black ?? this.black,
        grey: grey ?? this.grey,
        grey2: grey2 ?? this.grey2,
        grey3: grey3 ?? this.grey3,
        grey4: grey4 ?? this.grey4,
        grey5: grey5 ?? this.grey5,
        grey6: grey6 ?? this.grey6,
        blue: blue ?? this.blue,
        yellow: yellow ?? this.yellow,
        textPrimary: textPrimary ?? this.textPrimary,
        textSecondary: textSecondary ?? this.textSecondary,
        tabBackground: tabBackground ?? this.tabBackground,
        textFieldUnderline: textFieldUnderline ?? this.textFieldUnderline,
        textFieldBackground: textFieldBackground ?? this.textFieldBackground,
        textFieldBackground2: textFieldBackground2 ?? this.textFieldBackground2,
        success: success ?? this.success,
        secondaryColor: secondaryColor ?? this.secondaryColor,
      );

  @override
  ThemeExtension<AppThemeColors> lerp(
    ThemeExtension<AppThemeColors>? other,
    double t,
  ) {
    if (other is! AppThemeColors) {
      return this;
    }
    return AppThemeColors(
      background: Color.lerp(background, other.background, t)!,
      onBackground: Color.lerp(onBackground, other.onBackground, t)!,
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t)!,
      text1: Color.lerp(text1, other.text1, t)!,
      text2: Color.lerp(text2, other.text2, t)!,
      black: Color.lerp(black, other.black, t)!,
      grey: Color.lerp(grey, other.grey, t)!,
      grey2: Color.lerp(grey2, other.grey2, t)!,
      grey3: Color.lerp(grey3, other.grey3, t)!,
      grey4: Color.lerp(grey4, other.grey4, t)!,
      grey5: Color.lerp(grey5, other.grey5, t)!,
      grey6: Color.lerp(grey6, other.grey6, t)!,
      blue: Color.lerp(blue, other.blue, t)!,
      yellow: Color.lerp(yellow, other.yellow, t)!,
      textPrimary: Color.lerp(textPrimary, other.textPrimary, t)!,
      textSecondary: Color.lerp(textSecondary, other.textSecondary, t)!,
      tabBackground: Color.lerp(tabBackground, other.tabBackground, t)!,
      textFieldUnderline: Color.lerp(textFieldUnderline, other.textFieldUnderline, t)!,
      textFieldBackground: Color.lerp(textFieldBackground, other.textFieldBackground, t)!,
      textFieldBackground2: Color.lerp(textFieldBackground2, other.textFieldBackground2, t)!,
      success: Color.lerp(success, other.success, t)!,
      secondaryColor: Color.lerp(secondaryColor, other.secondaryColor, t)!,
    );
  }
}
