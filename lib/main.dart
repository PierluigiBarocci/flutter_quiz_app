import 'package:flutter/material.dart';

import 'package:quiz_app/question.dart';
import 'package:quiz_app/answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  const Home({
    Key key,
  }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
  }

  var questions = [
    'What\'s your favourite color?',
    'What\'s your favourite animal?'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My First Basic App'),
        backgroundColor: Colors.indigo.shade800,
      ),
      body: Column(
        children: [
          Question(questions[_questionIndex]),
          Answer(_answerQuestion),
          Answer(_answerQuestion),
          Answer(_answerQuestion),
        ],
      ),
    );
  }
}
