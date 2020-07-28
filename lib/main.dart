import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';
//import './result.dart';

void main() {
  runApp(MyApp());
}

// void main() => runApp(MyApp())
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

//_MyAppState is made private
//MyAppState is public
class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s Indian National Animal?',
      'answers': [
        {'text': 'Tiger', 'score': 1},
        {'text': 'Lion', 'score': 0},
        {'text': 'Elephant', 'score': 0},
        {'text': 'Deer', 'score': 0}
      ],
    },
    {
      'questionText': 'What\'s Indian National Bird?',
      'answers': [
        {'text': 'Pigeon', 'score': 0},
        {'text': 'Dove', 'score': 0},
        {'text': 'Peacock', 'score': 1},
        {'text': 'Humming-Bird', 'score': 0}
      ],
    },
    {
      'questionText': 'What\'s Indian National Sport?',
      'answers': [
        {'text': 'Cricket', 'score': 0},
        {'text': 'Hockey', 'score': 1},
        {'text': 'Badminton', 'score': 0},
        {'text': 'Chess', 'score': 0}
      ],
    },
    {
      'questionText': 'What\'s Indian National Song?',
      'answers': [
        {'text': 'Jana Gana Mana', 'score': 0},
        {'text': 'Sare Jahan Se Accha', 'score': 0},
        {'text': 'Vande maataram', 'score': 1},
        {'text': 'Mere Watan', 'score': 0}
      ],
    },
    {
      'questionText': 'What\'s Indian National Flower?',
      'answers': [
        {'text': 'Rose', 'score': 0},
        {'text': 'Lotus', 'score': 1},
        {'text': 'Jasmine', 'score': 0},
        {'text': 'Marigold', 'score': 0}
      ],
    },
    {
      'questionText': 'What\'s Indian National Fruit?',
      'answers': [
        {'text': 'Pineapple', 'score': 0},
        {'text': 'Mango', 'score': 1},
        {'text': 'Orange', 'score': 0},
        {'text': 'Apple', 'score': 0}
      ],
    },
    {
      'questionText': 'What\'s Indian National River?',
      'answers': [
        {'text': 'Ganges', 'score': 1},
        {'text': 'Yamuna', 'score': 0},
        {'text': 'Saraswati', 'score': 0},
        {'text': 'Narmada', 'score': 0}
      ],
    },
    {
      'questionText': 'What\'s Indian National Tree?',
      'answers': [
        {'text': 'Neem', 'score': 0},
        {'text': 'Peepal', 'score': 0},
        {'text': 'Banyan', 'score': 1},
        {'text': 'Euclyptus', 'score': 0}
      ],
    },
    {
      'questionText': 'What\'s Indian National Currency?',
      'answers': [
        {'text': 'Dollar', 'score': 0},
        {'text': 'Rupee', 'score': 1},
        {'text': 'Euros', 'score': 0},
        {'text': 'Yen', 'score': 0}
      ],
    },
    {
      'questionText': 'What\'s Indian National language?',
      'answers': [
        {'text': 'Sanskrit', 'score': 0},
        {'text': 'Telugu', 'score': 0},
        {'text': 'Urdu', 'score': 0},
        {'text': 'Hindi', 'score': 1}
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
    //if(_questionIndex < questions.length){ print('We have more questions for you!')}
    _totalScore = _totalScore + score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    //return MaterialApp(home:Text('Hello World'));

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz'),
        ),
        //body: Text('Hello World! This is a Flutter App'),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
