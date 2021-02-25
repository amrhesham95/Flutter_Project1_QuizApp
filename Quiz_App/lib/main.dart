import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questions = [
    "What's your name?",
    "Where are you from?",
    "How old are you?"
  ];

  var questionIndex = 0;

  answerQuestion() {
    setState(() {
      questionIndex++;
    });

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
