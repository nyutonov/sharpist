part of 'themes.dart';

class ThemeTextStyles extends ThemeExtension<ThemeTextStyles> {
  final TextStyle richText;
  final TextStyle elevatedButtonText;
  final TextStyle disabledElevatedButtonText;
  final TextStyle appBarTitle;
  final TextStyle introTitle;
  final TextStyle authTitle;
  final TextStyle authDescription;
  final TextStyle textFieldLabel;
  final TextStyle textFieldError;
  final TextStyle textFieldHint;
  final TextStyle textFieldMain;
  final TextStyle dialogTitle;
  final TextStyle tabLabel;
  final TextStyle unselectedTabLabel;
  final TextStyle pinPutText;
  final TextStyle listTileTitle;
  final TextStyle listTileSubtitle;
  final TextStyle branchDetailTitle;
  final TextStyle showCaseTitle;
  final TextStyle showCaseSubtitle;

  const ThemeTextStyles({
    required this.richText,
    required this.elevatedButtonText,
    required this.disabledElevatedButtonText,
    required this.appBarTitle,
    required this.introTitle,
    required this.authTitle,
    required this.authDescription,
    required this.textFieldLabel,
    required this.textFieldError,
    required this.textFieldHint,
    required this.textFieldMain,
    required this.dialogTitle,
    required this.tabLabel,
    required this.unselectedTabLabel,
    required this.pinPutText,
    required this.listTileTitle,
    required this.listTileSubtitle,
    required this.branchDetailTitle,
    required this.showCaseTitle,
    required this.showCaseSubtitle,
  });

  static ThemeTextStyles light = ThemeTextStyles(
    richText: customTextStyle(
      color: AppThemeColors.light.black,
      fontSize: 15,
      fontWeight: FontWeight.w400,
    ),
    elevatedButtonText: customTextStyle(
      color: AppThemeColors.light.background,
      fontSize: 17,
      fontWeight: FontWeight.w600,
    ),
    disabledElevatedButtonText: customTextStyle(
      color: AppThemeColors.light.grey,
      fontSize: 17,
      fontWeight: FontWeight.w600,
    ),
    appBarTitle: customTextStyle(
      color: AppThemeColors.light.onBackground,
      fontSize: 17,
      fontWeight: FontWeight.w600,
    ),
    introTitle: customTextStyle(
      color: AppThemeColors.light.background,
      fontSize: 30,
      fontWeight: FontWeight.w400,
    ),
    authTitle: customTextStyle(
      color: AppThemeColors.light.black,
      fontSize: 28,
      fontWeight: FontWeight.w600,
    ),
    authDescription: customTextStyle(
      color: AppThemeColors.light.grey,
      fontSize: 15,
      fontWeight: FontWeight.w400,
    ),
    textFieldLabel: customTextStyle(
      color: AppThemeColors.light.black,
      fontSize: 13,
      fontWeight: FontWeight.w400,
    ),
    textFieldError: customTextStyle(
      color: colorLightScheme.error,
      fontSize: 13,
      fontWeight: FontWeight.w400,
    ),
    textFieldHint: customTextStyle(
      color: AppThemeColors.light.grey2,
      fontSize: 17,
      fontWeight: FontWeight.w400,
    ),
    textFieldMain: customTextStyle(
      color: AppThemeColors.light.black,
      fontSize: 17,
      fontWeight: FontWeight.w400,
    ),
    dialogTitle: customTextStyle(
      color: AppThemeColors.light.textPrimary,
      fontSize: 20,
      fontWeight: FontWeight.w600,
    ),
    tabLabel: customTextStyle(
      color: AppThemeColors.light.black,
      fontSize: 15,
      fontWeight: FontWeight.w600,
    ),
    unselectedTabLabel: customTextStyle(
      color: AppThemeColors.light.black,
      fontSize: 15,
      fontWeight: FontWeight.w400,
    ),
    pinPutText: customTextStyle(
      color: AppThemeColors.light.black,
      fontSize: 17,
      fontWeight: FontWeight.w600,
    ),
    listTileTitle: customTextStyle(
      color: AppThemeColors.light.text1,
      fontSize: 17,
      fontWeight: FontWeight.w400,
    ),
    listTileSubtitle: customTextStyle(
      color: AppThemeColors.light.grey,
      fontSize: 15,
      fontWeight: FontWeight.w400,
    ),
    branchDetailTitle: customTextStyle(
      color: AppThemeColors.light.onBackground,
      fontSize: 24,
      fontWeight: FontWeight.w600,
    ),
    showCaseTitle: customTextStyle(
      color: AppThemeColors.light.onBackground,
      fontSize: 17,
      fontWeight: FontWeight.w600,
    ),
    showCaseSubtitle: customTextStyle(
      color: AppThemeColors.light.grey,
      fontSize: 15,
      fontWeight: FontWeight.w400,
    ),
  );

