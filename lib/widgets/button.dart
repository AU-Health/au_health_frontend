import 'package:flutter/material.dart';

/// Button to sign in.
class AppButton extends StatelessWidget {
  final String buttonText;
  final void Function() onClick;

  const AppButton({Key? key, this.buttonText = "", required this.onClick})
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
