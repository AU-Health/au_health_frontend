import 'package:flutter/material.dart';

class NavButton extends StatelessWidget {
  final String buttonText;
  final MaterialPageRoute Function() routeBuilder;

  const NavButton({Key? key, this.buttonText = "", required this.routeBuilder})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, routeBuilder());
      },
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

extension AppNavigation on Navigator {
  /// Push a route onto the page. Clear all of the previous page stack.
  static void hardPush({required Widget page, required BuildContext context}) {
    Navigator.pushAndRemoveUntil(
        context, MaterialPageRoute(builder: (context) => page), (_) => false);
  }
}
