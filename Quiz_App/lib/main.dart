import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
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
    {
      "questionText": "What are you going to do tonight?",
      "answers": ["Play ludo with Hagar", "Study", "Go to gym"],
    },
    {
      "questionText": "What's your favorite food?",
      "answers": ["Pasta", "Pizza", "Burger"],
    },
    {
      "questionText": "Where are you from?",
      "answers": ["Cairo", "Alex", "Luxor"],
    },
  ];

  var _questionIndex = 0;

  _answerQuestion() {
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
            Question(
              questionText: _questions[_questionIndex]["questionText"],
            ),
            ...(_questions[_questionIndex]["answers"] as List<String>)
                .map((answer) {
              return Answer(answer, _answerQuestion);
            }).toList()
          ],
        ),
      ),
    );
  }
}
