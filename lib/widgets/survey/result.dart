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
    var resultsArray = List.filled(10, "a");
    var result;
    // var hydrationResult;
    // var veggieResult;
    // var sleepResult;
    // var physicalResult;
    // var emotionResult;
    for(var i = 1; i<14;i+=2){
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
      if(i == 1){
        resultsArray[0] = result;;
      }
      else if(i == 3){
        resultsArray[1] = result;
      }
      else if(i == 5){
        resultsArray[2] = result;
      }
      else if(i == 7){
        resultsArray[3] = result;
      }
      else if(i == 9){
        resultsArray[4] = result;
      }
      if(i == 11){
        resultsArray[5] = result;
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
  String get nutritionResults{
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
  String get environmentalHealthResults{
    String words = resultPhrase[4];
    print(words);
    return words;
  }
  String get stressResults{
    String words = resultPhrase[5];
    print(words);
    return words;
  }
  String get resultWords{
    String words ="Your results are: ";
    return words;
  }
  // String get informationWords{
  //   String words = "\n\n\n\n\nClick here for more information";
  //   return words;
  // }

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
              if(hydrationResults == "Precontemplation"){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PrecontemplationHydration()),
                );
              }
              else if(hydrationResults == "Contemplation"){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ContemplationHydration()),
                );
              }
              else if(hydrationResults == "Preparation"){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PreparationHydration()),
                );
              }
              else if(hydrationResults == "Action"){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ActionHydration()),
                );
              }
              else if(hydrationResults == "Maintenance"){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MaintenanceHydration()),
                );
              }
              else if(hydrationResults == "Relapse"){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RelapseHydration()),
                );
              }
            }
        ),
        Text(
          hydrationResults,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),

        FlatButton(
            child: Text(
              '\nNutrition:',
              style: TextStyle(fontSize: 25),
            ), //Text

            textColor: Colors.green,
            onPressed: (){
              if(nutritionResults == "Precontemplation"){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PrecontemplationNutrition()),
                );
              }
              else if(nutritionResults == "Contemplation"){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ContemplationNutrition()),
                );
              }
              else if(nutritionResults == "Preparation"){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PreparationNutrition()),
                );
              }
              else if(nutritionResults == "Action"){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ActionNutrition()),
                );
              }
              else if(nutritionResults == "Maintenance"){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MaintenanceNutrition()),
                );
              }
              else if(nutritionResults == "Relapse"){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RelapseNutrition()),
                );
              }
            }
        ),
        Text(
          nutritionResults,
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
    if(sleepResults == "Precontemplation"){
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const PrecontemplationSleep()),
    );
    }
    else if(sleepResults == "Contemplation"){
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const ContemplationSleep()),
    );
    }
    else if(sleepResults == "Preparation"){
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const PreparationSleep()),
    );
    }
    else if(sleepResults == "Action"){
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const ActionSleep()),
    );
    }
    else if(sleepResults == "Maintenance"){
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const MaintenanceSleep()),
    );
    }
    else if(sleepResults == "Relapse"){
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const RelapseSleep()),
    );
    }

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
              if(activityResults == "Precontemplation"){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PrecontemplationActivity()),
                );
              }
              else if(activityResults == "Contemplation"){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ContemplationActivity()),
                );
              }
              else if(activityResults == "Preparation"){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PreparationActivity()),
                );
              }
              else if(activityResults == "Action"){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ActionActivity()),
                );
              }
              else if(activityResults == "Maintenance"){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MaintenanceActivity()),
                );
              }
              else if(activityResults == "Relapse"){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RelapseActivity()),
                );
              }
            }
        ),
        Text(
          activityResults,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        FlatButton(
            child: Text(
              '\nEnvironmental Health:',
              style: TextStyle(fontSize: 25),
            ), //Text

            textColor: Colors.green,
            onPressed: (){
              if(environmentalHealthResults == "Precontemplation"){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PrecontemplationEnvironmentalHealth()),
                );
              }
              else if(environmentalHealthResults == "Contemplation"){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ContemplationEnvironmentalHealth()),
                );
              }
              else if(environmentalHealthResults == "Preparation"){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PreparationEnvironmentalHealth()),
                );
              }
              else if(environmentalHealthResults == "Action"){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ActionEnvironmentalHealth()),
                );
              }
              else if(environmentalHealthResults == "Maintenance"){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MaintenanceEnvironmentalHealth()),
                );
              }
              else if(environmentalHealthResults == "Relapse"){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RelapseEnvironmentalHealth()),
                );
              }
            }
        ),
        Text(
          environmentalHealthResults,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        FlatButton(
            child: Text(
              '\nStress Management:',
              style: TextStyle(fontSize: 25),
            ), //Text

            textColor: Colors.green,
            onPressed: (){
              if(stressResults == "Precontemplation"){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PrecontemplationStress()),
                );
              }
              else if(stressResults == "Contemplation"){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ContemplationStress()),
                );
              }
              else if(stressResults == "Preparation"){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PreparationStress()),
                );
              }
              else if(stressResults == "Action"){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ActionStress()),
                );
              }
              else if(stressResults == "Maintenance"){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MaintenanceStress()),
                );
              }
              else if(stressResults == "Relapse"){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RelapseStress()),
                );
              }
            }
        ),
        Text(
          stressResults,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          child: Text(
            '\n\n\nRestart Quiz!',
            style: TextStyle(fontSize: 20),
          ), //Text
          textColor: Colors.green,
          onPressed: resetHandler,
        ), //FlatButton
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
class PrecontemplationHydration extends StatelessWidget {
  const PrecontemplationHydration({Key? key}) : super(key: key);
  String get hydrationWords{
    String words ="Your results indicate a possible ambivalence with regards to ensuring adequate hydration. Let's work together to get through this, maybe it's time to notice the feelings of thirst & "
        "being quenched. Let's also create a deeper understanding of the importance of hydration. Ready? Set? Let's do this!";
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
                '\nHydration Results',
                style: TextStyle(fontSize: 30),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20,75,20,70),
                child: Text(
                  hydrationWords,
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                  padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                  textStyle:MaterialStateProperty.all(TextStyle(fontSize: 20)),

                ),

