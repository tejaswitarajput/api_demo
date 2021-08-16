import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<void> showAlert({
  BuildContext context,
  String message,
}) async {
  showAlertDialog(
      context: context,
      title: "Alert!",
      content: message,
      defaultActionText: "Ok");
}

Future<void> showAlertDialog({
  BuildContext context,
  String title,
  String content,
  String defaultActionText,
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
