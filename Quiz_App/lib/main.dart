import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var questions = ["question1", "question2"];
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz"),
        ),
        body: Column(
          children: [
            RaisedButton(
              child: Text(questions[0]),
              onPressed: () => print(questions[0]),
            ),
            RaisedButton(
              child: Text(questions[1]),
            ),
          ],
        ),
      ),
    );
  }
}
