import 'package:flutter/material.dart';

/// Header above sign in pages (Register, Login, etc).
class SignInHeader extends StatelessWidget {
  const SignInHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.35,
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
    );
  }
}

/// Button to sign in.
class SignInButton extends StatelessWidget {
  final String buttonText;
  final void Function() onClick;

  const SignInButton({Key? key, this.buttonText = "", required this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        // width: double.infinity,
        width: MediaQuery.of(context).size.width * 0.6,
        height: 60,
        decoration: const BoxDecoration(
          color: Color(0xFF6CC551),
          borderRadius: BorderRadius.all(
            Radius.circular(100),
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          buttonText,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