                onPressed: () {
                  Navigator.pop(context);
                },

                child: Text(
                  'Results',

                ),
              ),
            ],
          ),
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}
class ContemplationHydration extends StatelessWidget {
  const ContemplationHydration({Key? key}) : super(key: key);
  String get hydrationWords{
    String words ="Your results reveal that you are thinking about increasing and improving your hydration, but you may be hesitant to take the first step. That’s ok. We have all been there! Let’s overcome this obstacle together and see why ensuring adequate hydration is important for your health and well-being!";
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
                '\nHydration Results',
                style: TextStyle(fontSize: 30),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20,95,20,70),
                child: Text(
                  hydrationWords,
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
              ElevatedButton(

                style: ButtonStyle(
                  //buttonColor: Color(0xFF186C58),
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                  padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                  textStyle:MaterialStateProperty.all(TextStyle(fontSize: 20)),

                ),

                onPressed: () {
                  Navigator.pop(context);
                },

                child: Text(
                  'Results',

                ),
              ),
            ],
          ),
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}
class PreparationHydration extends StatelessWidget {
  const PreparationHydration({Key? key}) : super(key: key);
  String get hydrationWords{
    String words ="Your results reveal that you are willing and prepared to embark on your adventure toward staying adequately hydrated. We are ready to provide some support along the way! Let’s find out some tricks and techniques to keep you adequately hydrated!";
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
                '\nHydration Results',
                style: TextStyle(fontSize: 30),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20,85,20,70),
                child: Text(
                  hydrationWords,
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                  padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                  textStyle:MaterialStateProperty.all(TextStyle(fontSize: 20)),

                ),

                onPressed: () {
                  Navigator.pop(context);
                },

                child: Text(
                  'Results',

                ),
              ),
            ],
          ),
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}
class ActionHydration extends StatelessWidget {
  const ActionHydration({Key? key}) : super(key: key);
  String get hydrationWords{
    String words ="Your results reveal that you have successfully begun your journey toward consuming foods and beverages that will keep you adequately hydrated! Of course, temptations and old habits can challenge us from achieving hydration goals, so jump back on the bandwagon when challenges occur! Let’s also stay motivated and find new strategies and activities to help you stay hydrated.";
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
                '\nHydration Results',
                style: TextStyle(fontSize: 30),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20,75,20,70),
                child: Text(
                  hydrationWords,
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                  padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                  textStyle:MaterialStateProperty.all(TextStyle(fontSize: 20)),

                ),

