import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  //final Function resetHandler;
  final VoidCallback resetHandler;
  // final VoidCallback waterHandler;

  const Result(
      {Key? key, required this.resultScore, required this.resetHandler})
      : super(key: key);
  //  Result(this.resultScore, this.resetHandler, this.waterHandler);

  //Remark Logic
  String get resultPhrase {
    String resultText =
        'You have finished the initial survey. Here are your results:';

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            resultPhrase,
            style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          // Text(
          //   'Score ' '$resultScore',
          //   style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          //   textAlign: TextAlign.center,
          // ), //Text
          FlatButton(
            child: Text(
              'Restart Quiz!',
            ), //Text
            textColor: Colors.blue,
            onPressed: resetHandler,
            //onPressed: waterHandler,
          ), //FlatButton
          // FlatButton(
          //   child: Text(
          //     'Water Quiz!',
          //   ),
          //   textColor: Colors.blue,
          //   onPressed: waterHandler,
          // ),
        ], //<Widget>[]
      ), //Column
    ); //Center
  }
}
