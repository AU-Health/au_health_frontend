import 'package:flutter/material.dart';
import 'package:login_1/pages/registration_page.dart';
import 'package:login_1/widgets/button.dart';
import 'package:login_1/widgets/header_container.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xFF186C58),
      body: Container(
        padding: EdgeInsets.only(bottom: 30),
        child: Column(
          children: <Widget>[
            HeaderContainer(),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 80),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    _textInput(hint: 'Email', icon: Icons.email, hideText: false),
                    _textInput(hint: 'Password', icon: Icons.vpn_key, hideText: true),
                    Container(
                      margin: EdgeInsets.only(
                        top: 10,
                        right: 10,
                        bottom: 10,
                      ),
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Forgot password?",
                      ),
                    ),

                    Expanded(
                      child: Center(
                        child: ButtonWidget(
                          buttonText: "Login",
                        ),
                      ),
                    ),
                    InkWell(
                      onTap:() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegistrationPage()));
                      },
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text: "Don't have an account yet? ",
                                style: TextStyle(color: Colors.black),
                            ),
                            TextSpan(
                                text: "Sign up",
                                style: TextStyle(color: Color(0xFF186C58)),
                            ),
                          ]
                        )
                      ),
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

  Widget _textInput({controller, hint, icon, hideText}) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Colors.white),
      padding: EdgeInsets.only(left: 10),
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