                onPressed: () {
                  Navigator.pop(context);
                },

                child: Text(
                  'Results',

                ),
              ),
            ],
          ),
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}
class MaintenanceHydration extends StatelessWidget {
  const MaintenanceHydration({Key? key}) : super(key: key);
  String get hydrationWords{
    String words ="Your results reveal that you have been on your journey toward achieving adequate hydration for quite some time now! You are committed, focused and have stayed your course thus far! Let’s continue your journey together and find ways to keep you inspired, motivated and quenched!"
    ;
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
                '\nHydration Results',
                style: TextStyle(fontSize: 30),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20,75,20,70),
                child: Text(
                  hydrationWords,
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                  padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                  textStyle:MaterialStateProperty.all(TextStyle(fontSize: 20)),

                ),

                onPressed: () {
                  Navigator.pop(context);
                },

                child: Text(
                  'Results',

                ),
              ),
            ],
          ),
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}
class RelapseHydration extends StatelessWidget {
  const RelapseHydration({Key? key}) : super(key: key);
  String get hydrationWords{
    String words ="Your results reveal that while on your journey toward adequate hydration, you may have hit a few bumps in the road. That happens, and it’s ok! We have all strayed at some point. Let’s work together to stay strong and find our way back toward drinking and eating food sources that will keep you nourished and hydrated! You can do it!";
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
                '\nHydration Results',
                style: TextStyle(fontSize: 30),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20,75,20,70),
                child: Text(
                  hydrationWords,
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                  padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                  textStyle:MaterialStateProperty.all(TextStyle(fontSize: 20)),

                ),

                onPressed: () {
                  Navigator.pop(context);
                },

                child: Text(
                  'Results',

                ),
              ),
            ],
          ),
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}
class PrecontemplationNutrition extends StatelessWidget {
  const PrecontemplationNutrition({Key? key}) : super(key: key);
  String get nutritionWords{
    String words ="Your results show that we may have a unique opportunity here to seize the day and learn a bit more about adequate nutrition and the roles it plays to support overall health. Let’s start by looking at the positive impact a nutritious, balanced diet has on weight management, disease prevention, and overall well-being. Your heart will thank you!";
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
                '\nNutrition Results',
                style: TextStyle(fontSize: 30),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20,75,20,70),
                child: Text(
                  nutritionWords,
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                  padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                  textStyle:MaterialStateProperty.all(TextStyle(fontSize: 20)),

                ),

                onPressed: () {
                  Navigator.pop(context);
                },

                child: Text(
                  'Results',

                ),
              ),
            ],
          ),
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}
class ContemplationNutrition extends StatelessWidget {
  const ContemplationNutrition({Key? key}) : super(key: key);
  String get nutritionWords{
    String words ="Your results indicate that you are actively considering incorporating more whole foods (beans, nuts, whole grains, fruits and vegetables) into your diet, but that you may not be entirely confident or comfortable doing this.  Let’s remove some of those barriers while we support your road toward optimal health! Your brain will thank you!";
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
                '\nNutrition Results',
                style: TextStyle(fontSize: 30),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20,75,20,70),
                child: Text(
                  nutritionWords,
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                  padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                  textStyle:MaterialStateProperty.all(TextStyle(fontSize: 20)),

                ),

                onPressed: () {
                  Navigator.pop(context);
                },

                child: Text(
                  'Results',

                ),
              ),
            ],
          ),
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}
class PreparationNutrition extends StatelessWidget {
  const PreparationNutrition({Key? key}) : super(key: key);
  String get nutritionWords{
    String words ="Your results show that you have made the decision to make a lifestyle change to incorporate more fruits and vegetables into your diet, along with beans, legumes, nuts, and while grains.  Let’s keep up that forward momentum!  Your blood vessels will thank you!";
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
                '\nNutrition Results',
                style: TextStyle(fontSize: 30),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20,95,20,70),
                child: Text(
                  nutritionWords,
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                  padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                  textStyle:MaterialStateProperty.all(TextStyle(fontSize: 20)),

                ),

                onPressed: () {
                  Navigator.pop(context);
                },

