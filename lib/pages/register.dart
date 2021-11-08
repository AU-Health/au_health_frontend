import 'package:aucares/graphql/client.dart';
import 'package:aucares/pages/survey.dart';
import 'package:aucares/widgets/button.dart';
import 'package:aucares/widgets/error_dialog.dart';
import 'package:aucares/widgets/navigation.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../graphql/queries/register.req.gql.dart';
import '../widgets/sign_in.dart';
import 'login.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final client = GetIt.I<Client>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF186C58),
        elevation: 0,
        toolbarHeight: 50,
      ),
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
                            child: AppButton(
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

  /// Register the user. Verifies their password. If successful, sends them to the survey.
  _register(
      {required String email,
      required String password,
      required String confirmPassword}) async {
    if (password != confirmPassword) {
      showError(context: context, text: "Passwords do not match");
      return;
    }

    final mutation = GRegisterReq((b) => b
      ..vars.input.email = email
      ..vars.input.password = password);

    client.refreshCache();

    final result = await client.mutate(mutation);

    final data = result.handleErrorsOrUnwrap(context);

    if (data == null) return;

    final register = data.register.toString();

    debugPrint('result $register');

    AppNavigation.hardPush(context: context, page: const SurveyPage());
  }
}
