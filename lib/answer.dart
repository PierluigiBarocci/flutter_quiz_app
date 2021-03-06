import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // it expect a Function, so I have to type this
  final Function selectHandler;
  final String answerText;

  // then I costruct the class property
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.indigo,
            onPrimary: Colors.white,
          ),
          onPressed: selectHandler,
          child: Text(answerText)),
    );
  }
}
