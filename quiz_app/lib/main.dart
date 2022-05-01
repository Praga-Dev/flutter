import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  int _totalScore = 0;
  final List<Map<String, Object>> questions = const [
    {
      'questionText': 'What is your favorite color ?',
      'answers': [
        {'text': 'Red', 'score': 10},
        {'text': 'Blue', 'score': 20},
        {'text': 'Green', 'score': 30}
      ]
    },
    {
      'questionText': 'What is your favorite animal ?',
      'answers': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Cat', 'score': 20},
        {'text': 'Lion', 'score': 30}
      ]
    }
  ];

  void _answerQuestion(int score) {
    if (_questionIndex < questions.length) {
      _totalScore += score;
      setState(() {
        ++_questionIndex;
      });
    }
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Quiz App'),
            ),
            body: _questionIndex < questions.length
                ? Quiz(
                    answerQuestion: _answerQuestion,
                    questionIndex: _questionIndex,
                    questions: questions,
                  )
                : Result(_totalScore)),
        debugShowCheckedModeBanner: false);
  }
}
