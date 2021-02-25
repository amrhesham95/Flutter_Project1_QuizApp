import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var questions = [
    "What's your name?",
    "Where are you from?",
    "How old are you?"
  ];
  var questionIndex = 0;

  answerQuestion() {
    questionIndex++;
    print(questionIndex);
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz"),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
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
