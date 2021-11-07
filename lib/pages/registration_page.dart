import 'package:aucares/widgets/error_dialog.dart';

import '../widgets/sign_in.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import '../graphql/queries/register.req.gql.dart';
import 'login_page.dart';
import 'package:gql_exec/gql_exec.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final client = GetIt.I<Client>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(bottom: 30),
        child: Column(
          children: <Widget>[
            const SignInHeader(),
            Expanded(
              flex: 1,
              child: Form(
                child: Container(
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 80),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      SignInTextInput(
                          hintText: 'Your AU Email',
                          icon: Icons.email,
                          controller: _emailController),
                      SignInTextInput(
                          hintText: 'Create Password',
                          icon: Icons.vpn_key,
                          controller: _passwordController,
                          obscureText: true),
                      SignInTextInput(
                          hintText: 'Confirm Password',
                          icon: Icons.vpn_key,
                          controller: _confirmPasswordController,
                          obscureText: true),
                      Expanded(
                        child: Center(
                            child: SignInButton(
                          onClick: () async {
                            await _register(
                                email: _emailController.text,
                                password: _passwordController.text,
                                confirmPassword:
                                    _confirmPasswordController.text);
                          },
                          buttonText: "Register",
                        )),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginPage()));
                        },
                        child: RichText(
                            text: const TextSpan(children: [
                          TextSpan(
                            text: "Already have an account? ",
                            style: TextStyle(color: Colors.black),
                          ),
                          TextSpan(
                            text: "Login",
                            style: TextStyle(color: Color(0xFF186C58)),
                          ),
                        ])),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Show errors returned from the GraphQL server.
  _showServerErrors({required List<GraphQLError> errors}) {
    final message = errors.map((e) => e.message).join("\n");

    _showError(message: message);
  }

  /// Show an error message in a dialog box.
  _showError({required String message}) {
    final errorDialog = ErrorDialog(text: message);

    showDialog(context: context, builder: (context) => errorDialog);
  }

  /// Register the new user.
  _register(
      {required String email,
      required String password,
      required String confirmPassword}) async {
    if (password != confirmPassword) {
      _showError(message: "Passwords do not match");
      return;
    }

    final mutation = GRegisterReq((b) => b
      ..vars.input.email = email
      ..vars.input.password = password);

    final result = await client
        .request(mutation)
        .firstWhere((response) => response.dataSource != DataSource.Optimistic);

    if (result.graphqlErrors != null) {
      _showServerErrors(errors: result.graphqlErrors!);
      return;
    }

    final data = result.data?.register.toString();

    debugPrint('result $data');
  }
}
