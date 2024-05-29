import 'package:flutter/material.dart';
import 'package:loginapp/src/constants/colors.dart';
import 'package:loginapp/src/constants/sizes.dart';

class DElevatedButtonTheme{
  DElevatedButtonTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: const RoundedRectangleBorder(),
      foregroundColor: dWhiteColor,
      backgroundColor: dSecondaryColor,
      side: const BorderSide(color: dSecondaryColor),
      padding: const EdgeInsets.symmetric(vertical: dButtonHeight),),
  );

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: const RoundedRectangleBorder(),
      foregroundColor: dSecondaryColor,
      backgroundColor: dWhiteColor,
      side: const BorderSide(color: dSecondaryColor),
      padding: const EdgeInsets.symmetric(vertical: dButtonHeight),),
  );
}