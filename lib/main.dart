import 'package:flutter/material.dart';
import 'package:appflutter/question.dart';

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
    "What's your favourite color?",
    "What's your favorite animal?",
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
            Question(questions[questionIndex]),
            RaisedButton(
              onPressed: () {
                print("$questionIndex");
                answerQuestion();
              },
              child: Text("Answer 1"),
            ),
            RaisedButton(
              onPressed: answerQuestion,
              child: Text("Answer 2"),
            ),
            RaisedButton(
              onPressed: () => answerQuestion(),
              child: Text("Answer 3"),
            ),
          ],
        ),
      ),
    );
  }
}
