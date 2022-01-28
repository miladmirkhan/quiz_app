import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
final VoidCallback reserHandler;
Result(this.resultScore,this.reserHandler);

String get resultPhrase {
  String resultText;
  if(resultScore<=9){
    resultText='you are awesome and innocent!';
  }else if(resultScore<=13){
    resultText='Pretty Likable!';
  }else if(resultScore<=16){
    resultText='You are ...Strange?!';
  }else{
resultText='You are so Bad!!';
  }
  return resultText; 
}


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(resultPhrase,style: TextStyle(fontSize: 30,color: Colors.purple, fontWeight: FontWeight.bold),),

          ElevatedButton(onPressed: reserHandler, child: Text('Restart Quiz!',style: TextStyle(fontSize: 20,color: Colors.black54),))
        ],
      ),
      
    );
  }
}