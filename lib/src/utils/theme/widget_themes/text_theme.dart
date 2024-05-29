import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginapp/src/constants/colors.dart';

class TTextTheme{
  TTextTheme._();

  static TextTheme lightTextTheme = TextTheme(

    headlineLarge: GoogleFonts.montserrat(fontSize:28.0, fontWeight:FontWeight.bold,color:dDarkColor),
      headlineMedium: GoogleFonts.montserrat(fontSize:24.0, fontWeight:FontWeight.w700,color:dDarkColor),
      headlineSmall: GoogleFonts.poppins(fontSize:24.0, fontWeight:FontWeight.w700,color:dDarkColor),
      bodySmall: GoogleFonts.poppins(fontSize:14.0, fontWeight:FontWeight.normal,color:dDarkColor),
      bodyLarge: GoogleFonts.poppins(fontSize:14.0, fontWeight:FontWeight.bold,color:dDarkColor),
     // headlineLarge: GoogleFonts.montserrat(fontSize:28.0, fontWeight:FontWeight.bold,color:dDarkColor),

          titleMedium: GoogleFonts.montserrat(
            color:Colors.black87,
          ),
          titleSmall: GoogleFonts.poppins(
            color:Colors.black54,
          )
  );
  static TextTheme darkTextTheme = TextTheme(

      headlineLarge: GoogleFonts.montserrat(fontSize:28.0, fontWeight:FontWeight.bold,color:dWhiteColor),
      headlineMedium: GoogleFonts.montserrat(fontSize:24.0, fontWeight:FontWeight.w700,color:dWhiteColor),
      headlineSmall: GoogleFonts.poppins(fontSize:24.0, fontWeight:FontWeight.w700,color:dWhiteColor),
      bodySmall: GoogleFonts.poppins(fontSize:14.0, fontWeight:FontWeight.normal,color:dWhiteColor),
      bodyLarge: GoogleFonts.poppins(fontSize:14.0, fontWeight:FontWeight.bold,color:dWhiteColor),
      titleMedium: GoogleFonts.montserrat(
        color:Colors.black87,
      ),
      titleSmall: GoogleFonts.poppins(
        color:Colors.black54,
      )
  );
}

