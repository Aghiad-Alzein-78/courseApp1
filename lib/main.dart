import 'package:flutter/material.dart';
import 'package:appflutter/question.dart';
import './answer.dart';

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
  var questionIndex = 0;
  var questions = [
    {
      "questionText": "What's your favourite color?",
      "answers": ['red', 'blue', 'green', 'white']
    },
    {
      "questionText": "What's your favourite animal?",
      "answers": ['cat', 'horse', 'dog', 'bird']
    },
    {
      "questionText": "who's your favourite instructor?",
      "answers": ['Max', 'Mohammad', 'Jessica', 'Todd']
    },
  ];
  // This widget is the root of your application.
  void answerQuestion() {
    setState(() {
      questionIndex = ((questionIndex + 1) % questions.length) ~/ 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
        ),
        body: Column(
          children: [
            Question(questions[questionIndex]['questionText'] as String),
            ...(questions[questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(answerQuestion, answer);
            }),
          ],
        ),
      ),
    );
  }
}
