import 'package:basic_app/quiz.dart';
import 'package:basic_app/result.dart';
import 'package:flutter/material.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
    throw UnimplementedError();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'Which is the largest mammal?',
      'answers': [
        {'text': 'Kangaroo', 'score': 0},
        {'text': 'Elephant', 'score': 0},
        {'text': 'Rhinoceros', 'score': 0},
        {'text': 'Blue Whale', 'score': 1},
      ],
    },
    {
      'questionText': 'What does NATO stand for?',
      'answers': [
        {'text': 'North Atlantic Treaty Organization', 'score': 1},
        {'text': 'North America Treaty Organization', 'score': 0},
        {'text': 'North Atlantic Trust Organization', 'score': 0},
        {'text': 'North Alliance Treaty Organization', 'score': 0},
      ],
    },
    {
      'questionText': 'What is the capital of Estonia?',
      'answers': [
        {'text': 'Asmara', 'score': 0},
        {'text': 'Talinn', 'score': 1},
        {'text': 'Malabo', 'score': 0},
        {'text': 'Helsinki', 'score': 0},
      ],
    },
    {
      'questionText':
          'Which of the following country has given first time voting rights to women? ',
      'answers': [
        {'text': 'USA', 'score': 0},
        {'text': 'France', 'score': 0},
        {'text': 'New Zealand', 'score': 1},
        {'text': 'India', 'score': 0},
      ],
    },
    {
      'questionText': 'What is the art of Japanese flower arranging called?',
      'answers': [
        {'text': 'Feng Shui', 'score': 0},
        {'text': 'Ikebana', 'score': 1},
        {'text': 'Florabana', 'score': 0},
        {'text': 'None of the Above', 'score': 0},
      ],
    },
    {
      'questionText':
          'Which of the following part of the Sun is visible during eclipse?',
      'answers': [
        {'text': 'Photosphere', 'score': 0},
        {'text': 'Chromosphere', 'score': 0},
        {'text': 'Corona', 'score': 1},
        {'text': 'Flare', 'score': 0},
      ],
    },
    {
      'questionText': 'What does Vitamin K deficiency lead to ?',
      'answers': [
        {'text': 'Problem in digestion', 'score': 0},
        {'text': 'Problem in Blood Coagulation', 'score': 1},
        {'text': 'Problem in Calcium Metabolism', 'score': 0},
        {'text': 'Hernia', 'score': 0},
      ],
    },
    {
      'questionText': 'Which protocol provides e-mail facility among different hosts?',
      'answers': [
        {'text': 'FTP', 'score': 0},
        {'text': 'TELNET', 'score': 0},
        {'text': 'SMTP', 'score': 1},
        {'text': 'HTTP', 'score': 0},
      ],
    },
    {
      'questionText':
          'Who was the first Man to Climb Mount Everest Without Oxygen?',
      'answers': [
        {'text': 'Junko Tabei', 'score': 0},
        {'text': 'Reinhold Messner', 'score': 0},
        {'text': 'Peter Habeler', 'score': 0},
        {'text': 'Phu Dorji', 'score': 1},
      ],
    },
    {
      'questionText':
          'The tropic of cancer does not pass through which of these Indian states ?',
      'answers': [
        {'text': 'Madhya Pradesh', 'score': 0},
        {'text': 'West Bengal', 'score': 0},
        {'text': 'Rajasthan', 'score': 0},
        {'text': 'Odisha', 'score': 1},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore =0;
  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  void _resetQuiz()
    {
  setState(() {
    _totalScore=0;
    _questionIndex=0;
  });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Quizzeria'),
          ),
          body:
              _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result(_totalScore,_resetQuiz)
      ),
    );
  }
}
