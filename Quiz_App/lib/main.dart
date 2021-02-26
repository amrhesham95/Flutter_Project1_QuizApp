import 'package:flutter/material.dart';
import './question.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questions = [
    "What's your name?",
    "Where are you from?",
    "How old are you?"
  ];

  var _questionIndex = 0;

  answerQuestion() {
    setState(() {
      _questionIndex++;
    });

    print(_questionIndex);
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz"),
        ),
        body: Column(
          children: [
            Text(_questions[_questionIndex]),
            RaisedButton(
              child: Text("Answer1"),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text("Answer2"),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text("Answer3"),
              onPressed: answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