                child: Text(
                  'Results',

                ),
              ),
            ],
          ),
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}
class ActionNutrition extends StatelessWidget {
  const ActionNutrition({Key? key}) : super(key: key);
  String get nutritionWords{
    String words ="Congratulations!  Your results show that you have a solid understanding of the importance of nutritious eating, you’ve made preparations to incorporate more whole foods into your diet, and you are officially on your journey to better health!  Your organs will thank you!";
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
                '\nNutrition Results',
                style: TextStyle(fontSize: 30),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20,85,20,70),
                child: Text(
                  nutritionWords,
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                  padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                  textStyle:MaterialStateProperty.all(TextStyle(fontSize: 20)),

                ),

                onPressed: () {
                  Navigator.pop(context);
                },

                child: Text(
                  'Results',

                ),
              ),
            ],
          ),
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}
class MaintenanceNutrition extends StatelessWidget {
  const MaintenanceNutrition({Key? key}) : super(key: key);
  String get nutritionWords{
    String words ="Your results show that you continue to improve your eating habits to build a healthier dietary routine. Let’s learn how to bounce back when triggers and temptations throw us off track!  We’re here to share some ways to resist temptations and reframe thought patterns that may throw one off course. Onward!";
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
                '\nNutrition Results',
                style: TextStyle(fontSize: 30),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20,75,20,70),
                child: Text(
                  nutritionWords,
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                  padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                  textStyle:MaterialStateProperty.all(TextStyle(fontSize: 20)),

                ),

                onPressed: () {
                  Navigator.pop(context);
                },

                child: Text(
                  'Results',

                ),
              ),
            ],
          ),
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}
class RelapseNutrition extends StatelessWidget {
  const RelapseNutrition({Key? key}) : super(key: key);
  String get nutritionWords{
    String words ="Uh-oh… Looks like it could be time to jump back in the saddle!  This happens to all of us and is completely normal. The ability to pivot when needed is key. We’re here to help you climb back up and enjoy healthy eating again. Let’s go! Your entire body will thank you!";
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
                '\nNutrition Results',
                style: TextStyle(fontSize: 30),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20,75,20,70),
                child: Text(
                  nutritionWords,
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                  padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                  textStyle:MaterialStateProperty.all(TextStyle(fontSize: 20)),

                ),

                onPressed: () {
                  Navigator.pop(context);
                },

                child: Text(
                  'Results',

                ),
              ),
            ],
          ),
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}
class PrecontemplationSleep extends StatelessWidget {
  const PrecontemplationSleep({Key? key}) : super(key: key);
  String get sleepWords{
    String words ="Your results indicate a possible ambivalence with regards to getting enough quality sleep. Let’s work together to get through this, begin to experience better sleep more often, and create a deeper understanding of the importance of sleep. Ready? Set? Let's do this";
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
                '\nSleep Results',
                style: TextStyle(fontSize: 30),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20,75,20,70),
                child: Text(
                  sleepWords,
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                  padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                  textStyle:MaterialStateProperty.all(TextStyle(fontSize: 20)),

                ),

                onPressed: () {
                  Navigator.pop(context);
                },

                child: Text(
                  'Results',

                ),
              ),
            ],
          ),
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}
class ContemplationSleep extends StatelessWidget {
  const ContemplationSleep({Key? key}) : super(key: key);
  String get sleepWords{
    String words ="Your results reveal that you are thinking about increasing and improving your sleep, but you may be hesitant to take the first step. That’s understandable and ok! We have all been there! Let’s overcome this obstacle together and see why ensuring adequate and quality sleep is important for your health and well-being. Let’s go for it! ";
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
                '\nSleep Results',
                style: TextStyle(fontSize: 30),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20,85,20,70),
                child: Text(
                  sleepWords,
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                  padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                  textStyle:MaterialStateProperty.all(TextStyle(fontSize: 20)),

                ),

                onPressed: () {
                  Navigator.pop(context);
                },

                child: Text(
                  'Results',

                ),
              ),
            ],
          ),
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}
class PreparationSleep extends StatelessWidget {
  const PreparationSleep({Key? key}) : super(key: key);
  String get sleepWords{
    String words ="Your results reveal that you are willing and prepared to embark on your adventure toward improving the quality and quantity of your sleep. We are here to support you in these endeavors when you’re ready. Let’s learn new and revisit old tricks and techniques to keep you adequately rested!";
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
                '\nSleep Results',
                style: TextStyle(fontSize: 30),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20,80,20,70),
                child: Text(
                  sleepWords,
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                  padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                  textStyle:MaterialStateProperty.all(TextStyle(fontSize: 20)),

                ),

