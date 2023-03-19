import 'package:app/production/utilities/themes/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'color_scheme.dart';

InputDecorationTheme lightInputDecorationTheme() {
  return InputDecorationTheme(
    filled: true,
    fillColor: Colors.white,
    focusColor: Colors.green,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(15.0)),
      borderSide: BorderSide(
        width: 1.sp,
        color: DarkInputDecorationColor.errorBorder.color,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(15.0)),
      borderSide: BorderSide(color: const Color(0xffEA5B27), width: 1.sp),
    ),
    prefixIconColor: LightInputDecorationColor.prefixIcon.color,
    hintStyle: TextStyle(color: LightInputDecorationColor.hintText.color),
  );
}

InputDecorationTheme darkInputDecorationTheme() {
  return InputDecorationTheme(
    filled: true,
    fillColor: const Color(0xff943900),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(15.0.r)),
      borderSide: const BorderSide(
        width: 1,
        color: primaryColor,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(
        width: 1,
        color: DarkInputDecorationColor.errorBorder.color,
      ),
      borderRadius: BorderRadius.all(Radius.circular(15.0.r)),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(15.0.r)),
      borderSide: const BorderSide(
        width: 1,
        color: primaryColor,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(15.0.r)),
      borderSide: BorderSide(
        width: 1,
        color: Colors.white,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(15.0.r)),
      borderSide: BorderSide(
        width: 1,
        color: DarkInputDecorationColor.focusedErrorBorder.color,
      ),
    ),
    prefixIconColor: Colors.white,
    hintStyle: TextStyle(color: const Color.fromARGB(255, 226, 212, 212), fontSize: 15.sp),
  );
}
