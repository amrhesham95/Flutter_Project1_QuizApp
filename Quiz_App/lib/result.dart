import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;

  final Function resetHandler;
  Result({@required this.totalScore, @required this.resetHandler});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            totalScore.toString(),
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          RaisedButton(
            onPressed: resetHandler,
            child: Text("Reset"),
          ),
        ],
      ),
    );
  }
}
