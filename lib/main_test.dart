import 'package:aucares/app.dart';
import 'package:aucares/config.dart';
import 'package:aucares/run.dart';

void main() async {
  const app = AppConfig(
      appName: "AUCares Test",
      environment: Environment.test,
      apiUrl: "http://localhost:8000/graphql",
      child: App());

  run(app: app);
}
