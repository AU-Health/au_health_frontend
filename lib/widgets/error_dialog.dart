import 'package:flutter/material.dart';

/// Build error dialog to show when there is an error. Use [showDialog] to show the errors on the page.
class ErrorDialog extends StatelessWidget {
  const ErrorDialog({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Error"),
      content: Text(text),
      actions: <Widget>[
        TextButton(
          child: const Text("OK"),
          onPressed: () {
            Navigator.of(context).pop();
          },
        )
      ],
    );
  }
}
