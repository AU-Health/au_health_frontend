import 'package:flutter/material.dart';

enum Environment { development, test, production }

class AppConfig extends InheritedWidget {
  const AppConfig({
    Key? key,
    required this.appName,
    required this.environment,
    required this.apiUrl,
    required Widget child,
  }) : super(key: key, child: child);

  final String appName;
  final Environment environment;
  final String apiUrl;

  static AppConfig? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppConfig>();
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;
}
