import 'package:flutter/material.dart';
import 'package:get/get.dart';

const grayColor =  Color.fromRGBO(236, 236, 236, 0.09);

GrayColors lightGrayColors =  GrayColors(
  grayOp2:  const Color(0xff000000).withOpacity(0.02),
  grayOp9:  const Color(0xff000000).withOpacity(0.09),
  grayOp32: const Color(0xff000000).withOpacity(0.32),
  grayOp48: const Color(0xff000000).withOpacity(0.48),
  grayOp64: const Color(0xff000000).withOpacity(0.64),
);

GrayColors darkGrayColors =  GrayColors(
  grayOp2:  const Color(0xffECECEC).withOpacity(0.02),
  grayOp9:  const Color(0xffECECEC).withOpacity(0.09),
  grayOp32: const Color(0xffECECEC).withOpacity(0.32),
  grayOp48: const Color(0xffECECEC).withOpacity(0.48),
  grayOp64: const Color(0xffECECEC).withOpacity(0.64),
);

@immutable
class GrayColors extends ThemeExtension<GrayColors> {
  const GrayColors({
    required this.grayOp2,
    required this.grayOp9,
    required this.grayOp32,
    required this.grayOp48,
    required this.grayOp64,
  });

  final Color? grayOp2;
  final Color? grayOp9;
  final Color? grayOp32;
  final Color? grayOp48;
  final Color? grayOp64;

  @override
  GrayColors copyWith({
    Color? grayOp2,
    Color? grayOp9,
    Color? grayOp32,
    Color? grayOp48,
    Color? grayOp64,
  }) {
    return GrayColors(
      grayOp2: grayOp2 ?? this.grayOp2,
      grayOp9: grayOp9 ?? this.grayOp9,
      grayOp32: grayOp32 ?? this.grayOp32,
      grayOp48: grayOp48 ?? this.grayOp48,
      grayOp64: grayOp64 ?? this.grayOp64,
    );
  }

  static GrayColors of(BuildContext context) => context.theme.extension<GrayColors>()!;

  @override
  GrayColors lerp(ThemeExtension<GrayColors>? other, double t) {
    if (other is! GrayColors) {
      return this;
    }
    return GrayColors(
      grayOp2: Color.lerp(grayOp2, other.grayOp2, t),
      grayOp9: Color.lerp(grayOp9, other.grayOp9, t),
      grayOp32: Color.lerp(grayOp32, other.grayOp32, t),
      grayOp48: Color.lerp(grayOp48, other.grayOp48, t),
      grayOp64: Color.lerp(grayOp64, other.grayOp64, t),
    );
  }

  GrayColors harmonized(ColorScheme dynamic) {
    return copyWith(
    );
  }
}