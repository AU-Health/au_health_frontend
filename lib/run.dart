import 'package:aucares/config.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import './graphql/client.dart';

Future<void> setup({required String apiUrl}) async {
  final client = await initClient(apiUrl: apiUrl);

  GetIt.I.registerSingleton<Client>(client);
}

void run({required AppConfig app}) async {
  await setup(apiUrl: app.apiUrl);
  runApp(app);
}
