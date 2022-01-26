import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
 final VoidCallback  selectHundler;
final String answerText;
   Answer(this.selectHundler,this.answerText );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          child: ElevatedButton(
            child: Text(answerText,style: TextStyle( color: Colors.white),),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.indigo)),
            onPressed: selectHundler,
          ),
        ),
        
        Divider(color: Colors.transparent, height: 10,),
      ],
    );
  }
}