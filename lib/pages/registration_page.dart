import 'package:flutter/material.dart';
import 'package:login_1/widgets/button.dart';
import 'package:login_1/widgets/header_container.dart';

import 'login_page.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                     _textInput(hint: 'Your AU Email', icon: Icons.email),
                     _textInput(hint: 'Create Password', icon: Icons.vpn_key),
                     _textInput(hint: 'Confirm Password', icon: Icons.vpn_key),
                    Expanded(
                      child: Center(
                        child: ButtonWidget(
                          buttonText: "Register",
                        )
                      ),
                    ),
                    InkWell(
                      onTap:() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      },
                      child: RichText(
                          text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Already have an account? ",
                                  style: TextStyle(color: Colors.black),
                                ),
                                TextSpan(
                                  text: "Login",
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
  Widget _textInput({controller, hint, icon}) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Colors.white),
      padding: EdgeInsets.only(left: 10),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          prefixIcon: Icon(icon),
        ),
      ),
    );
  }
}
