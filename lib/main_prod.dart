import 'package:aucares/app.dart';
import 'package:aucares/config.dart';
import 'package:aucares/run.dart';

void main() async {
  const app = AppConfig(
      appName: "AUCares",
      environment: Environment.production,
      apiUrl: "https://aucares.mattwilkinson.dev/graphql",
      child: App());

  run(app: app);
}
