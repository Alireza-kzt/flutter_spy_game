import 'package:flutter/material.dart';
import 'package:spy/core/view/styles/schemes.dart';

import '../colors/gray_color.dart';
import '../styles/decorations.dart';

class AppTheme {
  static TextTheme textTheme(ColorScheme colorScheme) {
    return TextTheme(
      // DISPLAY
      displayLarge: TextStyle(
        color: colorScheme.onBackground,
        fontWeight: FontWeight.w700,
        fontSize: 64,
        letterSpacing: 0,
      ),
      displayMedium: TextStyle(
        color: colorScheme.onBackground,
        fontWeight: FontWeight.w600,
        fontSize: 48,
        letterSpacing: 0,
      ),
      displaySmall: TextStyle(
        color: colorScheme.onBackground,
        fontWeight: FontWeight.w400,
        fontSize: 36,
        letterSpacing: 0,
      ),

      // HEADLINE
      headlineLarge: TextStyle(
        color: colorScheme.onBackground,
        fontWeight: FontWeight.w600,
        fontSize: 32,
        letterSpacing: 0,
      ),
      headlineMedium: TextStyle(
        color: colorScheme.onBackground,
        fontWeight: FontWeight.w400,
        fontSize: 28,
        letterSpacing: 0,
      ),
      headlineSmall: TextStyle(
        color: colorScheme.onBackground,
        fontSize: 16,
        fontWeight: FontWeight.w600,
        letterSpacing: -0.64,
      ),

      // TITLE
      titleLarge: TextStyle(
        color: colorScheme.onBackground,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: -0.64,
      ),
      titleMedium: TextStyle(
        color: colorScheme.onBackground,
        fontWeight: FontWeight.w600,
        fontSize: 19,
        letterSpacing: 0,
      ),
      titleSmall: TextStyle(
        color: colorScheme.onBackground,
        fontWeight: FontWeight.w600,

        ///w600
        fontSize: 16,
        letterSpacing: 0,
      ),

      // LABEL
      labelLarge: TextStyle(
        color: colorScheme.onBackground,
        fontWeight: FontWeight.w600,
        fontSize: 15,
        letterSpacing: 0,
      ),
      labelMedium: TextStyle(
        color: colorScheme.onBackground,
        fontWeight: FontWeight.w600,
        fontSize: 13,
        letterSpacing: 0,
      ),
      labelSmall: TextStyle(
        color: colorScheme.onBackground,
        fontWeight: FontWeight.w400,
        fontSize: 12,
        letterSpacing: 0,
      ),

      // BODY
      bodyLarge: TextStyle(
        color: colorScheme.onBackground,
        fontWeight: FontWeight.w400,
        fontSize: 16,
        letterSpacing: 0,
      ),
      bodyMedium: TextStyle(
        color: colorScheme.onBackground,
        fontWeight: FontWeight.w400,

        ///w300,
        fontSize: 14,
        letterSpacing: 0,
      ),
      bodySmall: TextStyle(
        color: colorScheme.onBackground,
        fontWeight: FontWeight.w300,
        fontSize: 13,
        letterSpacing: 0,
      ),
    );
  }

  static TextTheme darkTextTheme = textTheme(darkColorScheme);

  static ThemeData dark = ThemeData(
    // MATERIAL 3
    useMaterial3: true,
    brightness: Brightness.dark,
    extensions: [darkGrayColors],
    scaffoldBackgroundColor: Colors.black,
    splashFactory: InkRipple.splashFactory,
    colorScheme: darkColorScheme,

    //FONT FAMILY
    fontFamily: 'YekanBakh',

    // Text Theme
    textTheme: darkTextTheme,

    //InputTheme
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
        borderRadius: Decorations.borderInputRadius,
        borderSide: BorderSide(color: darkColorScheme.surfaceVariant, width: Decorations.widthStrokeInputRadius),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: Decorations.borderInputRadius,
        borderSide: BorderSide(color: darkColorScheme.surfaceVariant, width: Decorations.widthStrokeInputRadius),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: Decorations.borderInputRadius,
        borderSide: BorderSide(color: darkColorScheme.primary, width: Decorations.widthStrokeInputRadius),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: Decorations.borderInputRadius,
        borderSide: BorderSide(color: darkColorScheme.error, width: Decorations.widthStrokeInputRadius),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: Decorations.borderInputRadius,
        borderSide: BorderSide(color: darkColorScheme.error, width: Decorations.widthStrokeInputRadius),
      ),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: Decorations.buttonShape,
        backgroundColor: darkColorScheme.primary,
        foregroundColor: darkColorScheme.onPrimary,
        textStyle: darkTextTheme.headlineSmall?.copyWith(fontFamily: 'YekanBakh'),
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        // minimumSize: Size.zero,
        // tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        elevation: 0.0,
      ),
    ),
    //
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        backgroundColor: darkColorScheme.primary,
        minimumSize: Size.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        elevation: 0.0,

      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        shape: Decorations.buttonShape,
        side: BorderSide(color: darkColorScheme.primary),
        minimumSize: Size.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        elevation: 0.0,
      ),
    ),

    dialogTheme: DialogTheme(
      alignment: Alignment.center,
      backgroundColor: darkColorScheme.background,
      titleTextStyle: darkTextTheme.titleMedium,
      contentTextStyle: darkTextTheme.labelSmall,
      shape: ContinuousRectangleBorder(
        borderRadius: const BorderRadius.all(Radius.circular(60)),
        side: BorderSide(color: darkColorScheme.surfaceVariant),
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: darkColorScheme.primary,
      foregroundColor: darkColorScheme.onPrimary,
      extendedTextStyle: darkTextTheme.titleSmall,
      extendedIconLabelSpacing: 8,
    ),

    // AppBar Theme
    appBarTheme: AppBarTheme(
      backgroundColor: darkColorScheme.background,
      titleTextStyle: darkTextTheme.titleSmall,
      toolbarHeight: 64,
      titleSpacing: 16,
      elevation: 0,
    ),

    // CheckBox Theme
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateProperty.all(darkColorScheme.primary),
    ),
  );
}
