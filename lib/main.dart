import './graphql/client.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'pages/login_page.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

void setup() async {
  final client = await initClient();

  GetIt.I.registerSingleton<Client>(client);
}

void main() async {
  final client = await initClient();

  GetIt.I.registerSingleton<Client>(client);
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
    );
  }
}
