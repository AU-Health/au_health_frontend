import 'package:flutter/material.dart';

class HeaderContainer extends StatefulWidget {
  const HeaderContainer({Key? key}) : super(key: key);

  @override
  _HeaderContainerState createState() => _HeaderContainerState();
}

class _HeaderContainerState extends State<HeaderContainer> {
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
