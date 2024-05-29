import 'package:flutter/material.dart';
import 'package:loginapp/src/constants/colors.dart';
import 'package:loginapp/src/constants/sizes.dart';

class DOutlinedButtonTheme{
  DOutlinedButtonTheme._();

  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(),
      foregroundColor: dSecondaryColor,
      side: BorderSide(color: dSecondaryColor),
      padding: EdgeInsets.symmetric(vertical: dButtonHeight),
    ),
  );

  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(),
      foregroundColor: dWhiteColor,
      side: BorderSide(color: dWhiteColor),
      padding: EdgeInsets.symmetric(vertical: dButtonHeight),
    ),
  );
}