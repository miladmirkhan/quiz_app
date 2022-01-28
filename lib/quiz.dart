import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';
import 'main.dart';
class quiz extends StatelessWidget {
  final  List<Map<String,dynamic>>questions;
  int _questionIndex;
  final Function answerQuestion;

quiz(this.questions,this._questionIndex,this.answerQuestion);
  @override
  Widget build(BuildContext context) {
    return Column(
          children:<Widget>/* this is a list of widgets */
           [
             Question(
               questions[_questionIndex]['questionText'],
               ),/* or questions[0]   ,   questions.elementAt(_questionIndex)*/
            

            ...(questions[_questionIndex]['answers'] as List<Map<String,dynamic>>).map((answer){
              return Answer(()=> answerQuestion(answer['score']), answer['text']);
            }).toList()
           

           ]/* List(group of varible) */,
        );
  }
}