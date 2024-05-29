import 'package:flutter/material.dart';
import 'package:loginapp/src/utils/theme/widget_themes/elevated_button_theme.dart';
import 'package:loginapp/src/utils/theme/widget_themes/outlined_button_theme.dart';
import 'package:loginapp/src/utils/theme/widget_themes/text_field_theme.dart';
import 'package:loginapp/src/utils/theme/widget_themes/text_theme.dart';

class TAppTheme{

  TAppTheme._(); //constructor "_" is private sign

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: TTextTheme.lightTextTheme,
    outlinedButtonTheme: DOutlinedButtonTheme.lightOutlinedButtonTheme,
    elevatedButtonTheme: DElevatedButtonTheme.lightElevatedButtonTheme,
    inputDecorationTheme: DTextFormFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: TTextTheme.darkTextTheme,
    outlinedButtonTheme: DOutlinedButtonTheme.darkOutlinedButtonTheme,
    elevatedButtonTheme: DElevatedButtonTheme.darkElevatedButtonTheme,
    inputDecorationTheme: DTextFormFieldTheme.darkInputDecorationTheme,
  );

}