                onPressed: () {
                  Navigator.pop(context);
                },

                child: Text(
                  'Results',

                ),
              ),
            ],
          ),
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}
class ActionSleep extends StatelessWidget {
  const ActionSleep({Key? key}) : super(key: key);
  String get sleepWords{
    String words ="Your results reveal that you have successfully begun your journey toward practicing healthy habits that will keep you well rested, support optimal health, and give you energy! Remember, temptations and old habits can challenge us from time to time. Let’s work together to achieve your sleep goals! Let’s stay motivated and find new strategies and activities to help you stay on the course of improving your sleep.";
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
                '\nSleep Results',
                style: TextStyle(fontSize: 30),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20,70,20,70),
                child: Text(
                  sleepWords,
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                  padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                  textStyle:MaterialStateProperty.all(TextStyle(fontSize: 20)),

                ),

                onPressed: () {
                  Navigator.pop(context);
                },

                child: Text(
                  'Results',

                ),
              ),
            ],
          ),
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}
class MaintenanceSleep extends StatelessWidget {
  const MaintenanceSleep({Key? key}) : super(key: key);
  String get sleepWords{
    String words ="Your results reveal that you have been on your journey toward achieving adequate sleep for quite some time now! You are committed, focused and have stayed your course thus far! Let’s continue your journey together and find ways to keep you inspired, motivated and well rested! ";
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
                '\nSleep Results',
                style: TextStyle(fontSize: 30),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20,85,20,70),
                child: Text(
                  sleepWords,
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                  padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                  textStyle:MaterialStateProperty.all(TextStyle(fontSize: 20)),

                ),

                onPressed: () {
                  Navigator.pop(context);
                },

                child: Text(
                  'Results',

                ),
              ),
            ],
          ),
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}
class RelapseSleep extends StatelessWidget {
  const RelapseSleep({Key? key}) : super(key: key);
  String get sleepWords{
    String words ="Your results reveal that while on your journey toward adequate sleep, you may have hit a few bumps in the road. That’s absolutely ok. We have all strayed at some point; the secret sauce is allowing oneself to bounce back. Let’s stay strong and find our way back toward practicing healthy sleep habits that will give yourself optimal rest and more energy throughout the day! You can do it!";
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
                '\nSleep Results',
                style: TextStyle(fontSize: 30),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20,75,20,70),
                child: Text(
                  sleepWords,
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                  padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                  textStyle:MaterialStateProperty.all(TextStyle(fontSize: 20)),

                ),

                onPressed: () {
                  Navigator.pop(context);
                },

                child: Text(
                  'Results',

                ),
              ),
            ],
          ),
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}
class PrecontemplationActivity extends StatelessWidget {
  const PrecontemplationActivity({Key? key}) : super(key: key);

  String get activityWords {
    String words = "Your results show that we can learn more surrounding the vital role exercise plays in overall health, including sleep, stress management, and more.  Let’s work together to discover some of the reasons why physical activity is important and how we can put this into action. Ready, set, go!";
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
                '\nPhyscial Activity Results',
                style: TextStyle(fontSize: 30),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 85, 20, 70),
                child: Text(
                  activityWords,
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.green),
                  padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                  textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20)),

                ),

                onPressed: () {
                  Navigator.pop(context);
                },

                child: Text(
                  'Results',

                ),
              ),
            ],
          ),
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}
class ContemplationActivity extends StatelessWidget {
  const ContemplationActivity({Key? key}) : super(key: key);

  String get activityWords {
    String words = "Your results indicate that you have an awareness of the importance of exercise and that you’re considering taking steps toward incorporating this into your daily routine. We’re here to support you and will work together to the path of more physical activity.  Your heart, body, and mind will thank you for this!";
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
                '\nPhyscial Activity Results',
                style: TextStyle(fontSize: 30),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 75, 20, 70),
                child: Text(
                  activityWords,
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.green),
                  padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                  textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20)),

                ),

                onPressed: () {
                  Navigator.pop(context);
                },

                child: Text(
                  'Results',

                ),
              ),
            ],
          ),
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}
class PreparationActivity extends StatelessWidget {
  const PreparationActivity({Key? key}) : super(key: key);

