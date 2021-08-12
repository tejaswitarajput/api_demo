import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<void> showAlert({
  required BuildContext context,
  required String message,
}) async {
  showAlertDialog(
      context: context,
      title: "Alert!",
      content: message,
      defaultActionText: "Ok");
}

Future<void> showAlertDialog({
  required BuildContext context,
  required String title,
  required String content,
  required String defaultActionText,
}) async {
  if (Platform.isIOS) {
    return await showCupertinoDialog(
      context: context,
      builder: (context) => CupertinoAlertDialog(
        title: Text(title),
        content: Text(content),
        actions: <Widget>[
          CupertinoDialogAction(
            child: Text(defaultActionText),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );
  }
}
