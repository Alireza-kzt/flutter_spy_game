import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spy/core/view/colors/gray_color.dart';
import 'decorations.dart';

enum ButtonSize { small, medium, large }

enum ButtonType { normal, gray, tonal, coloredBackAndBorder }

class ButtonStyleFrom {
  final BuildContext context;

  ButtonStyleFrom.of(this.context);

  ThemeData get theme => context.theme;

  GrayColors get grayColors => context.theme.extension<GrayColors>()!;

  EdgeInsetsGeometry buttonPadding(ButtonSize buttonSize) {
    switch (buttonSize) {
      case ButtonSize.small:
        return const EdgeInsets.symmetric(vertical: 4, horizontal: 12);
      case ButtonSize.medium:
        return const EdgeInsets.symmetric(vertical: 8, horizontal: 24);
      case ButtonSize.large:
        return const EdgeInsets.symmetric(vertical: 10.5, horizontal: 28);
    }
  }

  TextStyle? buttonTextStyle(ButtonSize buttonSize) {
    switch (buttonSize) {
      case ButtonSize.small:
        return theme.textTheme.labelMedium;
      case ButtonSize.medium:
        return theme.textTheme.labelLarge;
      case ButtonSize.large:
        return theme.textTheme.titleMedium;
    }
  }

  Color? buttonForegroundColor(Set<MaterialState> states) {
    if (states.contains(MaterialState.disabled)) {
      return null;
    } else {
      return theme.colorScheme.primary;
    }
  }

  BorderSide? buttonBorder(Set<MaterialState> states) {
    if (states.contains(MaterialState.disabled)) {
      return BorderSide(color: context.theme.colorScheme.surfaceVariant);
    } else {
      return BorderSide(color: context.theme.colorScheme.primary);
    }
  }

  double get buttonElevation => 0.0;

  // ElevatedButton STYLE
  ButtonStyle? get largeElevatedButtonStyle => theme.elevatedButtonTheme.style?.copyWith(
        padding: MaterialStateProperty.all(buttonPadding(ButtonSize.large)),
        textStyle: MaterialStateProperty.all(buttonTextStyle(ButtonSize.large)),
      );

  ButtonStyle? get mediumElevatedButtonStyle => theme.elevatedButtonTheme.style?.copyWith(
        padding: MaterialStateProperty.all(buttonPadding(ButtonSize.medium)),
        textStyle: MaterialStateProperty.all(buttonTextStyle(ButtonSize.medium)),
      );

  ButtonStyle? get smallElevatedButtonStyle => theme.elevatedButtonTheme.style?.copyWith(
        padding: MaterialStateProperty.all(buttonPadding(ButtonSize.small)),
        textStyle: MaterialStateProperty.all(theme.textTheme.labelMedium),
      );

  // OutlinedButton STYLE
  ButtonStyle? get largeOutlinedButtonStyle => theme.outlinedButtonTheme.style?.copyWith(
      backgroundColor: MaterialStateProperty.all(Colors.transparent),
      padding: MaterialStateProperty.all(buttonPadding(ButtonSize.large)),
      textStyle: MaterialStateProperty.all(buttonTextStyle(ButtonSize.large)),
      side: MaterialStateProperty.resolveWith(buttonBorder));

  ButtonStyle? get mediumOutlinedButtonStyle => theme.outlinedButtonTheme.style?.copyWith(
      backgroundColor: MaterialStateProperty.all(Colors.transparent),
      padding: MaterialStateProperty.all(buttonPadding(ButtonSize.medium)),
      textStyle: MaterialStateProperty.all(buttonTextStyle(ButtonSize.medium)),
      side: MaterialStateProperty.resolveWith(buttonBorder));

  ButtonStyle? get smallOutlinedButtonStyle => theme.outlinedButtonTheme.style?.copyWith(
      backgroundColor: MaterialStateProperty.all(Colors.transparent),
      padding: MaterialStateProperty.all(buttonPadding(ButtonSize.small)),
      textStyle: MaterialStateProperty.all(theme.textTheme.labelMedium),
      side: MaterialStateProperty.resolveWith(buttonBorder));

