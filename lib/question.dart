import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  int questionInd;

  Question(this.questionText,this.questionInd){
    questionInd+=1;
  }

  String get questNum{
    var quesPhrase = questionInd.toString()+'/10';
    return quesPhrase;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child:
      Column(
        children: [

          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            width: double.infinity,
            child: Text(questNum,
              style: TextStyle(
                  fontSize: 60,
              color: Colors.deepPurple,
              fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,

            ),
          decoration: BoxDecoration(
            border: Border.all(width: 2),
            borderRadius: BorderRadius.all(
              Radius.circular(100),
            ),
            color: Colors.greenAccent,
          ),),
          Text(
          questionText,
          style: TextStyle(fontSize: 28),
          textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
