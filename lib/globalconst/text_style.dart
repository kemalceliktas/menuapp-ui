import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color_palet.dart';

class textStyle {
  static final TextStyle titleBig = GoogleFonts.lora(
    textStyle: TextStyle(
      color: colorPalet.textColor,
      fontWeight: FontWeight.w200,
      fontSize: 60,
    ),
  );

  static final TextStyle titleSmall = GoogleFonts.lora(
    textStyle: TextStyle(
      color: colorPalet.textColor,
      fontWeight: FontWeight.w300,
      fontSize: 40,
    ),
  );

  static final TextStyle price = GoogleFonts.lora(
    textStyle: TextStyle(
      color: colorPalet.textColor,
      fontWeight: FontWeight.w500,
      fontSize: 22,
    ),
  );

  static final TextStyle subTitle = GoogleFonts.lora(
    textStyle: TextStyle(
      color: colorPalet.subtitleColor,
      fontWeight: FontWeight.w700,
      fontSize: 16,
    ),
  );

  static final TextStyle normalText = GoogleFonts.bitter(
    textStyle: TextStyle(
      color: colorPalet.textColor,
      fontWeight: FontWeight.w500,
      fontSize: 18,
    ),
  );
}