  // TextButton STYLE
  ButtonStyle? get largeTextButtonStyle => theme.textButtonTheme.style?.copyWith(
        padding: MaterialStateProperty.all(buttonPadding(ButtonSize.large)),
        textStyle: MaterialStateProperty.all(buttonTextStyle(ButtonSize.large)),
      );

  ButtonStyle? get mediumTextButtonStyle => theme.textButtonTheme.style?.copyWith(
        padding: MaterialStateProperty.all(buttonPadding(ButtonSize.medium)),
        textStyle: MaterialStateProperty.all(buttonTextStyle(ButtonSize.medium)),
      );

  ButtonStyle? get smallTextButtonStyle => theme.textButtonTheme.style?.copyWith(
        padding: MaterialStateProperty.all(buttonPadding(ButtonSize.small)),
        textStyle: MaterialStateProperty.all(buttonTextStyle(ButtonSize.small)),
      );

  // GrayButton STYLE
  ButtonStyle? get largeGrayElevated => ElevatedButton.styleFrom(
        shape: Decorations.buttonShape,
        padding: buttonPadding(ButtonSize.large),
        textStyle: buttonTextStyle(ButtonSize.large),
        backgroundColor: grayColors.grayOp2,
        foregroundColor: theme.colorScheme.onBackground,
        minimumSize: Size.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shadowColor: Colors.transparent,
        elevation: buttonElevation,
      );

  ButtonStyle? get mediumGrayElevated => ElevatedButton.styleFrom(
        shape: Decorations.buttonShape,
        padding: buttonPadding(ButtonSize.medium),
        textStyle: buttonTextStyle(ButtonSize.medium),
        backgroundColor: grayColors.grayOp2,
        foregroundColor: theme.colorScheme.onBackground,
        minimumSize: Size.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shadowColor: Colors.transparent,
        elevation: buttonElevation,
      );

  ButtonStyle? get smallGrayElevated => ElevatedButton.styleFrom(
        shape: Decorations.buttonShape,
        padding: buttonPadding(ButtonSize.small),
        textStyle: theme.textTheme.labelMedium,
        backgroundColor: grayColors.grayOp2,
        foregroundColor: theme.colorScheme.onBackground,
        minimumSize: Size.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shadowColor: Colors.transparent,
        elevation: buttonElevation,
      );

  ButtonStyle? get largeGrayOutlined => OutlinedButton.styleFrom(
        shape: Decorations.buttonShape,
        padding: buttonPadding(ButtonSize.large),
        textStyle: buttonTextStyle(ButtonSize.large),
        side: BorderSide(color: grayColors.grayOp9!),
        foregroundColor: theme.colorScheme.onBackground,
        minimumSize: Size.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        elevation: buttonElevation,
        backgroundColor: Colors.transparent,
      );

  ButtonStyle? get mediumGrayOutlined => OutlinedButton.styleFrom(
        shape: Decorations.buttonShape,
        padding: buttonPadding(ButtonSize.medium),
        textStyle: buttonTextStyle(ButtonSize.medium),
        side: BorderSide(color: grayColors.grayOp9!),
        foregroundColor: theme.colorScheme.onBackground,
        minimumSize: Size.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        elevation: buttonElevation,
        backgroundColor: Colors.transparent,
      );

  ButtonStyle? get smallGrayOutlined => OutlinedButton.styleFrom(
        shape: Decorations.buttonShape,
        padding: buttonPadding(ButtonSize.small),
        textStyle: theme.textTheme.labelMedium,
        side: BorderSide(color: grayColors.grayOp9!),
        foregroundColor: theme.colorScheme.onBackground,
        minimumSize: Size.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        elevation: buttonElevation,
        backgroundColor: Colors.transparent,
      );

  ButtonStyle? get largeGrayText => TextButton.styleFrom(
        shape: Decorations.buttonShape,
        padding: buttonPadding(ButtonSize.large),
        textStyle: buttonTextStyle(ButtonSize.large),
        foregroundColor: theme.colorScheme.onBackground,
        minimumSize: Size.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        elevation: buttonElevation,
      );

