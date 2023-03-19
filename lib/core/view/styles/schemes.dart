import 'package:flutter/material.dart';


final ThemeData _baseLight = ThemeData.light();

final ThemeData _baseDark = ThemeData.dark();

// var  colorScheme = ()=> Get.theme.colorScheme;


 ColorScheme lightColorScheme = _baseLight.colorScheme.copyWith(
  brightness: Brightness.light,
  primary: const Color(0xFF8925D1),
  onPrimary: const Color(0xFFFFFFFF),
  primaryContainer: const Color(0xFFF2DAFF),
  onPrimaryContainer: const Color(0xFF6307A5),
  secondary: const Color(0xFFF1C100),
  onSecondary: const Color(0xFF151102),
  secondaryContainer: const Color(0xFFFFE9AE),
  onSecondaryContainer: const Color(0xFF584400),
  error: const Color(0xFFBA1A1A),
  errorContainer: const Color(0xFFFFDAD6),
  onError: const Color(0xFFFFFFFF),
  onErrorContainer: const Color(0xFF410002),
  background: const Color(0xFFFFFFFF),
  onBackground: const Color(0xFF1D1B1E),
  surface: const Color(0xFFF8F8F8),
  onSurface: const Color(0xFF1D1B1E),
  surfaceVariant: const Color(0xFFECECEC),
  onSurfaceVariant: const Color(0xFF4B454D),
  outline: const Color(0xFFCBCBCB),

);

 ColorScheme darkColorScheme = _baseDark.colorScheme.copyWith(

   brightness: Brightness.dark,
   primary: const Color(0xFFF1C100),
   onPrimary: const Color(0xFF151102),
   primaryContainer: const Color(0xFFFFE9AE),
   onPrimaryContainer: const Color(0xFF584400),
   secondary: const Color(0xFF8925D1),
   onSecondary: const Color(0xFFFFFFFF),
   secondaryContainer: const Color(0xFFF2DAFF),
   onSecondaryContainer: const Color(0xFF6307A5),
   error: const Color(0xFFD0695D),
   errorContainer: const Color(0xFF93000A),
   onError: const Color(0xFF690005),
   onErrorContainer: const Color(0xFFFFDAD6),
   background: const Color(0xFF1D1B1E),
   onBackground: const Color(0xFFE7E1E5),
   surface: const Color(0xFF1D1B1E),
   onSurface: const Color(0xFFF6F6F6),
   surfaceVariant: const Color(0xFF4B454D),
   onSurfaceVariant: const Color(0xFFCDC3CE),
   outline: const Color(0xFF968E98),

);
