import 'package:flutter/material.dart';
void main()=>  runApp(myapp());

class myapp extends StatelessWidget {
  const myapp({ Key? key }) : super(key: key);

void abswerQuestion(){
  print('answer choosen!');
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
             Text(questions.elementAt(0)),/* or questions[0] */
             ElevatedButton(onPressed: abswerQuestion, child: Text('Answer 1')),
             ElevatedButton(onPressed: ()=> print("dss"), child: Text('Answer 2')),
             ElevatedButton(onPressed: null, child: Text('Answer 3')),

           ]/* List(group of varible) */,
        )
      ),
    );
} 
}