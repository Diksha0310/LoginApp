import 'package:flutter/material.dart';
import 'package:loginapp/src/constants/colors.dart';


class DTextFormFieldTheme{
  DTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme =
  const InputDecorationTheme(
    border: OutlineInputBorder(),
    prefixIconColor: dSecondaryColor,
    floatingLabelStyle: TextStyle(color: dSecondaryColor),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 2.0, color: dSecondaryColor)
    )
  );

  static InputDecorationTheme darkInputDecorationTheme =
  const InputDecorationTheme(
      border: OutlineInputBorder(),
      prefixIconColor: dPrimaryColor,
      floatingLabelStyle: TextStyle(color: dPrimaryColor),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2.0, color: dPrimaryColor)
      )
  );
}