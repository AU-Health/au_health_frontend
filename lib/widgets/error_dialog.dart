import 'package:flutter/material.dart';
import 'package:gql_exec/gql_exec.dart';

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

/// Show an error message in a dialog box.
showError({required BuildContext context, required String text}) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return ErrorDialog(text: text);
    },
  );
}

/// Show errors returned from the GraphQL server.
showGraphQLErrors(
    {required BuildContext context, required List<GraphQLError> errors}) {
  final String errorText = errors.map((GraphQLError error) {
    return error.message;
  }).join("\n");

  showError(context: context, text: errorText);
}
