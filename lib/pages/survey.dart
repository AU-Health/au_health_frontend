import 'package:aucares/widgets/survey/quiz.dart';
import 'package:aucares/widgets/survey/result.dart';
import 'package:flutter/material.dart';

class SurveyPage extends StatefulWidget {
  const SurveyPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SurveyPageState();
  }
}

class _SurveyPageState extends State<SurveyPage> {
  final _questions = const [
    {
      'questionText': 'Welcome to the initial survey',
      'answers': [
        {'text': 'Click here to start', 'score': -2, 'yesFlag': false},
      ],
    },
    {
      'questionText': 'Q1. On average, how many hours do you sleep per night?',
      'answers': [
        {'text': '0-3', 'score': -2, 'yesFlag': false},
        {'text': '3-5', 'score': -2, 'yesFlag': false},
        {'text': '5-8', 'score': -2, 'yesFlag': false},
        {'text': '8+', 'score': -2, 'yesFlag': false},
      ],
    },
    {
      'questionText': 'Q2. How many times a day do you eat a handful size serving of fruits? (Note: two handfuls would count as two times)',
      'answers': [
        {'text': '0-1', 'score': -2, 'yesFlag': false},
        {'text': '2-3', 'score': -2, 'yesFlag': false},
        {'text': '4-5', 'score': -2, 'yesFlag': false},
        {'text': '5+', 'score': -2, 'yesFlag': false},
      ],
    },
    {
      'questionText': ' Q3. How many times a day do you eat a handful size serving of vegetables? (Note: two handfuls would count as two times)',
      'answers': [
        {'text': '0-1', 'score': -2, 'yesFlag': false},
        {'text': '2-3', 'score': -2, 'yesFlag': false},
        {'text': '4-5', 'score': -2, 'yesFlag': false},
        {'text': '5+', 'score': -2, 'yesFlag': false},
      ],
    },
    {
      'questionText': 'Q4. On average, how many 8oz glasses of water do you consume per day? (Note: an average size water bottle has 16oz of water and would therefore count as two 8oz glasses)',
      'answers': [
        {'text': '0-1', 'score': -2, 'yesFlag': false},
        {'text': '2-3', 'score': -2, 'yesFlag': false},
        {'text': '4-5', 'score': -2, 'yesFlag': false},
        {'text': '5+', 'score': -2, 'yesFlag': false},
      ],
    },
    {
      'questionText':
      'Q5. How many hours a week would you say that you exercise at an intensity where it becomes slightly difficult to carry on a conversation?',
      'answers': [
        {'text': '0-1 hour', 'score': -2, 'yesFlag': false},
        {'text': '2-3 hours', 'score': -2, 'yesFlag': false},
        {'text': '4-5 hours', 'score': -2, 'yesFlag': false},
        {'text': '5+ hours', 'score': -2, 'yesFlag': false},
      ],
    },
    {
      'questionText':
      'Please answer these specific questions to the best of your ability',//more specific
      'answers': [
        {'text': 'Next', 'score': 0, 'yesFlag': false},
      ],
    },
    {
      'questionText':
      'Hydration: What are your honest feelings on the topic of hydration right now?',
      'answers': [
        {'text': 'I do not bother with staying hydrated nor am I interested in learning more about adequate hydration and water consumption.'
          , 'score': 1, 'yesFlag': false},
        {'text': 'I have been interested in learning more about or improving the quality of  my hydration.', 'score': 2, 'yesFlag': false},
        {'text': 'I have been thinking about ways to achieve adequate hydration and improve my water consumption.', 'score': 3, 'yesFlag': false},
        {'text': 'I have started improving my hydration and water consumption in the last six months.', 'score': 4, 'yesFlag': false},
        {'text': 'I have been drinking adequate amounts of water and plan to continue to do so.', 'score': 5, 'yesFlag': false},
        {'text': 'I was working hard to ensure adequate hydration and water consumption, but have not been prioritizing it lately.', 'score': 6, 'yesFlag': false},
      ],
    },
    {
      'questionText':
      'Hydration: Within the past 6 months, how often have you actively tried to stay hydrated throughout the day?',
      'answers': [
        {'text': 'Rarely'
          , 'score': 1, 'yesFlag': false},
        {'text': 'Once a month', 'score': 2, 'yesFlag': false},
        {'text': 'Multiple times a week', 'score': 3, 'yesFlag': false},
        {'text': 'Nearly every day', 'score': 4, 'yesFlag': false},
        {'text': 'Every day for the past 6 months+', 'score': 5, 'yesFlag': false},
        {'text': 'This used to affect me, but no longer does', 'score': 6, 'yesFlag': false},
      ],
    },
    {
      'questionText':
      'Fruits and Vegetables: What are your honest feelings on the topic of fruit and vegetable consumption right now?',
      'answers': [
        {'text': 'I am not interested in eating more fruits and vegetables right now.'
          , 'score': 1, 'yesFlag': false},
        {'text': 'I have been thinking about eating more fruits and vegetables.', 'score': 2, 'yesFlag': false},
        {'text': 'I have been thinking about specific ways to eat more fruits and vegetables.', 'score': 3, 'yesFlag': false},
        {'text': 'I have started eating more fruits and vegetables in the last six months.', 'score': 4, 'yesFlag': false},
        {'text': 'I have been eating adequate amounts of fruits and vegetables and plan to continue to do so.', 'score': 5, 'yesFlag': false},
        {'text': 'I was working hard to ensure I was eating adequate amounts of fruits and vegetables, but have not been prioritizing it lately.', 'score': 6, 'yesFlag': false},
      ],
    },
    {
      'questionText':
      'Fruits and Vegetables: Within the past 6 months, how often have you actively tried to consume fruits and vegetables everyday?',
      'answers': [
        {'text': 'Rarely'
          , 'score': 1, 'yesFlag': false},
        {'text': 'Once a month', 'score': 2, 'yesFlag': false},
        {'text': 'Multiple times a week', 'score': 3, 'yesFlag': false},
        {'text': 'Nearly every day', 'score': 4, 'yesFlag': false},
        {'text': 'Every day for the past 6 months+', 'score': 5, 'yesFlag': false},
        {'text': 'This used to affect me, but no longer does', 'score': 6, 'yesFlag': false},
      ],
    },
    {
      'questionText':
      'Sleep: What are your honest feelings on the topic of sleep right now?',
      'answers': [
        {'text': 'I am not interested in improving my sleep quality or the amount of sleep that I get.'
          , 'score': 1, 'yesFlag': false},
        {'text': 'I have been thinking about ways to improve the amount of sleep that I get.', 'score': 2, 'yesFlag': false},
        {'text': 'I have been thinking about specific ways to improve the quality and amount of sleep that I get.'
          , 'score': 3, 'yesFlag': false},
        {'text': 'I have started improving the quality of my sleep and getting more sleep within the past 6 months.', 'score': 4, 'yesFlag': false},
        {'text': 'I have been getting good quality and good amounts of sleep for over 6 months.', 'score': 5, 'yesFlag': false},
        {'text': 'I was getting good quality and good amounts of sleep, but have not been prioritizing it lately.', 'score': 6, 'yesFlag': false},
      ],
    },
    {
      'questionText':
      'Sleep: Within the past 6 months, how often have you actively tried to be well rested?',
      'answers': [
        {'text': 'Rarely'
          , 'score': 1, 'yesFlag': false},
        {'text': 'Once a month', 'score': 2, 'yesFlag': false},
        {'text': 'Multiple times a week', 'score': 3, 'yesFlag': false},
        {'text': 'Nearly every day', 'score': 4, 'yesFlag': false},
        {'text': 'Every day for the past 6 months+', 'score': 5, 'yesFlag': false},
        {'text': 'This used to affect me, but no longer does', 'score': 6, 'yesFlag': false},
      ],
    },
    {
      'questionText':
      'Physical Activity: What are your honest feelings on the topic of physical activity right now?',
      'answers': [
        {'text': 'I am not interested in improving my physical activity or the amount of physical activity that I do.'
          , 'score': 1, 'yesFlag': false},
        {'text': 'I have been thinking about ways to improve my physical activity.', 'score': 2, 'yesFlag': false},
        {'text': 'I have been thinking about specific ways to improve and increase my physical activity.'
          , 'score': 3, 'yesFlag': false},
        {'text': 'I have started improving my physical activity in the last six months.', 'score': 4, 'yesFlag': false},
        {'text': 'I have been exercising an adequate amount and plan to continue to do so.', 'score': 5, 'yesFlag': false},
        {'text': 'I was exercising hard to ensure good physical activity, but have not been prioritizing it lately.', 'score': 6, 'yesFlag': false},
      ],
    },
    {
      'questionText':
      'Physical Activity: Within the past 6 months, how often have you actively tried to be active?',
      'answers': [
        {'text': 'Rarely'
          , 'score': 1, 'yesFlag': false},
        {'text': 'Once a month', 'score': 2, 'yesFlag': false},
        {'text': 'Multiple times a week', 'score': 3, 'yesFlag': false},
        {'text': 'Nearly every day', 'score': 4, 'yesFlag': false},
        {'text': 'Every day for the past 6 months+', 'score': 5, 'yesFlag': false},
        {'text': 'This used to affect me, but no longer does', 'score': 6, 'yesFlag': false},
      ],
    },
    {
      'questionText':
      'Emotional: What are your honest feelings on the topic of mental health right now?',
      'answers': [
        {'text': 'I am not interested in improving my mental health.'
          , 'score': 1, 'yesFlag': false},
        {'text': 'I have been thinking about ways to improve my mental health.', 'score': 2, 'yesFlag': false},
        {'text': 'I have been thinking about specific ways to improve my mental health.'
          , 'score': 3, 'yesFlag': false},
        {'text': 'I have started improving my mental health in the last six months.', 'score': 4, 'yesFlag': false},
        {'text': 'I have been improving my mental health an adequate amount and plan to continue to do so.', 'score': 5, 'yesFlag': false},
        {'text': 'I was improving my mental health, but have not been prioritizing it lately.', 'score': 6, 'yesFlag': false},
      ],
    },
    {
      'questionText':
      'Emotional: Within the past 6 months, how often have you actively tried to stay emotionally healthy?',
      'answers': [
        {'text': 'Rarely'
          , 'score': 1, 'yesFlag': false},
        {'text': 'Once a month', 'score': 2, 'yesFlag': false},
        {'text': 'Multiple times a week', 'score': 3, 'yesFlag': false},
        {'text': 'Nearly every day', 'score': 4, 'yesFlag': false},
        {'text': 'Every day for the past 6 months+', 'score': 5, 'yesFlag': false},
        {'text': 'This used to affect me, but no longer does', 'score': 6, 'yesFlag': false},
      ],
    },
  ];


  var _questionIndex = 0;
  var _totalScore = 0;
  var yesFlag = false;
  var scoreArray = List.filled(30,0);

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
      scoreArray = List.filled(30,0);
    });
  }

  void _answerQuestion(int score, bool yesFlag) {
    _totalScore += score;
    scoreArray[_questionIndex] = score;

    setState(() {
        _questionIndex = _questionIndex + 1;
    });
    debugPrint(_questionIndex.toString());
    debugPrint(yesFlag.toString());
    if (_questionIndex < _questions.length) {
      debugPrint('We have more questions!');
    } else {
      debugPrint('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AU Cares'),
        backgroundColor: const Color(0xFF186C58),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              ) //Quiz
            : Result(resultScore: _totalScore, resetHandler: _resetQuiz),
      ), //Padding
    ); //MaterialApp
  }
}