  static ThemeTextStyles dark = ThemeTextStyles(
    richText: customTextStyle(
      color: AppThemeColors.dark.black,
      fontSize: 15,
      fontWeight: FontWeight.w400,
    ),
    elevatedButtonText: customTextStyle(
      color: AppThemeColors.dark.background,
      fontSize: 17,
      fontWeight: FontWeight.w600,
    ),
    disabledElevatedButtonText: customTextStyle(
      color: AppThemeColors.dark.grey,
      fontSize: 17,
      fontWeight: FontWeight.w600,
    ),
    appBarTitle: customTextStyle(
      color: AppThemeColors.dark.onBackground,
      fontSize: 17,
      fontWeight: FontWeight.w600,
    ),
    introTitle: customTextStyle(
      color: AppThemeColors.dark.background,
      fontSize: 30,
      fontWeight: FontWeight.w400,
    ),
    authTitle: customTextStyle(
      color: AppThemeColors.dark.black,
      fontSize: 28,
      fontWeight: FontWeight.w600,
    ),
    authDescription: customTextStyle(
      color: AppThemeColors.dark.grey,
      fontSize: 15,
      fontWeight: FontWeight.w400,
    ),
    textFieldLabel: customTextStyle(
      color: AppThemeColors.dark.black,
      fontSize: 13,
      fontWeight: FontWeight.w400,
    ),
    textFieldError: customTextStyle(
      color: colorLightScheme.error,
      fontSize: 13,
      fontWeight: FontWeight.w400,
    ),
    textFieldHint: customTextStyle(
      color: AppThemeColors.dark.grey2,
      fontSize: 17,
      fontWeight: FontWeight.w400,
    ),
    textFieldMain: customTextStyle(
      color: AppThemeColors.dark.black,
      fontSize: 17,
      fontWeight: FontWeight.w400,
    ),
    dialogTitle: customTextStyle(
      color: AppThemeColors.dark.textPrimary,
      fontSize: 20,
      fontWeight: FontWeight.w600,
    ),
    tabLabel: customTextStyle(
      color: AppThemeColors.dark.black,
      fontSize: 15,
      fontWeight: FontWeight.w600,
    ),
    unselectedTabLabel: customTextStyle(
      color: AppThemeColors.dark.black,
      fontSize: 15,
      fontWeight: FontWeight.w400,
    ),
    pinPutText: customTextStyle(
      color: AppThemeColors.dark.black,
      fontSize: 17,
      fontWeight: FontWeight.w600,
    ),
    listTileTitle: customTextStyle(
      color: AppThemeColors.dark.text1,
      fontSize: 17,
      fontWeight: FontWeight.w400,
    ),
    listTileSubtitle: customTextStyle(
      color: AppThemeColors.dark.grey,
      fontSize: 15,
      fontWeight: FontWeight.w400,
    ),
    branchDetailTitle: customTextStyle(
      color: AppThemeColors.dark.onBackground,
      fontSize: 24,
      fontWeight: FontWeight.w600,
    ),
    showCaseTitle: customTextStyle(
      color: AppThemeColors.dark.onBackground,
      fontSize: 17,
      fontWeight: FontWeight.w600,
    ),
    showCaseSubtitle: customTextStyle(
      color: AppThemeColors.dark.grey,
      fontSize: 15,
      fontWeight: FontWeight.w400,
    ),
  );

