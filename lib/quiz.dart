import 'package:flutter/material.dart';
import "./question.dart";
import "./answer.dart";

class Quiz extends StatelessWidget {
  final List<Map<String, Object>>? questions;
  final int? questionIndex;
  final Function(int)? answerQuestion;

  Quiz(
      {@required this.answerQuestion,
      @required this.questionIndex,
      @required this.questions});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions![questionIndex!]['questionText'] as String),
        ...(questions![questionIndex!]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQuestion!(answer["score"] as int),
              answer["text"] as String);
        }),
      ],
    );
  }
}
