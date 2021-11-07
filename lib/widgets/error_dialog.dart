import 'package:flutter/material.dart';
import 'package:gql_exec/gql_exec.dart';

class GraphQLErrorDialog extends StatelessWidget {
  const GraphQLErrorDialog({Key? key, required this.graphqlErrors})
      : super(key: key);

  final List<GraphQLError> graphqlErrors;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Error"),
      content: Text(graphqlErrors.map((e) => e.message).join("\n")),
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
