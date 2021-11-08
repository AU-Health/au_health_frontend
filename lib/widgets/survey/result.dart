import 'package:aucares/pages/home.dart';
import 'package:aucares/widgets/button.dart';
import 'package:aucares/widgets/navigation.dart';
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
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Text(
          resultPhrase,
          style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
          softWrap: true,
        ),
        const SizedBox(
          height: 20,
        ),
        // Text(
        //   'Score ' '$resultScore',
        //   style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        //   textAlign: TextAlign.center,
        // ), //Text
        AppButton(
          buttonText: "Restart Survey", //Text
          onClick: resetHandler,
        ),
        const SizedBox(
          height: 20,
        ),
        AppButton(
          buttonText: "Home",
          onClick: () {
            AppNavigation.hardPush(page: HomePage(), context: context);
          },
        ) //FlatButton
        // FlatButton(
        //   child: Text(
        //     'Water Quiz!',
        //   ),
        //   textColor: Colors.blue,
        //   onPressed: waterHandler,
        // ),
      ], //<Widget>[]
      //Column
    )); //Center
  }
}
