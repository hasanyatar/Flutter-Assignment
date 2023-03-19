import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NoInternetDialog extends StatelessWidget {
  const NoInternetDialog({super.key, required this.onPressed});

  // callback onpressed
  final Function onPressed;
  final title = 'No Internet Connection';
  final message = 'Please check your internet connection and try again.';
  @override
  Widget build(BuildContext context) {
    final platformDialog = Platform.isIOS ? _iosDialog(context) : _androidDialog(context);
    return platformDialog;
  }

  CupertinoAlertDialog _iosDialog(
    BuildContext context,
  ) {
    return CupertinoAlertDialog(
      title: Text(title),
      content: Text(message),
      actions: [
        CupertinoDialogAction(
          child: const Text('Okay'),
          onPressed: () {
            onPressed();
            AutoRouter.of(context).pop();
          },
        ),
      ],
    );
  }

  Widget _androidDialog(
    BuildContext context,
  ) {
    return AlertDialog(
      title: Text(title),
      content: Text(message),
      actions: [
        TextButton(
          child: const Text('Okay'),
          onPressed: () {
            onPressed();
            AutoRouter.of(context).pop();
          },
        ),
      ],
    );
  }
}
