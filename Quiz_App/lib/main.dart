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
      "answers": [
        {"text": "Eat", "score": 5},
        {"text": "Study", "score": 10},
        {"text": "Go to gym", "score": 15}
      ],
    },
    {
      "questionText": "What's your favorite food?",
      "answers": [
        {"text": "Pasta", "score": 5},
        {"text": "Pizza", "score": 10},
        {"text": "Burger", "score": 15}
      ]
    },
    {
      "questionText": "Where are you from?",
      "answers": [
        {"text": "Cairo", "score": 5},
        {"text": "Alex", "score": 10},
        {"text": "Luxor", "score": 15}
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });

    print(_questionIndex);
  }

  _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
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
            : Result(totalScore: _totalScore, resetHandler: _resetQuiz),
      ),
    );
  }
}
