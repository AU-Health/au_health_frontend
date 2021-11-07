// import 'package:flutter/material.dart';
//
// import './answer.dart';
// import './question.dart';
//
// class WaterQuiz extends StatelessWidget {
//   //final List<Map<String, Object>> questions;
//   final List waterQuestions;
//   final int waterQuestionIndex;
//   final Function waterAnswerQuestion;
//
//
//   WaterQuiz({
//     required this.waterQuestions,
//     required this.waterAnswerQuestion,
//     required this.waterQuestionIndex,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Question(
//           waterQuestions[waterQuestionIndex]['questionText'],
//         ), //Question
//         ...(waterQuestions[waterQuestionIndex]['answers'] as List<Map<String, Object>>)
//             .map((answer) {
//           return Answer(() => waterAnswerQuestion(answer['score']), answer['text'].toString());
//         }).toList()
//       ],
//     ); //Column
//   }
// }