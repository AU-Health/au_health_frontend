import 'package:flutter/material.dart';

/// Header above sign in pages (Register, Login, etc).
class SignInHeader extends StatelessWidget {
  const SignInHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.33,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100)),
        color: Color(0xFF186C58),
      ),
      child: const Center(
        child: Text(
          'Welcome to AU Cares',
          style: TextStyle(fontSize: 27, color: Colors.white),
        ),
      ),
      padding: const EdgeInsets.only(bottom: 100),
    );
  }
}

/// Text input for sign in pages.
class SignInTextInput extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final IconData icon;
  final bool obscureText;

  const SignInTextInput({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.icon,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Colors.white),
      padding: const EdgeInsets.only(left: 10),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          prefixIcon: Icon(icon),
        ),
      ),
    );
  }
}
