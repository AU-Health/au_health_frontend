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
  //questions to the survey
  //start of survey
  final _questions = const [
    {
      'questionText':
      'Please answer these specific questions to the best of your ability',//more specific
      'answers': [
        {'text': 'Next', 'score': 0, 'yesFlag': false},
      ],
    },
    {
      //Hydration is the first category of questions. Based on the answer user chooses, it places them in a category: Precontemplation, Contemplation, Preperation, Action, Maintenance, or Relapse.
      //Category is based on the order that the answers are in. For example Precontemplation is related to the first answer "I do not bother with staying hydrated nor am I interested..."
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
        {'text': 'Previous Question', 'score': 0, 'yesFlag': true},
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
        {'text': 'Previous Question', 'score': 0, 'yesFlag': true},
      ],
    },
    {
      //Start of Nutrition Questions
      //Categories are still based on the order in which the answers are in, first answer = Precontemplation
      'questionText':
      'Nutrition: What are your honest feelings on the topic of nutrition?',
      'answers': [
        {'text': 'I am not interested in maintaining adequate nutrition right now.'
          , 'score': 1, 'yesFlag': false},
        {'text': 'I have been interested in learning more about or improving my nutrient intake and balance.', 'score': 2, 'yesFlag': false},
        {'text': 'I have been thinking about ways to achieve adequate nutrient intake and balance.', 'score': 3, 'yesFlag': false},
        {'text': 'I have started improving my nutrient intake and balance in the last six months.', 'score': 4, 'yesFlag': false},
        {'text': 'I have been ensuring adequate nutrient intake and balance for over six months and plan to continue to do so.', 'score': 5, 'yesFlag': false},
        {'text': 'I was working hard to ensure adequate nutrient intake and balance, but have not been prioritizing it lately.', 'score': 6, 'yesFlag': false},
        {'text': 'Previous Question', 'score': 0, 'yesFlag': true},
      ],
    },
    {
      'questionText':
      'Nutrition: Within the past 6 months, how often have you actively tried to ensure adequate nutrition throughout the day?',
      'answers': [
        {'text': 'Rarely'
          , 'score': 1, 'yesFlag': false},
        {'text': 'Once a month', 'score': 2, 'yesFlag': false},
        {'text': 'Multiple times a week', 'score': 3, 'yesFlag': false},
        {'text': 'Nearly every day', 'score': 4, 'yesFlag': false},
        {'text': 'Every day for the past 6 months+', 'score': 5, 'yesFlag': false},
        {'text': 'This used to affect me, but no longer does', 'score': 6, 'yesFlag': false},
        {'text': 'Previous Question', 'score': 0, 'yesFlag': true},
      ],
    },
    {
      //Start of Sleep Questions
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
        {'text': 'Previous Question', 'score': 0, 'yesFlag': true},
      ],
    },
    {
      'questionText':
      'Sleep: Within the past 6 months, how often have you actively tried to ensure you receive a full night of sleep?',
      'answers': [
        {'text': 'Rarely'
          , 'score': 1, 'yesFlag': false},
        {'text': 'Once a month', 'score': 2, 'yesFlag': false},
        {'text': 'Multiple times a week', 'score': 3, 'yesFlag': false},
        {'text': 'Nearly every day', 'score': 4, 'yesFlag': false},
        {'text': 'Every day for the past 6 months+', 'score': 5, 'yesFlag': false},
        {'text': 'This used to affect me, but no longer does', 'score': 6, 'yesFlag': false},
        {'text': 'Previous Question', 'score': 0, 'yesFlag': true},
      ],
    },
    {
      'questionText':
      'Physical Activity: What are your honest feelings on the topic of physical activity right now?',
      'answers': [
        {'text': 'I am not interested in physical activity.'
          , 'score': 1, 'yesFlag': false},
        {'text': 'I have been interested in learning more about or improving my level of physical activity.', 'score': 2, 'yesFlag': false},
        {'text': 'I have been thinking about ways to achieve adequate levels of physical activity.'
          , 'score': 3, 'yesFlag': false},
        {'text': 'I have started improving my level of physical activity in the last six months.', 'score': 4, 'yesFlag': false},
        {'text': 'I have been ensuring adequate physical activity in my personal life and plan to continue to do so.', 'score': 5, 'yesFlag': false},
        {'text': 'I was working hard to ensure adequate physical activity, but have not been prioritizing it lately.', 'score': 6, 'yesFlag': false},
        {'text': 'Previous Question', 'score': 0, 'yesFlag': true},
      ],
    },
    {
      'questionText':
      'Physical Activity: Within the past 6 months, how often have you actively tried to be active?'
          '(*Note: Recommendations suggest that one should engage in 150 minutes of moderate aerobic activity)',
      'answers': [
        {'text': 'Rarely'
          , 'score': 1, 'yesFlag': false},
        {'text': 'Once a month', 'score': 2, 'yesFlag': false},
        {'text': 'Multiple times a week', 'score': 3, 'yesFlag': false},
        {'text': 'Nearly every day', 'score': 4, 'yesFlag': false},
        {'text': 'Every day for the past 6 months+', 'score': 5, 'yesFlag': false},
        {'text': 'This used to affect me, but no longer does', 'score': 6, 'yesFlag': false},
        {'text': 'Previous Question', 'score': 0, 'yesFlag': true},
      ],
    },
    {

      'questionText':
      'Environmental Health: What are your honest feelings on the topic of your personal environment right now?'
          '(*Note: this includes social and virtual aspects of your surroundings)',
      'answers': [
        {'text': 'I am not interested in learning more about my physical environment and how it can impact my overall wellness .'
          , 'score': 1, 'yesFlag': false},
        {'text': 'I have been interested in learning more about or improving my physical environment and how it can impact my overall wellness.', 'score': 2, 'yesFlag': false},
        {'text': 'I have been thinking about ways to achieve a satisfactory physical environment and how it can serve to impact my overall wellness.'
          , 'score': 3, 'yesFlag': false},
        {'text': 'I have started to make improvements in physical environment and follow strategies to reduce distractions in the last six months.', 'score': 4, 'yesFlag': false},
        {'text': 'I have been actively monitoring my personal environment to ensure that it supports my health and wellness for over half a year.', 'score': 5, 'yesFlag': false},
        {'text': 'I was working hard to ensure a satisfactory physical environment, but have not been prioritizing it lately.', 'score': 6, 'yesFlag': false},
        {'text': 'Previous Question', 'score': 0, 'yesFlag': true},
      ],
    },
    {
      //Scores are swapped (first answer worth 5 points)
      'questionText':
      'Environmental Health: Within the past 6 months, how often did your physical environment impact your daily activities?'
          '(i.e. finding a quiet place to study, needing to walk outside to think clearly)',
      'answers': [
        {'text': 'Rarely'
          , 'score': 5, 'yesFlag': false},
        {'text': 'Once a month', 'score': 4, 'yesFlag': false},
        {'text': 'Multiple times a week', 'score': 3, 'yesFlag': false},
        {'text': 'Nearly every day', 'score': 2, 'yesFlag': false},
        {'text': 'Every day for the past 6 months+', 'score': 1, 'yesFlag': false},
        {'text': 'This used to affect me, but no longer does', 'score': 6, 'yesFlag': false},
        {'text': 'Previous Question', 'score': 0, 'yesFlag': true},
      ],
    },
    {
      'questionText':
      'Stress Management: What are your honest feelings on the topic of stress management right now?',
      'answers': [
        {'text': 'I am not interested in managing stress levels right now.'
          , 'score': 1, 'yesFlag': false},
        {'text': 'I have been interested in learning more about or improving my personal levels of stress.', 'score': 2, 'yesFlag': false},
        {'text': 'I have been thinking about ways to achieve adequate stress management.'
          , 'score': 3, 'yesFlag': false},
        {'text': 'I have started improving my management of stress in the last six months.', 'score': 4, 'yesFlag': false},
        {'text': 'I have been managing my stress levels for over six months and plan to continue to do so.', 'score': 5, 'yesFlag': false},
        {'text': 'I was working hard to ensure adequate stress management, but have not been prioritizing it lately.', 'score': 6, 'yesFlag': false},
        {'text': 'Previous Question', 'score': 0, 'yesFlag': true},
      ],
    },
    {
      'questionText':
      'Stress Management: Within the past 30 days, how often did you feel confident about your ability to cope with all the things you had to do and/or adequately manage your stress levels?',
      'answers': [
        {'text': 'Rarely'
          , 'score': 1, 'yesFlag': false},
        {'text': 'Once a month', 'score': 2, 'yesFlag': false},
        {'text': 'Multiple times a week', 'score': 3, 'yesFlag': false},
        {'text': 'Nearly every day', 'score': 4, 'yesFlag': false},
        {'text': 'Every day for the past 6 months+', 'score': 5, 'yesFlag': false},
        {'text': 'This used to affect me, but no longer does', 'score': 6, 'yesFlag': false},
        {'text': 'Previous Question', 'score': 0, 'yesFlag': true},
      ],
    },
  ];


  var _questionIndex = 0;
  var _totalScore = 0;
  var yesFlag = false;
  var scoreArray = List.filled(30,0);

  void _resetQuiz() {//if they choose reset quiz at the end of the survey then everything gets set back to 0 so they can restart the quiz
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
      scoreArray = List.filled(30,0);
    });
  }

  void _answerQuestion(int score, bool yesFlag) {
    _totalScore += score;//adds score to total score
    scoreArray[_questionIndex] = score;//adds the score to a score Array at the index of the question so each individual score can be looked at
    if(yesFlag){//if they pressed previous- then they can go back a question- the questionIndex goes back one
      setState(() {
        _questionIndex = _questionIndex - 1;
      });
    }
    else {
      setState(() {//otherwise go to the next question
        _questionIndex = _questionIndex + 1;
      });
    }
    debugPrint(_questionIndex.toString());//printing to console
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
            ? Quiz(//going through the quiz then going to the results
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              ) //Quiz
            : Result(resultScore: _totalScore, resetHandler: _resetQuiz),
      ), //Padding
    ); //MaterialApp
  }
}
