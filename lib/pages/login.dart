import 'package:aucares/graphql/client.dart';
import 'package:aucares/graphql/queries/login.req.gql.dart';
import 'package:aucares/pages/home.dart';
import 'package:aucares/widgets/button.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../widgets/navigation.dart';
import '../widgets/sign_in.dart';
import 'register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

// text controllers for getting input data from email and password fields
class _LoginPageState extends State<LoginPage> {
  final client = GetIt.I<Client>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // main widget containing input fields
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      //backgroundColor: Color(0xFF186C58),
      // basic size specifications
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
              child: Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 80),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    // controller for email input
                    SignInTextInput(
                        controller: _emailController,
                        hintText: 'Email',
                        icon: Icons.email),
                    // controller for password input
                    SignInTextInput(
                        controller: _passwordController,
                        hintText: 'Password',
                        icon: Icons.vpn_key,
                        obscureText: true),
                    // Forgot password, still needs to be implemented
                    Container(
                      margin: const EdgeInsets.only(
                        top: 10,
                        right: 10,
                        bottom: 10,
                      ),
                      alignment: Alignment.centerRight,
                      child: const Text(
                        "Forgot password?",
                      ),
                    ),
                    // validates account info in email and password field.
                    // logs user in and navigates to survey if successful
                    Expanded(
                      child: Center(
                        child: AppButton(
                          buttonText: "Login",
                          onClick: () async {
                            _login(
                                email: _emailController.text,
                                password: _passwordController.text);
                          },
                        ),
                      ),
                    ),
                    // button for navigation segue to register page
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RegisterPage()));
                      },
                      child: RichText(
                          text: const TextSpan(children: [
                        TextSpan(
                          text: "Don't have an account yet? ",
                          style: TextStyle(color: Colors.black),
                        ),
                        TextSpan(
                          text: "Sign up",
                          style: TextStyle(color: Color(0xFF186C58)),
                        ),
                      ])),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Login the user. If successful, sends them to the survey.
  _login({required String email, required String password}) async {
    final mutation = GLoginReq((b) => b
      ..vars.input.email = email
      ..vars.input.password = password);

    client.refreshCache();

    final result = await client.mutate(mutation);

    final data = result.handleErrorsOrUnwrap(context);

    if (data == null) return;

    final login = data.login.toString();

    debugPrint('result $login');

    AppNavigation.hardPush(context: context, page: HomePage());
  }
}
