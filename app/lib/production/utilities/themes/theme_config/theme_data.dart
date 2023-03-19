// import 'package:app/utilities/themes/theme_config/appbar_theme.dart';
// import 'package:app/utilities/themes/theme_config/bottom_appbar_theme.dart';
// import 'package:app/utilities/themes/theme_config/bottom_navigation_bar_theme.dart';
import 'package:app/production/utilities/themes/theme_config/appbar_theme.dart';
import 'package:app/production/utilities/themes/theme_config/listtile_theme.dart';
import 'package:app/production/utilities/themes/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'button_theme.dart';
import 'color_scheme.dart';
import 'input_decoration_theme.dart';
import 'text_theme.dart';

class MyThemeData {
  static MyThemeData? _instance;
  factory MyThemeData() {
    return _instance ??= MyThemeData._init();
  }

  MyThemeData._init();

  ThemeData lightThemeData(BuildContext context) => ThemeData.light().copyWith(
        brightness: Brightness.light,
        colorScheme: lightColorScheme(),
        textSelectionTheme: LightTextTheme.getTextSelectionTheme(),
        splashColor: const Color(0xffF28E27).withOpacity(0.1),
        scrollbarTheme: ScrollbarThemeData(
          thumbVisibility: MaterialStateProperty.all(true),
          thumbColor: MaterialStateProperty.all(const Color(0xffEA5B27)),
          trackVisibility: MaterialStateProperty.all(true),
          trackColor: MaterialStateProperty.all(const Color(0xffE9E9E9)),
          thickness: MaterialStateProperty.all(7.w),
          radius: Radius.circular(20.r),
        ),
        textButtonTheme: LightButtonTheme.getTextButtonThemeData(),
        scaffoldBackgroundColor: ScaffoldBackgroundColor.light.color,
        floatingActionButtonTheme: LightButtonTheme.getFloatingActionButtonThemeData(),
        buttonTheme: LightButtonTheme.getButtonThemeData(),
        elevatedButtonTheme: LightButtonTheme.getElevatedButtonThemeData(),
        inputDecorationTheme: lightInputDecorationTheme(),
        primaryColor: primaryColor,
        listTileTheme: lightListTileTheme(context),
        iconTheme: const IconThemeData(color: primaryColor),
        hintColor: LightGeneralThemeColor.hint.color,
        appBarTheme: lightAppBarTheme(context),
      );

  ThemeData darkThemeData(BuildContext context) => ThemeData.dark().copyWith(
        // textTheme:
        //     GoogleFonts.robotoFlexTextTheme().apply(bodyColor: DarkTextThemeColor.body.color),
        colorScheme: darkColorScheme(),
        textSelectionTheme: DarkTextTheme.getTextSelectionTheme(),
        scaffoldBackgroundColor: ScaffoldBackgroundColor.dark.color,
        textButtonTheme: DarkButtonTheme.getTextButtonThemeData(),
        floatingActionButtonTheme: DarkButtonTheme.getFloatingActionButtonThemeData(),
        buttonTheme: DarkButtonTheme.getButtonThemeData(),
        elevatedButtonTheme: DarkButtonTheme.getElevatedButtonThemeData(),
        inputDecorationTheme: darkInputDecorationTheme(),
        listTileTheme: darkListTileTheme(context),
        iconTheme: const IconThemeData(color: Colors.white),
        primaryColor: primaryColor,

        // bottomSheetTheme: ,
        hintColor: DarkGeneralThemeColor.hint.color,
        dialogTheme: const DialogTheme(backgroundColor: Color(0xff181A20)),
        bottomSheetTheme: const BottomSheetThemeData(backgroundColor: Color(0xff181A20)),
        appBarTheme: darkAppBarTheme(context),
        checkboxTheme: CheckboxThemeData(
          fillColor: MaterialStateProperty.all(Colors.grey.shade800),
          checkColor: MaterialStateProperty.all(Colors.red),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      );
}
