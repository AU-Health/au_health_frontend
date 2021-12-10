import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;
// selectHandler understands what was clicked and assigns it to answerText

  const Answer(
      {Key? key, required this.selectHandler, required this.answerText})
      : super(key: key);

  @override
  //formatting the buttons with the text
  //raised buttons
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
            fontSize: 15.0,
          )),
        ),
        child: Text(answerText),
        //when pressed call selectHandler to tell which button was selected

        onPressed: selectHandler,
      ), //RaisedButton
    ); //Container
  }
}
