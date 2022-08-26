import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite Color?',
      'answers': [
        {'text': 'Black', 'score': 1},
        {'text': 'Red', 'score': 4},
        {'text': 'Green', 'score': 7},
        {'text': 'White', 'score': 10},
      ],
    },
    {
      'questionText': 'Which\'s your favorite Field?',
      'answers': [
        {'text': 'Computer Sciece', 'score': 10},
        {'text': 'Software Engineering', 'score': 7},
        {'text': 'Business', 'score': 1},
        {'text': 'Art', 'score': 4},
      ],
    },
    {
      'questionText': 'Who\'s your favorite Person?',
      'answers': [
        {'text': 'Tariq Masood', 'score': 10},
        {'text': 'Bill Gates', 'score': 1},
        {'text': 'Faysal Zaman', 'score': 7},
        {'text': 'Elon Musk', 'score': 4},
      ],
    },
    {
      'questionText': 'Who\'s your favorite FootBaller?',
      'answers': [
        {'text': 'Naymar Jr', 'score': 4},
        {'text': 'Leo Messi', 'score': 10},
        {'text': 'Ronaldo', 'score': 7},
        {'text': 'Ebrahimovic', 'score': 1},
      ],
    },
    {
      'questionText': 'Which\'s your favorite Subject?',
      'answers': [
        {'text': 'Computer', 'score': 10},
        {'text': 'Maths', 'score': 4},
        {'text': 'Physics', 'score': 7},
        {'text': 'Biology', 'score': 1},
      ],
    },
    {
      'questionText': 'Which\'s your favorite Country?',
      'answers': [
        {'text': 'Pakistan', 'score': 10},
        {'text': 'Turkey', 'score': 4},
        {'text': 'Saudi', 'score': 7},
        {'text': 'England', 'score': 1},
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
    // var aBool = true;
    // aBool = false;

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
          centerTitle: true,
          title: Text('-<Quiz>-'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
