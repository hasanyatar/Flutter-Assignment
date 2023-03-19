import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ListTileThemeData lightListTileTheme(BuildContext context) {
  return ListTileThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.r),
      side: const BorderSide(
        color: Color.fromARGB(255, 191, 191, 191),
        width: 1,
      ),
    ),
  );
}

ListTileThemeData darkListTileTheme(BuildContext context) {
  return ListTileThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.r),
      side: const BorderSide(
        color: Color.fromARGB(255, 96, 76, 69),
        width: 1,
      ),
    ),
  );
}
