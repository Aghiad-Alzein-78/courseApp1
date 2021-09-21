import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: RaisedButton(
        color: Colors.blue[100],
        onPressed: () {
          null;
        },
        child: Text("Answer 1"),
      ),
    );
  }
}
