import 'package:flutter/material.dart';

const primaryColor = Color(0xffEA5B27);
bool isDarkMode(context) => Theme.of(context).brightness == Brightness.dark;

Color? getSearchThemeColor(context) => (isDarkMode(context)
    ? Theme.of(context).appBarTheme.backgroundColor
    : Theme.of(context).primaryColor);
