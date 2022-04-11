import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant/constant.dart';

ThemeData theme() {
  return ThemeData(
    primaryColor: ColorStyle.cargooo,
    textTheme: GoogleFonts.poppinsTextTheme(),
    scaffoldBackgroundColor: ColorStyle.backgroundColor,
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: ColorStyle.cargooo,
    ),
    appBarTheme: AppBarTheme(
      elevation: 0,
      toolbarHeight: 80.h,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
      backgroundColor: Colors.transparent,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: ColorStyle.cartago_,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 12),
        elevation: 0,
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      isDense: true,
      contentPadding: EdgeInsets.all(8),
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
