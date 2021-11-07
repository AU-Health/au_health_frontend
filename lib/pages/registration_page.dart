import 'package:aucares/widgets/error_dialog.dart';

import '../widgets/button.dart';
import '../widgets/header_container.dart';
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
                            await _register(
                                email: _emailController.text,
                                password: _passwordController.text);
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

  _showErrors({required List<GraphQLError> errors}) {
    final errorDialog = GraphQLErrorDialog(graphqlErrors: errors);

    showDialog(context: context, builder: (context) => errorDialog);
  }

  _register({required String email, required String password}) async {
    final mutation = GRegisterReq((b) => b
      ..vars.input.email = email
      ..vars.input.password = password);

    final result = await client
        .request(mutation)
        .firstWhere((response) => response.dataSource != DataSource.Optimistic);

    if (result.graphqlErrors != null) {
      _showErrors(errors: result.graphqlErrors!);
      return;
    }

    final data = result.data?.register.toString();

    debugPrint('result $data');
  }

  Widget _textInput({controller, hint, icon, hideText = false}) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Colors.white),
      padding: const EdgeInsets.only(left: 10),
      child: TextFormField(
        controller: controller,
        obscureText: hideText,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          prefixIcon: Icon(icon),
        ),
      ),
    );
  }
}
