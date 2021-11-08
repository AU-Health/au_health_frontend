import 'package:aucares/graphql/client.dart';
import 'package:aucares/graphql/queries/logout.req.gql.dart';
import 'package:aucares/graphql/queries/me.data.gql.dart';
import 'package:aucares/graphql/queries/me.req.gql.dart';
import 'package:aucares/graphql/queries/me.var.gql.dart';
import 'package:aucares/pages/login.dart';
import 'package:aucares/pages/register.dart';
import 'package:aucares/pages/survey.dart';
import 'package:aucares/widgets/button.dart';
import 'package:aucares/widgets/error_dialog.dart';
import 'package:aucares/widgets/navigation.dart';
import 'package:aucares/widgets/sign_in.dart';
import 'package:ferry/ferry.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final client = GetIt.I<Client>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Operation(
      client: client,
      operationRequest: GMeReq((b) => b),
      builder: (
        BuildContext context,
        OperationResponse<GMeData, GMeVars>? response,
        Object? error,
      ) {
        return _buildFromResponse(context, response, error);
      },
    ));
  }

  /// After we get the Me response, we can build the homepage.
  _buildFromResponse(
    BuildContext context,
    OperationResponse<GMeData, GMeVars>? response,
    Object? error,
  ) {
    if (error != null) {
      showError(context: context, text: error.toString());
    }

    if (response == null) {
      return const Center(
          child: CircularProgressIndicator(
        color: Colors.red,
      ));
    }

    if (response.loading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (response.hasErrors) {
      if (response.linkException != null) {
        return ErrorDialog(text: response.linkException.toString());
      }

      if (response.graphqlErrors != null) {
        showGraphQLErrors(context: context, errors: response.graphqlErrors!);
      }

      return const Center(child: Text('Error'));
    }

    return _Home(me: response.data?.me);
  }
}

class _Home extends StatefulWidget {
  const _Home({Key? key, this.me}) : super(key: key);

  final GMeData_me? me;

  @override
  _HomeState createState() => _HomeState();
}

/// Homepage UI.
class _HomeState extends State<_Home> {
  final client = GetIt.I<Client>();

  @override
  Widget build(BuildContext context) {
    List<Widget> buttons;

    if (widget.me != null) {
      buttons = [
        Text('Hello, ${widget.me!.email}!'),
        NavButton(
            buttonText: "Take Survey",
            routeBuilder: () =>
                MaterialPageRoute(builder: (context) => const SurveyPage())),
        AppButton(
          buttonText: "Logout",
          onClick: () async {
            await _logout();
          },
        )
      ];
    } else {
      buttons = [
        NavButton(
            buttonText: "Login",
            routeBuilder: () =>
                MaterialPageRoute(builder: (context) => const LoginPage())),
        NavButton(
            buttonText: "Register",
            routeBuilder: () =>
                MaterialPageRoute(builder: (context) => const RegisterPage()))
      ];
    }

    return Scaffold(
        //backgroundColor: Color(0xFF186C58),
        appBar: AppBar(
          backgroundColor: const Color(0xFF186C58),
          elevation: 0,
        ),
        body: Container(
            padding: const EdgeInsets.only(bottom: 30),
            child: Column(children: <Widget>[
              const SignInHeader(),
              Expanded(
                flex: 1,
                child: Container(
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 80),
                  child: Wrap(
                    direction: Axis.vertical,
                    spacing: 30,
                    children: buttons,
                  ),
                ),
              )
            ])));
  }

  _logout() async {
    final mutation = GLogoutReq((b) => b);

    // client.refreshCache();

    final result = await client.mutate(mutation);

    client.refreshCache();

    final data = result.handleErrorsOrUnwrap(context);

    if (data == null) {
      debugPrint("logout data is null!");
      return;
    }

    final logout = data.logout.toString();

    debugPrint('logout $logout');

    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => HomePage()));

    return;
  }
}
