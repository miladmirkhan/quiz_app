import 'package:flutter/material.dart';
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

 void abswerQuestion(){
  setState(() {/* you should tell the flutter that you want the value to change by(setState) */
    _questionIndex = _questionIndex + 1;
  });
  

  print(_questionIndex);
}

  @override
  Widget build(BuildContext context) {
    var questions=[
                   'What\'s your favorite color ?',
                   'What\'s your favorite animal ?'
                  ];/* list(group related data) */
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("milad title"),
        ),

        body: Column(
          children:<Widget>/* this is a list of widgets */
           [
             Question(questions.elementAt(_questionIndex),),/* or questions[0] */
             ElevatedButton(onPressed: abswerQuestion, child: Text('Answer 1')),
             ElevatedButton(onPressed: ()=> print("dss"), child: Text('Answer 2')),
             ElevatedButton(onPressed: null, child: Text('Answer 3')),

           ]/* List(group of varible) */,
        )
      ),
    );
} 
}