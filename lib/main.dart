import 'package:flutter/material.dart';

import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/resoult.dart';
import './quiz.dart';
void main()=>  runApp(myapp());

class myapp extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _myappState();
  }
}

class _myappState extends State<myapp>{/*(_) private properties */

 var _questionIndex=0;
var _totalScore=0;
  @override
  Widget build(BuildContext context) {
    dynamic _questions=[
      {'questionText':'What\'s your favorite color ?',
            'answers':[ 
              {'text':'Black','score':2},
              {'text':'Red','score':3},
              {'text':'Green','score':5},
              {'text':'White','score':5 }
                     ],
      },
      {
        'questionText':'What\'s your favorite animal ?',
        'answers':[
              {'text':'Rabbit', 'score':5},
              {'text':'Snake','score':7},
              {'text':'Elephant','score':2},
              {'text':'Lion','score':3}
                  ],
      },
      {
        'questionText':'What\'s your favorite Movie ?',
        'answers':[
                   {'text':'76 DAYS','score':1},
                   {'text':'THE WORST PERSON IN THE WORLD','score':3},
                   {'text':'THE WOMAN WHO RAN','score':5},
                   {'text':'THE HUMAN VOICE','score':4}
                  ],
       } ];/* list(group related data) */


 void _answerQuestion(int score){
  /* you should tell the flutter that you want the value to change by(setState) */
  
  _totalScore+=score;
  setState(() {
    _questionIndex = _questionIndex + 1;
  });
  

  print(_questionIndex);
}

void _resetQuiz(){
  setState(() {
    _questionIndex=0;
    _totalScore=0;
  });
}
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("milad title"),
        ),

        body: 
       /* if */ _questionIndex<_questions.length ?  quiz(_questions,_questionIndex,_answerQuestion)
        /* else */:Result(_totalScore,_resetQuiz),
      ),
    );
} 
}