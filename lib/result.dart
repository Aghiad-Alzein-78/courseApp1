import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function() reset;
  Result(this.totalScore, this.reset);

  String get resultDescription {
    String description;
    if (totalScore <= 6) {
      description = "you are awsome and inoscent";
    } else if (totalScore <= 15) {
      description = "you are not bad";
    } else {
      description = "You are So BAD!!";
    }
    return description;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("You Did It!!!"),
          Text("Your Score is $totalScore"),
          Text(resultDescription),
          OutlinedButton(
            onPressed: reset,
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(Colors.red[300]),
            ),
            child: const Text(
              "Restart",
            ),
          )
        ],
      ),
    );
  }
}
