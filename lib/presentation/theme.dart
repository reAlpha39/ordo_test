import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constant.dart';

ThemeData theme() {
  return ThemeData(
    primaryColor: ColorStyle.cargooo,
    textTheme: GoogleFonts.poppinsTextTheme(),
    scaffoldBackgroundColor: ColorStyle.backgroundColor,
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: ColorStyle.cargooo,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: ColorStyle.cartago_,
        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 12),
        elevation: 0,
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 14),
      hintStyle: TextStyle(
        color: Color(0xFFC4C4C4),
      ),
      focusColor: ColorStyle.greyColor,
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: ColorStyle.greyColor, //thereby
    ),
  );
}
