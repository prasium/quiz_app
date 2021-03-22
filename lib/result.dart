import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore,this.resetHandler);

  // in getter function we don't add parantheses like methods
  String get resultPhrase {

    if(resultScore>=9)
      return "You are a Genius! 😎";
    else if(resultScore<=5)
      return "Work on Yourself 😉";
    else
      return "Good Job! 🤗";
  }

  String get Score{
    var res = resultScore.toString()+'/10';
    return res;
  }

  @override
  Widget build(BuildContext context) {
    return
      // to wrap use alt+enter // to see more options ctrl+space
      Container(
        width: double.infinity,
          margin: EdgeInsets.fromLTRB(10,50,10,0),
          child:  Column(
                children: [
                  Text(
                    "You Scored\n",
                    style: TextStyle(
                      color: Colors.teal,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  textAlign: TextAlign.center,),
                  Text(
                    Score,
                    style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "\n\n"+resultPhrase+"\n",
                  style: TextStyle(
                      color: Colors.teal,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                  ),
                  ),
                  TextButton(
                    onPressed: resetHandler,
                    child: Text('Restart the Quiz',
                        style: TextStyle(
                          fontSize: 20,
                        )
                    ),style: TextButton.styleFrom(
                        primary: Colors.deepPurple,
                        backgroundColor: Colors.orangeAccent
                    ),
                  )
                ],
              ),
    );
  }
}
