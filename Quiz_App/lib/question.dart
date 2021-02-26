import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String _questionText;

  Question({questionText});
  @override
  Widget build(BuildContext context) {
    return Text(_questionText);
  }
}
