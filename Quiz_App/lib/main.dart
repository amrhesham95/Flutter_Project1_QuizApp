import 'package:Quiz_App/quiz.dart';
import 'package:Quiz_App/result.dart';
import 'package:flutter/material.dart';
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
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion,
              )
            : Result(),
      ),
    );
  }
}
