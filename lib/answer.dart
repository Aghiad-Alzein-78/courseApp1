import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function() selectHandler;
  final String answer;
  Answer(this.selectHandler, this.answer);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blue[400],
          shadowColor: Colors.blue[400],
          side: const BorderSide(
            color: Colors.black12,
            width: 3,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 20,
        ),
        onPressed: selectHandler,
        child: Text(answer),
      ),
    );
  }
}
