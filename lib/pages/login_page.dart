import 'package:aucares/graphql/queries/login.req.gql.dart';
import 'package:aucares/pages/survey.dart';
import 'package:aucares/widgets/error_dialog.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../pages/registration_page.dart';
import '../widgets/sign_in.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final client = GetIt.I<Client>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xFF186C58),
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
                    SignInTextInput(
                        controller: _emailController,
                        hintText: 'Email',
                        icon: Icons.email),
                    SignInTextInput(
                        controller: _passwordController,
                        hintText: 'Password',
                        icon: Icons.vpn_key,
                        obscureText: true),
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
                    Expanded(
                      child: Center(
                        child: SignInButton(
                          buttonText: "Login",
                          onClick: () async {
                            _login(
                                email: _emailController.text,
                                password: _passwordController.text);
                          },
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const RegistrationPage()));
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

  _login({required String email, required String password}) async {
    final mutation = GLoginReq((b) => b
      ..vars.input.email = email
      ..vars.input.password = password);

    final result = await client
        .request(mutation)
        .firstWhere((response) => response.dataSource != DataSource.Optimistic);

    if (result.hasErrors) {
      showGraphQLErrors(context: context, errors: result.graphqlErrors!);
      return;
    }

    final data = result.data?.login.toString();

    debugPrint('result $data');

    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Survey(),
        ));
  }
}
