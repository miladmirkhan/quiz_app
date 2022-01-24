import 'package:flutter/material.dart';

class Question extends StatelessWidget {
final String questionText;

Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),/* space around the container */
      width: double.infinity/* as mach size it has */,
      child: Text(questionText,
      style:TextStyle(fontWeight: FontWeight.bold,fontSize: 23,),
      textAlign: TextAlign.center,),
    );
  }
}