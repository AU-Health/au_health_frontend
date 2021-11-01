import 'package:artemis/client.dart';
import 'package:flutter/material.dart';
import 'package:login_1/graphql/graphql_api.graphql.dart';
import 'package:login_1/widgets/button.dart';
import 'package:login_1/widgets/header_container.dart';

import 'login_page.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final client = ArtemisClient("http://localhost:8000/graphql");

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(bottom: 30),
        child: Column(
          children: <Widget>[
            const HeaderContainer(),
            Expanded(
              flex: 1,
              child: Form(
                child: Container(
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 80),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      _textInput(
                          hint: 'Your AU Email',
                          icon: Icons.email,
                          controller: _emailController),
                      _textInput(
                          hint: 'Create Password',
                          icon: Icons.vpn_key,
                          controller: _passwordController),
                      _textInput(hint: 'Confirm Password', icon: Icons.vpn_key),
                      Expanded(
                        child: Center(
                            child: ButtonWidget(
                          onClick: () async {
                            final mutation = RegisterMutation(
                                variables: RegisterArguments(
                                    input: NewUser(
                                        email: _emailController.text,
                                        password: _passwordController.text)));

                            final response = await client.execute(mutation);

                            final data = response.data.toString();

                            response.errors?.forEach((error) {
                              debugPrint('error: $error');
                            });

                            debugPrint('data: $data');
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

  Widget _textInput({controller, hint, icon}) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Colors.white),
      padding: const EdgeInsets.only(left: 10),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          prefixIcon: Icon(icon),
        ),
        controller: controller,
      ),
    );
  }
}
