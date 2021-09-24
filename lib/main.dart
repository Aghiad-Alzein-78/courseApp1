import 'package:flutter/material.dart';
import "./quiz.dart";
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  final _questions = const [
    {
      "questionText": "What's your favourite color?",
      "answers": [
        {"text": "black", "score": 10},
        {"text": "red", "score": 5},
        {"text": "green", "score": 3},
        {"text": "white", "score": 1},
      ]
    },
    {
      "questionText": "What's your favourite animal?",
      "answers": [
        {"text": "Scorpion", "score": 10},
        {"text": "Snake", "score": 5},
        {"text": "Rabbit", "score": 3},
        {"text": "Cat", "score": 1},
      ]
    },
    {
      "questionText": "who's your favourite instructor?",
      "answers": [
        {"text": "Todd", "score": 10},
        {"text": "Max", "score": 5},
        {"text": "Mohammad", "score": 3},
        {"text": "Jessica", "score": 1},
      ]
    },
  ];

  void _reset() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  // This widget is the root of your application.
  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
    if (_questionIndex < _questions.length) {}
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions)
            : Result(_totalScore, _reset),
      ),
    );
  }
}
