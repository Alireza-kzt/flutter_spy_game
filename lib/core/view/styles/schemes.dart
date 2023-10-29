import 'package:flutter/material.dart';

final ThemeData _baseDark = ThemeData.dark();

 ColorScheme darkColorScheme = _baseDark.colorScheme.copyWith(
   brightness: Brightness.dark,
   primary: const Color(0xFFF76619),
   background: const Color(0xFF000000),
);
