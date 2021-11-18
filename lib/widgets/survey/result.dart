import 'package:aucares/pages/home.dart';
import 'package:aucares/widgets/button.dart';
import 'package:aucares/widgets/navigation.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final scoreArray;
  //final int resultScore;
  //final Function resetHandler;
  final VoidCallback resetHandler;
  // final VoidCallback waterHandler;

  const Result(
      {Key? key, required this.scoreArray, required this.resetHandler})
      : super(key: key);
  //  Result(this.resultScore, this.resetHandler, this.waterHandler);

  //Remark Logic
  List get resultPhrase {
    var resultsArray = List.filled(6, "a");
    var result;
    var hydrationResult;
    var veggieResult;
    var sleepResult;
    var physicalResult;
    var emotionResult;
    for(var i = 7; i<20;i+=2){
      var tempScore1 = scoreArray[i];
      var tempScore2 = scoreArray[i+1];
      var avgScore = (tempScore1 + tempScore2)/2;
      avgScore*=2;
      switch(avgScore){
        case 0:{
          break;
        }
        case 2:{
          print("Precontemplative");
          result = "Precontemplation";
          break;
        }
        case 3:{
          print("Contemplative");
          result = "Contemplation";
          break;
        }
        case 4:{
          print("Contemplative");
          result = "Contemplation";
          break;
        }
        case 5:{
          print("Preparation");
          result = "Preparation";
          break;
        }
        case 6:{
          print("Preparation");
          result = "Preparation";
          break;
        }
        case 7:{
          print("Action");
          result = "Action";
          break;
        }
        case 8:{
          print("Action");
          result = "Action";
          break;
        }
        case 9:{
          print("Maintenance");
          result = "Maintenance";
          break;
        }
        case 10:{
          print("Maintenance");
          result = "Maintenance";
          break;
        }
        case 11:{
          print("Relapse");
          result = "Relapse";
          break;
        }
        case 12:{
          print("Relapse");
          result = "Relapse";
          break;
        }
        default: {
          print("wrong");
          break;
        }
      }
      if(i == 7){
        hydrationResult = result;
        resultsArray[0] = hydrationResult;
        print(resultsArray[0]);
      }
      else if(i == 9){
        veggieResult = result;
        resultsArray[1] = veggieResult;
      }
      else if(i == 11){
        sleepResult = result;
        resultsArray[2] = sleepResult;
      }
      else if(i == 13){
        physicalResult = result;
        resultsArray[3] = physicalResult;
      }
      else if(i == 15){
        emotionResult = result;
        resultsArray[4] = emotionResult;
      }
    }
    print(resultsArray);
    return resultsArray;
  }
  String get hydrationResults{
    String words = resultPhrase[0];
    print(words);
    return words;
  }
  String get fruitResults{
    String words = resultPhrase[1];
    print(words);
    return words;
  }
  String get sleepResults{
    String words = resultPhrase[2];
    print(words);
    return words;
  }
  String get activityResults{
    String words = resultPhrase[3];
    print(words);
    return words;
  }
  String get emotionResults{
    String words = resultPhrase[4];
    print(words);
    return words;
  }
  String get resultWords{
    String words ="Your results are: ";
    return words;
  }
  String get informationWords{
    String words = "\n\n\n\n\nClick here for more information";
    return words;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Text(
          resultWords,
          style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
          softWrap: true,
        ),
        const SizedBox(
          height: 20,
        ),
        FlatButton(
            child: Text(
              '\nHydration:',
              style: TextStyle(fontSize: 25),
            ), //Text

            textColor: Colors.green,
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Hydration()),
              );
            }
        ),
        Text(
          hydrationResults,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),

        FlatButton(
            child: Text(
              '\nFruits and Vegetables:',
              style: TextStyle(fontSize: 25),
            ), //Text

            textColor: Colors.green,
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Fruits()),
              );
            }
        ),
        Text(
          fruitResults,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        FlatButton(
            child: Text(
              '\nSleep:',
              style: TextStyle(fontSize: 25),
            ), //Text

            textColor: Colors.green,
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Sleep()),
              );
            }
        ),
        Text(
          sleepResults,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        FlatButton(
            child: Text(
              '\nPhysical Activity:',
              style: TextStyle(fontSize: 25),
            ), //Text

            textColor: Colors.green,
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Activity()),
              );
            }
        ),
        Text(
          activityResults,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        FlatButton(
            child: Text(
              '\nEmotional:',
              style: TextStyle(fontSize: 25),
            ), //Text

            textColor: Colors.green,
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Emotion()),
              );
            }
        ),
        Text(
          emotionResults,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
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
class Hydration extends StatelessWidget {
  const Hydration({Key? key}) : super(key: key);
  String get hydrationWords{
    String words ="Hydration is water";
    return words;
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('AU Cares'),
          backgroundColor: Color(0xFF186C58),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text(
                hydrationWords,
                style: TextStyle(fontSize: 22),
                textAlign: TextAlign.center,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Results'),
              ),
            ],
          ),
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}
class Fruits extends StatelessWidget {
  const Fruits({Key? key}) : super(key: key);
  String get fruitWords{
    String words ="Fruits and Vegetables are important";
    return words;
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('AU Cares'),
          backgroundColor: Color(0xFF186C58),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text(
                fruitWords,
                style: TextStyle(fontSize: 22),
                textAlign: TextAlign.center,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Results'),
              ),
            ],
          ),
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}
class Sleep extends StatelessWidget {
  const Sleep({Key? key}) : super(key: key);
  String get sleepWords{
    String words ="You should sleep";
    return words;
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('AU Cares'),
          backgroundColor: Color(0xFF186C58),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text(
                sleepWords,
                style: TextStyle(fontSize: 22),
                textAlign: TextAlign.center,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Results'),
              ),
            ],
          ),
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}
class Activity extends StatelessWidget {
  const Activity({Key? key}) : super(key: key);
  String get activityWords{
    String words ="Physical activity is important";
    return words;
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('AU Cares'),
          backgroundColor: Color(0xFF186C58),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text(
                activityWords,
                style: TextStyle(fontSize: 22),
                textAlign: TextAlign.center,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Results'),
              ),
            ],
          ),
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}
class Emotion extends StatelessWidget {
  const Emotion({Key? key}) : super(key: key);
  String get emotionWords{
    String words ="Mental health is important";
    return words;
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('AU Cares'),
          backgroundColor: Color(0xFF186C58),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text(
                emotionWords,
                style: TextStyle(fontSize: 22),
                textAlign: TextAlign.center,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Results'),
              ),
            ],
          ),
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}