  ButtonStyle? get mediumGrayText => TextButton.styleFrom(
        shape: Decorations.buttonShape,
        padding: buttonPadding(ButtonSize.medium),
        textStyle: buttonTextStyle(ButtonSize.medium),
        foregroundColor: theme.colorScheme.onBackground,
        minimumSize: Size.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        elevation: buttonElevation,
      );

  ButtonStyle? get smallGrayText => TextButton.styleFrom(
        shape: Decorations.buttonShape,
        padding: buttonPadding(ButtonSize.small),
        textStyle: theme.textTheme.labelMedium,
        foregroundColor: theme.colorScheme.onBackground,
        minimumSize: Size.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        elevation: buttonElevation,
      );

  // TonalSurfaceButton STYLE
  ButtonStyle? get largeTonalElevated => theme.elevatedButtonTheme.style?.copyWith(
        padding: MaterialStateProperty.all(const EdgeInsets.fromLTRB(28, 10, 28, 7)),
        textStyle: MaterialStateProperty.all(buttonTextStyle(ButtonSize.large)),
        shadowColor: MaterialStateProperty.all(Colors.transparent),
        overlayColor: MaterialStateProperty.all(grayColors.grayOp32),
        backgroundColor: MaterialStateProperty.all(grayColors.grayOp9),
        foregroundColor: MaterialStateProperty.resolveWith(buttonForegroundColor),
      );

  ButtonStyle? get mediumTonalElevated => theme.elevatedButtonTheme.style?.copyWith(
        padding: MaterialStateProperty.all(buttonPadding(ButtonSize.medium)),
        textStyle: MaterialStateProperty.all(buttonTextStyle(ButtonSize.medium)),
        shadowColor: MaterialStateProperty.all(Colors.transparent),
        overlayColor: MaterialStateProperty.all(grayColors.grayOp32),
        backgroundColor: MaterialStateProperty.all(grayColors.grayOp9),
        foregroundColor: MaterialStateProperty.resolveWith(buttonForegroundColor),
      );

  ButtonStyle? get smallTonalElevated => theme.elevatedButtonTheme.style?.copyWith(
        padding: MaterialStateProperty.all(buttonPadding(ButtonSize.small)),
        textStyle: MaterialStateProperty.all(theme.textTheme.labelMedium),
        shadowColor: MaterialStateProperty.all(Colors.transparent),
        overlayColor: MaterialStateProperty.all(grayColors.grayOp32),
        backgroundColor: MaterialStateProperty.all(grayColors.grayOp9),
        foregroundColor: MaterialStateProperty.resolveWith(buttonForegroundColor),
      );

  ButtonStyle? get largeTonalOutlined => theme.outlinedButtonTheme.style?.copyWith(
        padding: MaterialStateProperty.all(buttonPadding(ButtonSize.large)),
        textStyle: MaterialStateProperty.all(buttonTextStyle(ButtonSize.large)),
        side: MaterialStateProperty.all(BorderSide(color: grayColors.grayOp9!)),
        overlayColor: MaterialStateProperty.all(grayColors.grayOp9),
        backgroundColor: MaterialStateProperty.all(Colors.transparent),
      );

  ButtonStyle? get mediumTonalOutlined => theme.outlinedButtonTheme.style?.copyWith(
        padding: MaterialStateProperty.all(buttonPadding(ButtonSize.medium)),
        textStyle: MaterialStateProperty.all(buttonTextStyle(ButtonSize.medium)),
        side: MaterialStateProperty.all(BorderSide(color: grayColors.grayOp9!)),
        overlayColor: MaterialStateProperty.all(grayColors.grayOp9),
        backgroundColor: MaterialStateProperty.all(Colors.transparent),
        foregroundColor: MaterialStateProperty.all(theme.colorScheme.primary),
      );

  ButtonStyle? get smallTonalOutlined => theme.outlinedButtonTheme.style?.copyWith(
        padding: MaterialStateProperty.all(buttonPadding(ButtonSize.small)),
        textStyle: MaterialStateProperty.all(theme.textTheme.labelMedium),
        side: MaterialStateProperty.all(BorderSide(color: grayColors.grayOp9!)),
        overlayColor: MaterialStateProperty.all(grayColors.grayOp9),
        backgroundColor: MaterialStateProperty.all(Colors.transparent),
      );
}