  String get activityWords {
    String words = "Your results show that you have begun preparing to take the first steps toward integrating physical activity into your lifestyle! Well done! Let’s look at some easy, fun, and inexpensive ways to fit movement into your daily routine.  Your lungs (and more) will thank you for it!";
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
                '\nPhyscial Activity Results',
                style: TextStyle(fontSize: 30),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 85, 20, 70),
                child: Text(
                  activityWords,
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.green),
                  padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                  textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20)),

                ),

                onPressed: () {
                  Navigator.pop(context);
                },

                child: Text(
                  'Results',

                ),
              ),
            ],
          ),
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}
class ActionActivity extends StatelessWidget {
  const ActionActivity({Key? key}) : super(key: key);

  String get activityWords {
    String words = "Congratulations!  Your results show that you have successfully embarked on your exercise journey and that you have taken that vital first step (which, for many, is often the hardest).  Let’s go a little deeper to identify and explore those motivations that brought you to this point and reinforce them with new strategies to help keep you on track.  Your bones will thank you for it!";
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
                '\nPhyscial Activity Results',
                style: TextStyle(fontSize: 30),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 80, 20, 70),
                child: Text(
                  activityWords,
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.green),
                  padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                  textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20)),

                ),

                onPressed: () {
                  Navigator.pop(context);
                },

                child: Text(
                  'Results',

                ),
              ),
            ],
          ),
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}
class MaintenanceActivity extends StatelessWidget {
  const MaintenanceActivity({Key? key}) : super(key: key);

  String get activityWords {
    String words = "Your results show that you have the commitment, drive, and motivation to see your exercise journey through!  Let’s continue to find ways to integrate movement into your life, and perhaps even increase your activity.  Your muscles will thank you for it!";
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
                '\nPhyscial Activity Results',
                style: TextStyle(fontSize: 30),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 85, 20, 70),
                child: Text(
                  activityWords,
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.green),
                  padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                  textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20)),

                ),

                onPressed: () {
                  Navigator.pop(context);
                },

                child: Text(
                  'Results',

                ),
              ),
            ],
          ),
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}
class RelapseActivity extends StatelessWidget {
  const RelapseActivity({Key? key}) : super(key: key);

