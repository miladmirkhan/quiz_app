import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import './question.dart';
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

 void answerQuestion(){
  setState(() {/* you should tell the flutter that you want the value to change by(setState) */
    _questionIndex = _questionIndex + 1;
  });
  

  print(_questionIndex);
}

  @override
  Widget build(BuildContext context) {
    dynamic questions=[
      {'questionText':'What\'s your favorite color ?',
            'answers':[ 'Black','Red','Green','White' ],
      },
      {
        'questionText':'What\'s your favorite animal ?',
        'answers':['Rabbit','Snake','Elephant','Lion'],
      },
      {
        'questionText':'Who\'s your favorite instractor ?',
        'answers':['Man','Max','Eli','Ela'],
       } ];/* list(group related data) */


    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("milad title"),
        ),

        body: Column(
          children:<Widget>/* this is a list of widgets */
           [
             Question(
               questions[_questionIndex]['questionText'],
               ),/* or questions[0]   ,   questions.elementAt(_questionIndex)*/
            

            ...(questions[_questionIndex]['answers'] as List<String>).map((answer){
              return Answer(answerQuestion,answer);
            }).toList()
           

           ]/* List(group of varible) */,
        )
      ),
    );
} 
}