import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  //const ButtonWidget({Key? key}) : super(key: key);
  var buttonText = "";
  var onClick;

  ButtonWidget({this.buttonText = "", this.onClick});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        // width: double.infinity,
        width: MediaQuery.of(context).size.width * 0.6,
        height: 60,
        decoration: BoxDecoration(
          color: Color(0xFF6CC551),
          borderRadius: BorderRadius.all(
            Radius.circular(100),
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
