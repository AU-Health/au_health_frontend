import 'package:aucares/widgets/survey/quiz.dart';
import 'package:aucares/widgets/survey/result.dart';
import 'package:flutter/material.dart';

class Survey extends StatefulWidget {
  const Survey({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SurveyState();
  }
}

class _SurveyState extends State<Survey> {
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
        {'text': '5-8', 'score': 10, 'yesFlag': false},
        {'text': '8+', 'score': -2, 'yesFlag': false},
      ],
    },
    {
      'questionText':
          'Q2. How many times a day do you eat a handful size serving of fruits? (Note: two handfuls would count as two times)',
      'answers': [
        {'text': '0-1', 'score': -2, 'yesFlag': false},
        {'text': '2-3', 'score': -2, 'yesFlag': false},
        {'text': '4-5', 'score': -2, 'yesFlag': false},
        {'text': '5+', 'score': -2, 'yesFlag': false},
      ],
    },
    {
      'questionText':
          ' Q3. How many times a day do you eat a handful size serving of vegetables? (Note: two handfuls would count as two times)',
      'answers': [
        {'text': '0-1', 'score': -2, 'yesFlag': false},
        {'text': '2-3', 'score': 10, 'yesFlag': false},
        {'text': '4-5', 'score': -2, 'yesFlag': false},
        {'text': '5+', 'score': -2, 'yesFlag': false},
      ],
    },
    {
      'questionText':
          'Q4. On average, how many 8oz glasses of water do you consume per day? (Note: an average size water bottle has 16oz of water and would therefore count as two 8oz glasses)',
      'answers': [
        {'text': '0-1', 'score': 10, 'yesFlag': false},
        {'text': '2-3', 'score': -2, 'yesFlag': false},
        {'text': '4-5', 'score': -2, 'yesFlag': false},
        {'text': '5+', 'score': -2, 'yesFlag': false},
      ],
    },
    {
      'questionText':
          'Q5. How many hours a week would you say that you exercise at an intensity where it becomes slightly difficult to carry on a conversation?',
      'answers': [
        {'text': '0-1 hour', 'score': 10, 'yesFlag': false},
        {'text': '2-3 hours', 'score': -2, 'yesFlag': false},
        {'text': '4-5 hours', 'score': -2, 'yesFlag': false},
        {'text': '5+ hours', 'score': -2, 'yesFlag': false},
      ],
    },
    {
      'questionText':
          'Please answer these specific questions to the best of your ability', //more specific
      'answers': [
        {'text': 'Next', 'score': 0, 'yesFlag': false},
      ],
    },
    {
      'questionText':
          'Hydration: What are your honest feelings on the topic of hydration right now?',
      'answers': [
        {
          'text':
              'I do not bother with staying hydrated nor am I interested in learning more about adequate hydration and water consumption.',
          'score': 10,
          'yesFlag': false
        },
        {
          'text':
              'I have been interested in learning more about or improving the quality of  my hydration.',
          'score': -2,
          'yesFlag': false
        },
        {
          'text':
              'I have been thinking about ways to achieve adequate hydration and improve my water consumption.',
          'score': -2,
          'yesFlag': false
        },
        {
          'text':
              'I have started improving my hydration and water consumption in the last six months.',
          'score': -2,
          'yesFlag': false
        },
        {
          'text':
              'I have been drinking adequate amounts of water and plan to continue to do so.',
          'score': -2,
          'yesFlag': false
        },
        {
          'text':
              'I was working hard to ensure adequate hydration and water consumption but haven’t been prioritizing it lately.',
          'score': -2,
          'yesFlag': false
        },
      ],
    },
    {
      'questionText':
          'Fruits and Vegetables: What are your honest feelings on the topic of fruit and vegetable consumption right now?',
      'answers': [
        {
          'text':
              'I am not interested in eating more fruits and vegetables right now.',
          'score': 10,
          'yesFlag': false
        },
        {
          'text':
              'I have been thinking about eating more fruits and vegetables.',
          'score': -2,
          'yesFlag': false
        },
        {
          'text':
              'I have been thinking about specific ways to eat more fruits and vegetables.',
          'score': -2,
          'yesFlag': false
        },
        {
          'text':
              'I have started eating more fruits and vegetables in the last six months.',
          'score': -2,
          'yesFlag': false
        },
        {
          'text':
              'I have been eating adequate amounts of fruits and vegetables and plan to continue to do so.',
          'score': -2,
          'yesFlag': false
        },
        {
          'text':
              'I was working hard to ensure I was eating adequate amounts of fruits and vegetables but haven’t been prioritizing it lately.',
          'score': -2,
          'yesFlag': false
        },
      ],
    },
    {
      'questionText':
          'Sleep: What are your honest feelings on the topic of sleep right now?',
      'answers': [
        {
          'text':
              'I am not interested in improving my sleep quality or the amount of sleep that I get.',
          'score': 10,
          'yesFlag': false
        },
        {
          'text':
              'I have been thinking about ways to improve the amount of sleep that I get.',
          'score': -2,
          'yesFlag': false
        },
        {
          'text':
              'I have been thinking about specific ways to improve the quality and amount of sleep that I get.',
          'score': -2,
          'yesFlag': false
        },
        {
          'text':
              'I have started improving the quality of my sleep and getting more sleep within the past 6 months.',
          'score': -2,
          'yesFlag': false
        },
        {
          'text':
              'I have been getting good quality and good amounts of sleep for over 6 months.',
          'score': -2,
          'yesFlag': false
        },
        {
          'text':
              'I was getting good quality and good amounts of sleep but haven’t been prioritizing it lately.',
          'score': -2,
          'yesFlag': false
        },
      ],
    },
    {
      'questionText':
          'Physical Activity: What are your honest feelings on the topic of sleep right now?',
      'answers': [
        {'text': '', 'score': 10, 'yesFlag': false},
        {'text': '', 'score': -2, 'yesFlag': false},
        {'text': '', 'score': -2, 'yesFlag': false},
        {'text': '', 'score': -2, 'yesFlag': false},
        {'text': '', 'score': -2, 'yesFlag': false},
        {'text': '', 'score': -2, 'yesFlag': false},
      ],
    },
    {
      'questionText':
          'Emotional: What are your honest feelings on the topic of sleep right now?',
      'answers': [
        {'text': '', 'score': 10, 'yesFlag': false},
        {'text': '', 'score': -2, 'yesFlag': false},
        {'text': '', 'score': -2, 'yesFlag': false},
        {'text': '', 'score': -2, 'yesFlag': false},
        {'text': '', 'score': -2, 'yesFlag': false},
        {'text': '', 'score': -2, 'yesFlag': false},
      ],
    },
    {
      'questionText':
          'Hydration Q1: Has the idea of staying hydrated been off your radar? Is the thought of drinking water or staying hydrated the farthest thing from your mind?',
      'answers': [
        {'text': 'Yes', 'score': 10, 'yesFlag': true},
        {'text': 'No', 'score': -2, 'yesFlag': false},
      ],
    },
    {
      'questionText':
          'Hydration Q2: Has the idea of ensuring adequate hydration been on your mind but perhaps you don’t know where to begin, or haven’t had the opportunity to act on this interest yet?',
      'answers': [
        {'text': 'Yes', 'score': 10, 'yesFlag': true},
        {'text': 'No', 'score': -2, 'yesFlag': false},
      ],
    },
    {
      'questionText':
          'Hydration Q3: Have you begun to plan out how you can stay better hydrated? Have you explored some of the health impacts of adequate hydration?',
      'answers': [
        {'text': 'Yes', 'score': 10, 'yesFlag': true},
        {'text': 'No', 'score': -2, 'yesFlag': false},
      ],
    },
    {
      'questionText':
          'Hydration Q4: Within the last six months, have you began focusing on adequate hydration?',
      'answers': [
        {'text': 'Yes', 'score': 10, 'yesFlag': true},
        {'text': 'No', 'score': -2, 'yesFlag': false},
      ],
    },
    {
      'questionText':
          'Hydration Q5: Have you been drinking adequate amounts of water and plan to continue to do so?',
      'answers': [
        {'text': 'Yes', 'score': 10, 'yesFlag': true},
        {'text': 'No', 'score': -2, 'yesFlag': false},
      ],
    },
    {
      'questionText':
          'Hydration Q6: Were you previously working hard to ensure adequate hydration and water consumption, but have fallen off of the proverbial horse lately?',
      'answers': [
        {'text': 'Yes', 'score': 10, 'yesFlag': true},
        {'text': 'No', 'score': -2, 'yesFlag': false},
      ],
    },
    {
      'questionText': 'You have answered all the questions about hydration',
      'answers': [
        {'text': 'next', 'score': 10, 'yesFlag': false},
      ],
    },
  ];

  // final _waterQuestions = const [
  //   {
  //     'questionText': 'Q100. On average, how many hours do you sleep per night?',
  //     'answers': [
  //       {'text': '0-3', 'score': -2},
  //       {'text': '3-5', 'score': -2},
  //       {'text': '5-8', 'score': 10},
  //       {'text': '8+', 'score': -2},
  //     ],
  //   }
  // ];

  var _questionIndex = 0;
  var _totalScore = 0;
  var yesFlag = false;
  // var _waterQuestionIndex = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  // void _waterQuiz(){
  //   setState(() {
  //     //_waterQuestionIndex = 0;
  //     _totalScore = 0;
  //     _waterQuestionIndex = 0;//idk
  //   });
  // }

  void _answerQuestion(int score, bool yesFlag) {
    _totalScore += score;

    setState(() {
      if (yesFlag == true) {
        _questionIndex = 18;
      } else {
        _questionIndex = _questionIndex + 1;
      }
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
        //: Result(_totalScore, _resetQuiz, _waterQuiz),
        // child: _questionIndex == _questions.length && _waterQuestionIndex < _waterQuestions.length
        //     ? Quiz(
        //   answerQuestion: _answerQuestion,
        //   waterQuestionIndex: _waterQuestionIndex,
        //   questions: _waterQuestions,
        // ) //Quiz
        //: Result(_totalScore, _resetQuiz, _waterQuiz),
      ), //Padding
    ); //MaterialApp
  }
}