  String get activityWords {
    String words = "Uh-oh!  Your results show that you may be falling off the exercise wagon.  No worries, this happens to the best of us and we’re here to help you bounce back!  Let’s begin by looking at some ways to add a little spice by “mixing up” your exercise routine and revisit those motivations that underpin your effort to become more physically active.  Your body, your mind, and your spirit will thank you for climbing back on that wagon… it’s all up to you!";
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
                '\nPhyscial Activity Results',
                style: TextStyle(fontSize: 30),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 65, 20, 55),
                child: Text(
                  activityWords,
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.green),
                  padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                  textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20)),

                ),

                onPressed: () {
                  Navigator.pop(context);
                },

                child: Text(
                  'Results',

                ),
              ),
            ],
          ),
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}
class PrecontemplationEnvironmentalHealth extends StatelessWidget {
  const PrecontemplationEnvironmentalHealth({Key? key}) : super(key: key);
  String get environmentalHealthWords{
    String words ="Your results reveal that you are starting on a brand new journey toward building a healthier personal environment! Let’s work together and learn the tricks to having a healthy relationship with social media and how to strengthen ourselves against surrounding distractions! Ready? Bon Voyage!";
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
                '\nEnvironmental Health \nResults',
                style: TextStyle(fontSize: 30),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 75, 20, 70),
                child: Text(
                  environmentalHealthWords,
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.green),
                  padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                  textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20)),

                ),

                onPressed: () {
                  Navigator.pop(context);
                },

                child: Text(
                  'Results',

                ),
              ),
            ],
          ),
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}
class ContemplationEnvironmentalHealth extends StatelessWidget {
  const ContemplationEnvironmentalHealth({Key? key}) : super(key: key);
  String get environmentalHealthWords{
    String words ="Your results reveal you are thinking about going on a new adventure toward building a healthier personal environment, but you may be hesitant to take the first step. That’s ok. We have all been there! Let’s overcome this obstacle together and see why having a healthy relationship with social media and strengthening ourselves against surrounding distractions is a trip worth taking!";
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
                '\nEnvironmental Health \nResults',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 65, 20, 50),
                child: Text(
                  environmentalHealthWords,
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.green),
                  padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                  textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20)),

                ),

                onPressed: () {
                  Navigator.pop(context);
                },

                child: Text(
                  'Results',

                ),
              ),
            ],
          ),
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}
class PreparationEnvironmentalHealth extends StatelessWidget {
  const PreparationEnvironmentalHealth({Key? key}) : super(key: key);
  String get environmentalHealthWords{
    String words ="Your results reveal that you are willing and prepared to embark on your adventure toward building a healthier personal environment, but you will need to find and pack some extra tools for your journey! Let’s find out some tricks and techniques on having healthy social media engagement and strength to overcome surrounding distractions that will keep you well-equipped for your trip!";
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
                '\nEnvironmental Health \nResults',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 65, 20, 70),
                child: Text(
                  environmentalHealthWords,
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.green),
                  padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                  textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20)),

                ),

                onPressed: () {
                  Navigator.pop(context);
                },

                child: Text(
                  'Results',

                ),
              ),
            ],
          ),
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}
class ActionEnvironmentalHealth extends StatelessWidget {
  const ActionEnvironmentalHealth({Key? key}) : super(key: key);
  String get environmentalHealthWords{
    String words ="Your results reveal that you have successfully begun your journey toward building a healthy personal environment and are starting to explore this new terrain! But BEWARE! Dangers like temptations and old habits can lurk in any corner and stray you off your course of wellness! Let’s fight to continue forward and find new strategies and activities to help you stay on course on handling social media and developing the strength to overcome surrounding distractions! Who knows? You may find a new comrade along the way!";
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
                '\nEnvironmental Health \nResults',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(15, 15, 15, 35),
                child: Text(
                  environmentalHealthWords,
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.green),
                  padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                  textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20)),

                ),

                onPressed: () {
                  Navigator.pop(context);
                },

                child: Text(
                  'Results',

                ),
              ),
            ],
          ),
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}
class MaintenanceEnvironmentalHealth extends StatelessWidget {
  const MaintenanceEnvironmentalHealth({Key? key}) : super(key: key);
  String get environmentalHealthWords{
    String words ="Your results reveal that you are a well-versed explorer and have been on your journey toward a healthy personal environment for quite some time! It sounds like you are committed, focused and stayed your course thus far! But still stay alert, my friend! No explorer is immune to distraction and temptations, which may eagerly wait to stray you off your course of wellness! Let’s continue this journey together and remain inspired to persevere!";
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
              // Padding(
              //   padding: EdgeInsets.fromLTRB(45, 125, 20, 70),
              //     child:
              Text(
                '\nEnvironmental Health \nResults',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30),
              ),
              // ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 45, 20, 50),
                child: Text(
                  environmentalHealthWords,
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.green),
                  padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                  textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20)),

                ),

                onPressed: () {
                  Navigator.pop(context);
                },

                child: Text(
                  'Results',

                ),
              ),
            ],
          ),
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}
class RelapseEnvironmentalHealth extends StatelessWidget {
  const RelapseEnvironmentalHealth({Key? key}) : super(key: key);
  String get environmentalHealthWords{
    String words ="Your results reveal that while on your journey toward a healthy personal environment, you may have misplaced your map and strayed from your course. That’s ok. We have all done this from time to time. Let’s stay strong and find our way back toward a distraction free environment and positive social media engagement! Together, let’s create a new map and discover what distractions and temptations took us off course so that we can identify those traps and be prepared to overcome them in the future! We know you can do it!";
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
                '\nEnvironmental Health \nResults',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(15, 25, 15, 30),
                child: Text(
                  environmentalHealthWords,
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.green),
                  padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                  textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20)),

                ),

                onPressed: () {
                  Navigator.pop(context);
                },

                child: Text(
                  'Results',

                ),
              ),
            ],
          ),
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}
class PrecontemplationStress extends StatelessWidget {
  const PrecontemplationStress({Key? key}) : super(key: key);
  String get stressWords{
    String words ="Your results reveal that you are starting on a brand new journey toward managing stress. This takes courage! Let’s work together and learn about how mindfulness techniques and developing coping strategies is a trip worth taking. Ready? Bon Voyage!";
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
                '\nStress Management \nResults',
                style: TextStyle(fontSize: 30),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 75, 20, 70),
                child: Text(
                  stressWords,
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.green),
                  padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                  textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20)),

                ),

                onPressed: () {
                  Navigator.pop(context);
                },

                child: Text(
                  'Results',

                ),
              ),
            ],
          ),
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}
class ContemplationStress extends StatelessWidget {
  const ContemplationStress({Key? key}) : super(key: key);
  String get stressWords{
    String words ="Your results reveal that you are thinking about going on a new adventure toward managing stress, and you may be hesitant to take the first step. That’s understandable, and we know you got this! We have all been there! Let’s overcome this obstacle together and see why mindfulness techniques and developing coping strategies is a trip worth taking!";
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
                '\nStress Management \nResults',
                style: TextStyle(fontSize: 30),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 75, 20, 70),
                child: Text(
                  stressWords,
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.green),
                  padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                  textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20)),

                ),

                onPressed: () {
                  Navigator.pop(context);
                },

                child: Text(
                  'Results',

                ),
              ),
            ],
          ),
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}
class PreparationStress extends StatelessWidget {
  const PreparationStress({Key? key}) : super(key: key);
  String get stressWords{
    String words ="Your results reveal that you are willing and prepared to embark on your adventure toward managing stress, and you may need to find and pack some extra tools for your journey. Let’s find out some tricks and techniques for mindfulness and coping strategies that will keep you well-equipped for your trip! Onward!";
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
                '\nStress Management \nResults',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 75, 20, 70),
                child: Text(
                  stressWords,
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.green),
                  padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                  textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20)),

                ),

                onPressed: () {
                  Navigator.pop(context);
                },

                child: Text(
                  'Results',

                ),
              ),
            ],
          ),
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}
class ActionStress extends StatelessWidget {
  const ActionStress({Key? key}) : super(key: key);
  String get stressWords{
    String words ="Your results reveal that you have successfully begun your journey toward managing stress and are starting to explore this new terrain! But stay alert, my friend! Dangers like temptations and old habits can lurk in any corner and stray us off our course of wellness! Let’s continue forward and find new strategies and activities to help you stay on the stress management course! Who knows? You may find a new comrade along the way!";
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
                '\nStress Management \nResults',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 45, 20, 50),
                child: Text(
                  stressWords,
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.green),
                  padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                  textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20)),

                ),

                onPressed: () {
                  Navigator.pop(context);
                },

                child: Text(
                  'Results',

                ),
              ),
            ],
          ),
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}
class MaintenanceStress extends StatelessWidget {
  const MaintenanceStress({Key? key}) : super(key: key);
  String get stressWords{
    String words ="Your results reveal that you are a well-versed explorer and have been on your journey toward stress management for quite some time! It sounds like you are committed, focused and stayed your course thus far! But still stay alert, my friend! No explorer is immune to distraction and temptations, and they eagerly wait to stray you off your course of wellness! Let’s continue this journey together and keep you inspired to continue your healthy journey!";
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
                '\nStress Management \nResults',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 40, 20, 50),
                child: Text(
                  stressWords,
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.green),
                  padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                  textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20)),

                ),

                onPressed: () {
                  Navigator.pop(context);
                },

                child: Text(
                  'Results',

                ),
              ),
            ],
          ),
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}
class RelapseStress extends StatelessWidget {
  const RelapseStress({Key? key}) : super(key: key);
  String get stressWords{
    String words ="Your results reveal that while on your journey toward managing stress, you may have misplaced your map and strayed from your course. That’s ok. We have all strayed from time to time. Let’s stay strong and find our way back to the course! Together, let’s make a new map and learn what distractions and temptations took us off course during our earlier journey(s), so that we can see those traps and be prepared to overcome them in the future! We know you can do it!";
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
                '\nStress Management \nResults',
                style: TextStyle(fontSize: 30),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(15, 45, 15, 50),
                child: Text(
                  stressWords,
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.green),
                  padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                  textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20)),

                ),

                onPressed: () {
                  Navigator.pop(context);
                },

                child: Text(
                  'Results',

                ),
              ),
            ],
          ),
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}