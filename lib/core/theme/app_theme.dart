import 'package:ai_video_genarator/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  //border
  static OutlineInputBorder _border([
    Color borderColor = AppPallete.transparentColor,
  ]) => OutlineInputBorder(
    borderRadius: BorderRadius.circular(24),
    borderSide: BorderSide(color: borderColor),
  );

  //App Theme
  static final ThemeData appDarkTheme = ThemeData.dark().copyWith(
    //Scaffold Background Color
    scaffoldBackgroundColor: AppPallete.transparentColor,
    //App Bar Theme
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      shadowColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
    ),

    //Text Field Theme
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.symmetric(horizontal: 16),
      enabledBorder: _border(),
      focusedBorder: _border(AppPallete.gradient1),
    ),

    //Text
    textTheme: TextTheme(
      bodySmall: GoogleFonts.roboto(
        color: AppPallete.greyColor,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
      bodyMedium: GoogleFonts.roboto(
        color: AppPallete.greyColor,
        fontSize: 18,
        fontWeight: FontWeight.w400,
      ),
      titleMedium: GoogleFonts.roboto(
        color: AppPallete.whiteColor,
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}
