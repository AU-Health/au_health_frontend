import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  //final Function selectHandler;
  final VoidCallback selectHandler;
  final String answerText;

  const Answer(
      {Key? key, required this.selectHandler, required this.answerText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70.0,
      padding: const EdgeInsets.only(top: 5),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(const Color(0xFF186C58)),
          textStyle: MaterialStateProperty.all(const TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          )),
        ),
        child: Text(answerText),
        onPressed: selectHandler,
      ), //RaisedButton
    ); //Container
  }
}
