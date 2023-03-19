import 'package:app/production/utilities/themes/constants.dart';
import 'package:flutter/material.dart';

ColorScheme? lightColorScheme() {
  return const ColorScheme.light(
    primary: primaryColor,
    secondary: Color.fromARGB(255, 255, 140, 98),
  );
}

ColorScheme? darkColorScheme() {
  return const ColorScheme.dark(
    primary: Colors.black,
    surface: Color.fromARGB(255, 28, 30, 36),
  );
}

// * ############################################################################

// * ---------------------  Light  --------------------------------  General ThemeData Color

enum LightGeneralThemeColor {
  hint(Colors.black54);

  final Color color;
  const LightGeneralThemeColor(this.color);
}

// * ---------------------  Dark  --------------------------------  General ThemeData Color

enum DarkGeneralThemeColor {
  hint(Colors.grey);

  final Color color;
  const DarkGeneralThemeColor(this.color);
}

// * ---------------------  Dark  --------------------------------  TextTheme Color
enum DarkTextThemeColor {
  body(Colors.white);

  final Color color;
  const DarkTextThemeColor(this.color);
}

// * -------------------------------------------------------------  Scaffold Color

enum ScaffoldBackgroundColor {
  light(Colors.white),
  dark(Color(0xff3F1800));

  final Color color;
  const ScaffoldBackgroundColor(this.color);
}

// * ---------------------  Light  --------------------------------  AppBar Color

enum LightAppBarColor {
  appBar(Color(0xffEA5B27)),
  titleTextStyle(Colors.white),
  iconThemeColor(Colors.white);

  final Color color;
  const LightAppBarColor(this.color);
}
// * ---------------------  Dark  --------------------------------  AppBar Color

enum DarkAppBarColor {
  appBar(Color(0xff6A2900)),
  toolbarText(Colors.black),
  titleTextStyle(Colors.white),
  iconTheme(Colors.white);

  final Color color;
  const DarkAppBarColor(this.color);
}

// * ---------------------  Light  --------------------------------  Button Color

enum LightButtonsColor {
  floatingActionButtonBackground(Color(0xffEA5B27)),
  elevatedButtonBackground(Color(0xffEA5B27)),
  elevatedInactiveButtonBackground(Color(0xffD9D9D9)),
  elevatedButtonBorderSide(Colors.transparent),
  elevatedButtonOverlay(Color.fromARGB(37, 210, 210, 210)),
  textButtonForeground(Color(0xffEA5B27));

  final Color color;
  const LightButtonsColor(this.color);
}

// * ---------------------  Dark  --------------------------------  Button Color

enum DarkButtonsColor {
  floatingActionButtonBackground(Color(0xff35383F)),
  elevatedButtonBackground(Color(0xffA94100)),
  elevatedButtonBorderSide(Color(0xff26292F)),
  elevatedButtonOverlay(Color.fromARGB(32, 150, 150, 150)),
  textButtonForeground(Colors.white);

  final Color color;
  const DarkButtonsColor(this.color);
}

// * ---------------------  Light  --------------------------------  Input Decoration

enum LightInputDecorationColor {
  fill(Color(0xffFAFAFA)),
  errorBorder(Colors.red),
  focusedBorder(Colors.black),
  focusedErrorBorder(Colors.black),
  prefixIcon(Colors.black),
  hintText(Colors.black54);

  final Color color;
  const LightInputDecorationColor(this.color);
}

// * ---------------------   Dark  --------------------------------  Input Decoration

enum DarkInputDecorationColor {
  fill(Color(0xff1F222A)),
  errorBorder(Colors.red),
  focusedBorder(Colors.white),
  focusedErrorBorder(Colors.white),
  prefixIcon(primaryColor),
  hintText(Colors.grey);

  final Color color;
  const DarkInputDecorationColor(this.color);
}
