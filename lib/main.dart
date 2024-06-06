import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

final _questions = const [
  {
     'questionText': 'Q1. Who is the founder of Pakistan?',
      'answers': [
        {'text': 'Allama Iqbal', 'score': 0},
        {'text': 'Sir Syed Ahmad Khan', 'score': 0},
        {'text': 'Muhammad Ali Jinnah', 'score': 10},
      ],
    },
    {
     'questionText': 'Q2. Who suggest the name of Pakistan?',
      'answers': [
        {'text': 'Chuadhry Rehmat Ali', 'score': 10},
        {'text': 'Sir Syed Ahmad Khan', 'score': 0},
        {'text': 'Muhammad Ali Jinnah', 'score': 0},
      ],
    },
    {
     'questionText': 'Q3. What is the color of flag of Pakistan?',
      'answers': [
        {'text': 'White And Green', 'score': 10},
        {'text': 'Green', 'score': 0},
        {'text': 'White and Orange', 'score': 0},
      ],
    }, 
];

var _questionIndex = 0;
var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }
 
  void _answerQuestion(int score) {
    _totalScore += score;
 
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }
 


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("QUIZ APP")),
          backgroundColor: Colors.lightGreen,
        ),

        body: SingleChildScrollView(
                  child: Padding(
            padding: EdgeInsets.all(20.0),
            child: _questionIndex < _questions.length
            ? Quiz(
              answerQuestion: _answerQuestion,
              questionIndex: _questionIndex,
              questions: _questions,
            )
            : Result(_totalScore, _resetQuiz),
          ),
        ),
      )
      
      
    );
  }
}