  @override
  ThemeExtension<ThemeTextStyles> copyWith({
    TextStyle? richText,
    TextStyle? elevatedButtonText,
    TextStyle? disabledElevatedButtonText,
    TextStyle? appBarTitle,
    TextStyle? introTitle,
    TextStyle? authTitle,
    TextStyle? authDescription,
    TextStyle? textFieldLabel,
    TextStyle? textFieldError,
    TextStyle? textFieldHint,
    TextStyle? textFieldMain,
    TextStyle? dialogTitle,
    TextStyle? tabLabel,
    TextStyle? unselectedTabLabel,
    TextStyle? pinPutText,
    TextStyle? listTileTitle,
    TextStyle? listTileSubtitle,
    TextStyle? branchDetailTitle,
    TextStyle? showCaseTitle,
    TextStyle? showCaseSubtitle,
  }) =>
      ThemeTextStyles(
        richText: richText ?? this.richText,
        elevatedButtonText: elevatedButtonText ?? this.elevatedButtonText,
        disabledElevatedButtonText: disabledElevatedButtonText ?? this.disabledElevatedButtonText,
        appBarTitle: appBarTitle ?? this.appBarTitle,
        introTitle: introTitle ?? this.introTitle,
        authTitle: authTitle ?? this.authTitle,
        authDescription: authDescription ?? this.authDescription,
        textFieldLabel: textFieldLabel ?? this.textFieldLabel,
        textFieldError: textFieldError ?? this.textFieldError,
        textFieldHint: textFieldHint ?? this.textFieldHint,
        textFieldMain: textFieldMain ?? this.textFieldMain,
        dialogTitle: dialogTitle ?? this.dialogTitle,
        tabLabel: tabLabel ?? this.tabLabel,
        unselectedTabLabel: unselectedTabLabel ?? this.unselectedTabLabel,
        pinPutText: pinPutText ?? this.pinPutText,
        listTileTitle: listTileTitle ?? this.listTileTitle,
        listTileSubtitle: listTileSubtitle ?? this.listTileSubtitle,
        branchDetailTitle: branchDetailTitle ?? this.branchDetailTitle,
        showCaseTitle: showCaseTitle ?? this.showCaseTitle,
        showCaseSubtitle: showCaseSubtitle ?? this.showCaseSubtitle,
      );

  @override
  ThemeExtension<ThemeTextStyles> lerp(ThemeExtension<ThemeTextStyles>? other, double t) {
    if (other is! ThemeTextStyles) {
      return this;
    }

    return ThemeTextStyles(
      richText: TextStyle.lerp(richText, other.richText, t)!,
      elevatedButtonText: TextStyle.lerp(elevatedButtonText, other.elevatedButtonText, t)!,
      disabledElevatedButtonText: TextStyle.lerp(disabledElevatedButtonText, other.disabledElevatedButtonText, t)!,
      appBarTitle: TextStyle.lerp(appBarTitle, other.appBarTitle, t)!,
      introTitle: TextStyle.lerp(introTitle, other.introTitle, t)!,
      authTitle: TextStyle.lerp(authTitle, other.authTitle, t)!,
      authDescription: TextStyle.lerp(authDescription, other.authDescription, t)!,
      textFieldLabel: TextStyle.lerp(textFieldLabel, other.textFieldLabel, t)!,
      textFieldError: TextStyle.lerp(textFieldError, other.textFieldError, t)!,
      textFieldHint: TextStyle.lerp(textFieldHint, other.textFieldHint, t)!,
      textFieldMain: TextStyle.lerp(textFieldMain, other.textFieldMain, t)!,
      dialogTitle: TextStyle.lerp(dialogTitle, other.dialogTitle, t)!,
      tabLabel: TextStyle.lerp(tabLabel, other.tabLabel, t)!,
      unselectedTabLabel: TextStyle.lerp(unselectedTabLabel, other.unselectedTabLabel, t)!,
      pinPutText: TextStyle.lerp(pinPutText, other.pinPutText, t)!,
      listTileTitle: TextStyle.lerp(listTileTitle, other.listTileTitle, t)!,
      listTileSubtitle: TextStyle.lerp(listTileSubtitle, other.listTileSubtitle, t)!,
      branchDetailTitle: TextStyle.lerp(branchDetailTitle, other.branchDetailTitle, t)!,
      showCaseTitle: TextStyle.lerp(showCaseTitle, other.showCaseTitle, t)!,
      showCaseSubtitle: TextStyle.lerp(showCaseSubtitle, other.showCaseSubtitle, t)!,
    );
  }
}

TextStyle customTextStyle({
  required FontWeight fontWeight,
  required double fontSize,
  required Color color,
}) {
  return GoogleFonts.outfit(
    color: color,
    fontSize: fontSize,
    fontWeight: fontWeight,
  );
}