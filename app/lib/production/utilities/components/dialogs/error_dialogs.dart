import 'dart:io';

import 'package:app/production/utilities/themes/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ErrorDialog extends StatelessWidget {
  final String title;
  final String message;
  final VoidCallback onOkayPressed;

  const ErrorDialog({
    Key? key,
    required this.title,
    required this.message,
    required this.onOkayPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = isDarkMode(context)
        ? const Color.fromARGB(255, 104, 62, 39)
        : Color.fromARGB(255, 247, 247, 246);
    final platformDialog = Platform.isIOS ? _iosDialog(context) : _androidDialog(context, color);

    return platformDialog;
  }

  AlertDialog _androidDialog(BuildContext context, Color color) {
    return AlertDialog(
      backgroundColor: color,
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.r),
      ),
      title: Text(title,
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontWeight: FontWeight.bold,
          )),
      content: Text(message, style: TextStyle(fontSize: 13.sp)),
      actionsPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
      actions: [
        Center(
          child: SizedBox(
            height: 40.h,
            child: FloatingActionButton.extended(
              onPressed: onOkayPressed,
              backgroundColor: Theme.of(context).primaryColor,
              icon: const Icon(
                Icons.refresh,
                color: Colors.white,
              ),
              label: Text('refresh', style: TextStyle(fontSize: 13.sp, color: Colors.white)),
            ),
          ),
        ),
      ],
    );
  }

  CupertinoAlertDialog _iosDialog(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(title),
      content: Text(message),
      actions: [
        CupertinoDialogAction(
          child: const Text('refresh'),
          onPressed: onOkayPressed,
        ),
      ],
    );
  }
}
