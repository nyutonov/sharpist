part of "themes.dart";

const SystemUiOverlayStyle systemLightUiOverlayStyle = SystemUiOverlayStyle(
  statusBarColor: Colors.transparent,
  systemNavigationBarColor: Colors.white,
  // ios
  statusBarBrightness: Brightness.light,
  // android
  statusBarIconBrightness: Brightness.dark,
  systemNavigationBarIconBrightness: Brightness.dark,
);

const SystemUiOverlayStyle systemDarkUiOverlayStyle = SystemUiOverlayStyle(
  statusBarColor: Colors.transparent,
  systemNavigationBarColor: Colors.black,
  // ios
  statusBarBrightness: Brightness.dark,
  // android
  statusBarIconBrightness: Brightness.light,
  systemNavigationBarIconBrightness: Brightness.light,
);

final ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  platform: TargetPlatform.iOS,
  applyElevationOverlayColor: true,
  extensions: <ThemeExtension<dynamic>>[
    AppThemeColors.light,
    ThemeGradients.light,
    ThemeTextStyles.light,
  ],
  visualDensity: VisualDensity.standard,
  materialTapTargetSize: MaterialTapTargetSize.padded,
  primaryColor: colorLightScheme.primary,
  colorScheme: colorLightScheme,
  dialogBackgroundColor: colorLightScheme.surface,
  scaffoldBackgroundColor: AppThemeColors.light.background,
  cardColor: colorLightScheme.surface,
  canvasColor: colorLightScheme.surface,
  shadowColor: const Color(0xFF343434),
  checkboxTheme: CheckboxThemeData(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(4)),
    ),
    side: BorderSide(color: colorLightScheme.outline),
  ),
  progressIndicatorTheme: ProgressIndicatorThemeData(
    color: AppThemeColors.light.background,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.resolveWith(
        (Set<WidgetState> states) {
          if (states.contains(WidgetState.disabled)) {
            return AppThemeColors.light.grey5;
          }

          return colorLightScheme.primary;
        },
      ),
      foregroundColor: WidgetStateProperty.resolveWith(
        (Set<WidgetState> states) {
          if (states.contains(WidgetState.disabled)) {
            return AppThemeColors.light.grey;
          }

          return AppThemeColors.light.background;
        },
      ),
      textStyle: WidgetStateProperty.resolveWith(
        (Set<WidgetState> states) {
          if (states.contains(WidgetState.disabled)) {
            return ThemeTextStyles.light.disabledElevatedButtonText;
          }

          return ThemeTextStyles.light.elevatedButtonText;
        },
      ),
      padding: const WidgetStatePropertyAll<EdgeInsets>(
        EdgeInsets.symmetric(horizontal: 16),
      ),
      overlayColor: WidgetStatePropertyAll<Color>(Colors.black.withOpacity(0.1)),
      elevation: const WidgetStatePropertyAll<double>(0),
      shape: const WidgetStatePropertyAll<OutlinedBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
      ),
      fixedSize: const WidgetStatePropertyAll<Size>(Size.fromHeight(52)),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    isDense: true,
    prefixStyle: ThemeTextStyles.light.textFieldMain,
    hintStyle: ThemeTextStyles.light.textFieldHint,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: AppThemeColors.light.grey5),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: AppThemeColors.light.grey5),
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: AppThemeColors.light.grey5),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: colorLightScheme.primary),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: colorLightScheme.error),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: colorLightScheme.error),
    ),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    elevation: 0,
    backgroundColor: colorLightScheme.surface,
    type: BottomNavigationBarType.fixed,
    showSelectedLabels: true,
    selectedLabelStyle: const TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.w500,
    ),
    unselectedLabelStyle: const TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.w500,
    ),
    unselectedItemColor: const Color(0xFF667085),
    selectedItemColor: colorLightScheme.primary,
    selectedIconTheme: IconThemeData(
      color: colorLightScheme.primary,
    ),
  ),
  appBarTheme: AppBarTheme(
    toolbarHeight: 56,
    elevation: 0,
    scrolledUnderElevation: 1,
    systemOverlayStyle: systemLightUiOverlayStyle,
    iconTheme: IconThemeData(
      color: AppThemeColors.light.text2,
    ),
    shadowColor: Colors.black45,
    titleTextStyle: ThemeTextStyles.light.appBarTitle,
    toolbarTextStyle: ThemeTextStyles.light.appBarTitle,
    backgroundColor: AppThemeColors.light.background,
    surfaceTintColor: colorLightScheme.surface,
  ),
  actionIconTheme: ActionIconThemeData(
    backButtonIconBuilder: (BuildContext context) => SvgPicture.asset(
      "assets/icons/chevron-left.svg",
    ),
  ),
  tabBarTheme: TabBarTheme(
    tabAlignment: TabAlignment.fill,
    indicatorSize: TabBarIndicatorSize.tab,
    indicatorColor: colorLightScheme.primary,
    dividerColor: Colors.transparent,
    overlayColor: const WidgetStatePropertyAll<Color>(Colors.transparent),
    labelStyle: ThemeTextStyles.light.tabLabel,
    unselectedLabelStyle: ThemeTextStyles.light.unselectedTabLabel,
    indicator: BoxDecoration(
      color: colorLightScheme.surface,
      borderRadius: BorderRadius.circular(10),
    ),
  ),
  listTileTheme: ListTileThemeData(
    tileColor: AppThemeColors.light.background,
    titleTextStyle: ThemeTextStyles.light.listTileTitle,
    subtitleTextStyle: ThemeTextStyles.light.listTileSubtitle,
    minTileHeight: 36,
    contentPadding: EdgeInsets.zero,
  ),
  expansionTileTheme: ExpansionTileThemeData(
    backgroundColor: AppThemeColors.light.background,
    collapsedBackgroundColor: AppThemeColors.light.background,
    tilePadding: const EdgeInsets.symmetric(
      horizontal: 12,
    ),
    childrenPadding: const EdgeInsets.all(16),
    expandedAlignment: Alignment.centerLeft,
    iconColor: AppThemeColors.light.grey,
    collapsedIconColor: AppThemeColors.light.grey3,
    textColor: AppThemeColors.light.black,
    collapsedTextColor: AppThemeColors.light.black,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)),
    ),
    collapsedShape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)),
    ),
  ),
  // textButtonTheme: TextButtonThemeData(
  //   style: ButtonStyle(
  //     foregroundColor: WidgetStateProperty.resolveWith(
  //           (Set<WidgetState> states) => colorLightScheme.onSurface,
  //     ),
  //     backgroundColor: const WidgetStatePropertyAll<Color>(Colors.transparent),
  //     textStyle: WidgetStatePropertyAll<TextStyle>(
  //       ThemeTextStyles.light.elevatedButtonText,
  //     ),
  //     padding: const WidgetStatePropertyAll<EdgeInsets>(
  //       EdgeInsets.zero,
  //     ),
  //     minimumSize: const WidgetStatePropertyAll<Size>(Size.fromHeight(18)),
  //     maximumSize: const WidgetStatePropertyAll<Size>(Size.fromHeight(18)),
  //     elevation: const WidgetStatePropertyAll<double>(0),
  //     shape: const WidgetStatePropertyAll<OutlinedBorder>(
  //       RoundedRectangleBorder(
  //         borderRadius: BorderRadius.zero,
  //       ),
  //     ),
  //     // fixedSize: const WidgetStatePropertyAll<Size>(Size.fromHeight(52)),
  //   ),
  // ),
  dividerColor: AppThemeColors.light.textFieldUnderline,
  dividerTheme: DividerThemeData(
    color: AppThemeColors.light.textFieldUnderline,
    space: 0,
    thickness: 1,
    indent: 16,
    endIndent: 16,
  ),
  // switchTheme: SwitchThemeData(
  //   thumbColor: WidgetStateProperty.resolveWith(
  //     (Set<WidgetState> states) {
  //       if (states.contains(WidgetState.selected)) {
  //         return colorLightScheme.onPrimary;
  //       }
  //       return AppThemeColors.light.secondaryText;
  //     },
  //   ),
  //   trackColor: WidgetStateProperty.resolveWith(
  //     (Set<WidgetState> states) {
  //       if (states.contains(WidgetState.selected)) {
  //         return colorLightScheme.primary;
  //       }
  //       return AppThemeColors.light.background;
  //     },
  //   ),
  //   trackOutlineColor: WidgetStateProperty.resolveWith(
  //     (Set<WidgetState> states) {
  //       if (states.contains(WidgetState.selected)) {
  //         return colorLightScheme.primary;
  //       }
  //       return AppThemeColors.light.background;
  //     },
  //   ),
  // ),
  // cardTheme: CardTheme(
  //   elevation: 0,
  //   margin: EdgeInsets.zero,
  //   shape: const RoundedRectangleBorder(
  //     borderRadius: BorderRadius.all(Radius.circular(12)),
  //   ),
  //   color: AppThemeColors.light.background,
  // ),
  // scrollbarTheme: const ScrollbarThemeData(
  //   // radius: AppUtils.kRadius12,
  //   radius: Radius.circular(12),
  //   interactive: true,
  //   thickness: WidgetStatePropertyAll<double>(4),
  //   thumbVisibility: WidgetStatePropertyAll<bool>(false),
  //   trackVisibility: WidgetStatePropertyAll<bool>(false),
  // ),
  // progressIndicatorTheme: ProgressIndicatorThemeData(
  //   color: colorLightScheme.primary,
  //   linearMinHeight: 3,
  //   linearTrackColor: Colors.white,
  //   circularTrackColor: Colors.white,
  // ),
  // dividerColor: const Color(0xFFEAECF0),
  // dividerTheme: const DividerThemeData(
  //   thickness: 1,
  //   color: Color(0xFFEAECF0),
  // ),
  // dialogTheme: DialogTheme(
  //   backgroundColor: colorLightScheme.surface,
  //   surfaceTintColor: colorLightScheme.surface,
  //   shape: const RoundedRectangleBorder(
  //     borderRadius: BorderRadius.all(Radius.circular(16)),
  //   ),
  // ),
  // bottomAppBarTheme: const BottomAppBarTheme(
  //   elevation: 1,
  //   color: Colors.white,
  //   surfaceTintColor: Colors.white,
  //   shadowColor: Color(0xFFE6E9EF),
  // ),
  // floatingActionButtonTheme: const FloatingActionButtonThemeData(
  //   backgroundColor: Color(0xFF32B141),
  //   foregroundColor: Colors.white,
  //   elevation: 0,
  //   focusElevation: 0,
  //   hoverElevation: 0,
  //   highlightElevation: 0,
  //   shape: CircleBorder(),
  // ),
  // outlinedButtonTheme: OutlinedButtonThemeData(
  //   style: ButtonStyle(
  //     foregroundColor: WidgetStateProperty.resolveWith(
  //       (Set<WidgetState> states) => colorLightScheme.primary,
  //     ),
  //     backgroundColor: WidgetStateProperty.resolveWith(
  //       (Set<WidgetState> states) => colorLightScheme.onPrimary,
  //     ),
  //     side: WidgetStateProperty.resolveWith(
  //       (Set<WidgetState> states) => BorderSide(
  //         color: colorLightScheme.primary,
  //       ),
  //     ),
  //     textStyle: WidgetStatePropertyAll<TextStyle>(
  //       ThemeTextStyles.light.elevatedButtonText,
  //     ),
  //     elevation: const WidgetStatePropertyAll<double>(0),
  //     shape: const WidgetStatePropertyAll<OutlinedBorder>(
  //       RoundedRectangleBorder(
  //         borderRadius: BorderRadius.all(Radius.circular(32)),
  //       ),
  //     ),
  //     fixedSize: const WidgetStatePropertyAll<Size>(Size.fromHeight(52)),
  //     padding: const WidgetStatePropertyAll<EdgeInsets>(
  //       EdgeInsets.symmetric(horizontal: 12),
  //     ),
  //   ),
  // ),
  // bottomSheetTheme: const BottomSheetThemeData(
  //   elevation: 0,
  //   showDragHandle: true,
  //   dragHandleColor: Color(0xFFE7E5F0),
  //   dragHandleSize: Size(48, 4),
  //   backgroundColor: Colors.white,
  //   surfaceTintColor: Colors.white,
  //   shape: RoundedRectangleBorder(
  //     borderRadius: BorderRadius.only(
  //       topLeft: Radius.circular(24),
  //       topRight: Radius.circular(24),
  //     ),
  //   ),
  // ),
  // navigationBarTheme: NavigationBarThemeData(
  //   elevation: 0,
  //   backgroundColor: Colors.white,
  //   height: kToolbarHeight,
  //   iconTheme: WidgetStateProperty.resolveWith<IconThemeData>(
  //     (Set<WidgetState> states) => const IconThemeData(
  //       color: Colors.black,
  //     ),
  //   ),
  //   labelTextStyle: WidgetStateProperty.resolveWith<TextStyle>(
  //     (Set<WidgetState> states) => ThemeTextStyles.light.appBarTitle,
  //   ),
  // ),
);

final ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  platform: TargetPlatform.iOS,
  applyElevationOverlayColor: true,
  extensions: <ThemeExtension<dynamic>>[
    AppThemeColors.dark,
    ThemeGradients.dark,
    ThemeTextStyles.dark,
  ],
  visualDensity: VisualDensity.standard,
  materialTapTargetSize: MaterialTapTargetSize.padded,
  primaryColor: colorDarkScheme.primary,
  colorScheme: colorDarkScheme,
  dialogBackgroundColor: colorDarkScheme.surface,
  scaffoldBackgroundColor: AppThemeColors.dark.background,
  cardColor: colorDarkScheme.surface,
  canvasColor: colorDarkScheme.surface,
  shadowColor: const Color(0xFF343434),
  checkboxTheme: CheckboxThemeData(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(4)),
    ),
    side: BorderSide(color: colorDarkScheme.outline),
  ),
  progressIndicatorTheme: ProgressIndicatorThemeData(
    color: AppThemeColors.dark.background,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.resolveWith(
            (Set<WidgetState> states) {
          if (states.contains(WidgetState.disabled)) {
            return AppThemeColors.dark.grey5;
          }

          return colorDarkScheme.primary;
        },
      ),
      foregroundColor: WidgetStateProperty.resolveWith(
            (Set<WidgetState> states) {
          if (states.contains(WidgetState.disabled)) {
            return AppThemeColors.dark.grey;
          }

          return AppThemeColors.dark.background;
        },
      ),
      textStyle: WidgetStateProperty.resolveWith(
            (Set<WidgetState> states) {
          if (states.contains(WidgetState.disabled)) {
            return ThemeTextStyles.dark.disabledElevatedButtonText;
          }

          return ThemeTextStyles.dark.elevatedButtonText;
        },
      ),
      padding: const WidgetStatePropertyAll<EdgeInsets>(
        EdgeInsets.symmetric(horizontal: 16),
      ),
      overlayColor: WidgetStatePropertyAll<Color>(Colors.black.withOpacity(0.1)),
      elevation: const WidgetStatePropertyAll<double>(0),
      shape: const WidgetStatePropertyAll<OutlinedBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
      ),
      fixedSize: const WidgetStatePropertyAll<Size>(Size.fromHeight(52)),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    isDense: true,
    prefixStyle: ThemeTextStyles.dark.textFieldMain,
    hintStyle: ThemeTextStyles.dark.textFieldHint,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: AppThemeColors.dark.grey5),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: AppThemeColors.dark.grey5),
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: AppThemeColors.dark.grey5),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: colorDarkScheme.primary),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: colorDarkScheme.error),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: colorDarkScheme.error),
    ),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    elevation: 0,
    backgroundColor: colorDarkScheme.surface,
    type: BottomNavigationBarType.fixed,
    showSelectedLabels: true,
    selectedLabelStyle: const TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.w500,
    ),
    unselectedLabelStyle: const TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.w500,
    ),
    unselectedItemColor: const Color(0xFF667085),
    selectedItemColor: colorDarkScheme.primary,
    selectedIconTheme: IconThemeData(
      color: colorDarkScheme.primary,
    ),
  ),
  appBarTheme: AppBarTheme(
    toolbarHeight: 56,
    elevation: 0,
    scrolledUnderElevation: 1,
    systemOverlayStyle: systemDarkUiOverlayStyle,
    iconTheme: IconThemeData(
      color: AppThemeColors.dark.text2,
    ),
    shadowColor: Colors.black45,
    titleTextStyle: ThemeTextStyles.dark.appBarTitle,
    toolbarTextStyle: ThemeTextStyles.dark.appBarTitle,
    backgroundColor: AppThemeColors.dark.background,
    surfaceTintColor: colorDarkScheme.surface,
  ),
  actionIconTheme: ActionIconThemeData(
    backButtonIconBuilder: (BuildContext context) => SvgPicture.asset(
      "assets/icons/chevron-left.svg",
    ),
  ),
  tabBarTheme: TabBarTheme(
    tabAlignment: TabAlignment.fill,
    indicatorSize: TabBarIndicatorSize.tab,
    indicatorColor: colorDarkScheme.primary,
    dividerColor: Colors.transparent,
    overlayColor: const WidgetStatePropertyAll<Color>(Colors.transparent),
    labelStyle: ThemeTextStyles.dark.tabLabel,
    unselectedLabelStyle: ThemeTextStyles.dark.unselectedTabLabel,
    indicator: BoxDecoration(
      color: colorDarkScheme.surface,
      borderRadius: BorderRadius.circular(10),
    ),
  ),
  listTileTheme: ListTileThemeData(
    tileColor: AppThemeColors.dark.background,
    titleTextStyle: ThemeTextStyles.dark.listTileTitle,
    subtitleTextStyle: ThemeTextStyles.dark.listTileSubtitle,
    minTileHeight: 36,
    contentPadding: EdgeInsets.zero,
  ),
  expansionTileTheme: ExpansionTileThemeData(
    backgroundColor: AppThemeColors.dark.background,
    collapsedBackgroundColor: AppThemeColors.dark.background,
    tilePadding: const EdgeInsets.symmetric(
      horizontal: 12,
    ),
    childrenPadding: const EdgeInsets.all(16),
    expandedAlignment: Alignment.centerLeft,
    iconColor: AppThemeColors.dark.grey,
    collapsedIconColor: AppThemeColors.dark.grey3,
    textColor: AppThemeColors.dark.black,
    collapsedTextColor: AppThemeColors.dark.black,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)),
    ),
    collapsedShape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)),
    ),
  ),
  // textButtonTheme: TextButtonThemeData(
  //   style: ButtonStyle(
  //     foregroundColor: WidgetStateProperty.resolveWith(
  //           (Set<WidgetState> states) => colorDarkScheme.onSurface,
  //     ),
  //     backgroundColor: const WidgetStatePropertyAll<Color>(Colors.transparent),
  //     textStyle: WidgetStatePropertyAll<TextStyle>(
  //       ThemeTextStyles.dark.elevatedButtonText,
  //     ),
  //     padding: const WidgetStatePropertyAll<EdgeInsets>(
  //       EdgeInsets.zero,
  //     ),
  //     minimumSize: const WidgetStatePropertyAll<Size>(Size.fromHeight(18)),
  //     maximumSize: const WidgetStatePropertyAll<Size>(Size.fromHeight(18)),
  //     elevation: const WidgetStatePropertyAll<double>(0),
  //     shape: const WidgetStatePropertyAll<OutlinedBorder>(
  //       RoundedRectangleBorder(
  //         borderRadius: BorderRadius.zero,
  //       ),
  //     ),
  //     // fixedSize: const WidgetStatePropertyAll<Size>(Size.fromHeight(52)),
  //   ),
  // ),
  dividerColor: AppThemeColors.dark.textFieldUnderline,
  dividerTheme: DividerThemeData(
    color: AppThemeColors.dark.textFieldUnderline,
    space: 0,
    thickness: 1,
    indent: 16,
    endIndent: 16,
  ),
  // switchTheme: SwitchThemeData(
  //   thumbColor: WidgetStateProperty.resolveWith(
  //     (Set<WidgetState> states) {
  //       if (states.contains(WidgetState.selected)) {
  //         return colorDarkScheme.onPrimary;
  //       }
  //       return AppThemeColors.dark.secondaryText;
  //     },
  //   ),
  //   trackColor: WidgetStateProperty.resolveWith(
  //     (Set<WidgetState> states) {
  //       if (states.contains(WidgetState.selected)) {
  //         return colorDarkScheme.primary;
  //       }
  //       return AppThemeColors.dark.background;
  //     },
  //   ),
  //   trackOutlineColor: WidgetStateProperty.resolveWith(
  //     (Set<WidgetState> states) {
  //       if (states.contains(WidgetState.selected)) {
  //         return colorDarkScheme.primary;
  //       }
  //       return AppThemeColors.dark.background;
  //     },
  //   ),
  // ),
  // cardTheme: CardTheme(
  //   elevation: 0,
  //   margin: EdgeInsets.zero,
  //   shape: const RoundedRectangleBorder(
  //     borderRadius: BorderRadius.all(Radius.circular(12)),
  //   ),
  //   color: AppThemeColors.dark.background,
  // ),
  // scrollbarTheme: const ScrollbarThemeData(
  //   // radius: AppUtils.kRadius12,
  //   radius: Radius.circular(12),
  //   interactive: true,
  //   thickness: WidgetStatePropertyAll<double>(4),
  //   thumbVisibility: WidgetStatePropertyAll<bool>(false),
  //   trackVisibility: WidgetStatePropertyAll<bool>(false),
  // ),
  // progressIndicatorTheme: ProgressIndicatorThemeData(
  //   color: colorDarkScheme.primary,
  //   linearMinHeight: 3,
  //   linearTrackColor: Colors.white,
  //   circularTrackColor: Colors.white,
  // ),
  // dividerColor: const Color(0xFFEAECF0),
  // dividerTheme: const DividerThemeData(
  //   thickness: 1,
  //   color: Color(0xFFEAECF0),
  // ),
  // dialogTheme: DialogTheme(
  //   backgroundColor: colorDarkScheme.surface,
  //   surfaceTintColor: colorDarkScheme.surface,
  //   shape: const RoundedRectangleBorder(
  //     borderRadius: BorderRadius.all(Radius.circular(16)),
  //   ),
  // ),
  // bottomAppBarTheme: const BottomAppBarTheme(
  //   elevation: 1,
  //   color: Colors.white,
  //   surfaceTintColor: Colors.white,
  //   shadowColor: Color(0xFFE6E9EF),
  // ),
  // floatingActionButtonTheme: const FloatingActionButtonThemeData(
  //   backgroundColor: Color(0xFF32B141),
  //   foregroundColor: Colors.white,
  //   elevation: 0,
  //   focusElevation: 0,
  //   hoverElevation: 0,
  //   highlightElevation: 0,
  //   shape: CircleBorder(),
  // ),
  // outlinedButtonTheme: OutlinedButtonThemeData(
  //   style: ButtonStyle(
  //     foregroundColor: WidgetStateProperty.resolveWith(
  //       (Set<WidgetState> states) => colorDarkScheme.primary,
  //     ),
  //     backgroundColor: WidgetStateProperty.resolveWith(
  //       (Set<WidgetState> states) => colorDarkScheme.onPrimary,
  //     ),
  //     side: WidgetStateProperty.resolveWith(
  //       (Set<WidgetState> states) => BorderSide(
  //         color: colorDarkScheme.primary,
  //       ),
  //     ),
  //     textStyle: WidgetStatePropertyAll<TextStyle>(
  //       ThemeTextStyles.dark.elevatedButtonText,
  //     ),
  //     elevation: const WidgetStatePropertyAll<double>(0),
  //     shape: const WidgetStatePropertyAll<OutlinedBorder>(
  //       RoundedRectangleBorder(
  //         borderRadius: BorderRadius.all(Radius.circular(32)),
  //       ),
  //     ),
  //     fixedSize: const WidgetStatePropertyAll<Size>(Size.fromHeight(52)),
  //     padding: const WidgetStatePropertyAll<EdgeInsets>(
  //       EdgeInsets.symmetric(horizontal: 12),
  //     ),
  //   ),
  // ),
  // bottomSheetTheme: const BottomSheetThemeData(
  //   elevation: 0,
  //   showDragHandle: true,
  //   dragHandleColor: Color(0xFFE7E5F0),
  //   dragHandleSize: Size(48, 4),
  //   backgroundColor: Colors.white,
  //   surfaceTintColor: Colors.white,
  //   shape: RoundedRectangleBorder(
  //     borderRadius: BorderRadius.only(
  //       topLeft: Radius.circular(24),
  //       topRight: Radius.circular(24),
  //     ),
  //   ),
  // ),
  // navigationBarTheme: NavigationBarThemeData(
  //   elevation: 0,
  //   backgroundColor: Colors.white,
  //   height: kToolbarHeight,
  //   iconTheme: WidgetStateProperty.resolveWith<IconThemeData>(
  //     (Set<WidgetState> states) => const IconThemeData(
  //       color: Colors.black,
  //     ),
  //   ),
  //   labelTextStyle: WidgetStateProperty.resolveWith<TextStyle>(
  //     (Set<WidgetState> states) => ThemeTextStyles.dark.appBarTitle,
  //   ),
  // ),
);
