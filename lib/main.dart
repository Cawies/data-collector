// Import material themes to simplify design
import 'package:flutter/material.dart';

import './questionnaire.dart';
import './result.dart';

// Flutter uses a main function to execute parts of the code.
void main() {
  runApp(StepOne());
}

// Flutter uses extensions of base classes to simplify rendering things on the screen.
class StepOne extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _StepOneState();
  }
}

class _StepOneState extends State<StepOne> {
  final _questions = const [
    {
      'questionText':
          'How often have you been bothered by feeling down, depressed or hopeless?',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Several days', 'score': 1},
        {'text': 'More than half of the days', 'score': 2},
        {'text': 'Nearly every day', 'score': 3},
      ],
    },
    {
      'questionText':
          'How often have you had little interest or pleasure in doing things?',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Several days', 'score': 1},
        {'text': 'More than half of the days', 'score': 2},
        {'text': 'Nearly every day', 'score': 3},
      ],
    },
    {
      'questionText':
          'How often have you been bothered by trouble falling or staying asleep, or sleeping too much?',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Several days', 'score': 1},
        {'text': 'More than half of the days', 'score': 2},
        {'text': 'Nearly every day', 'score': 3},
      ],
    },
    {
      'questionText':
          'How often have you been bothered by feeling tired or having little energy?',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Several days', 'score': 1},
        {'text': 'More than half of the days', 'score': 2},
        {'text': 'Nearly every day', 'score': 3},
      ],
    },
    {
      'questionText':
          'How often have you been bothered by poor appetite or overeating?',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Several days', 'score': 1},
        {'text': 'More than half of the days', 'score': 2},
        {'text': 'Nearly every day', 'score': 3},
      ],
    },
    {
      'questionText':
          'How often have you been bothered by feeling bad about yourself, or that you are a failure, or have let yourself or your family down?',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Several days', 'score': 1},
        {'text': 'More than half of the days', 'score': 2},
        {'text': 'Nearly every day', 'score': 3},
      ],
    },
    {
      'questionText':
          'How often have you been bothered by trouble concentrating on things, such as reading the newspaper or watching television?',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Several days', 'score': 1},
        {'text': 'More than half of the days', 'score': 2},
        {'text': 'Nearly every day', 'score': 3},
      ],
    },
    {
      'questionText':
          'How often have you been bothered by moving or speaking so slowly that other people could have noticed, or the opposite - being so fidgety or restless that you have been moving around a lot more than usual?',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Several days', 'score': 1},
        {'text': 'More than half of the days', 'score': 2},
        {'text': 'Nearly every day', 'score': 3},
      ],
    }
  ];
  var _totalScore = 0;
  var _questionIndex = 0;

  void _resetQuestionnaire() {
    setState(() {});

    _questionIndex = 0;
    _totalScore = 0;
  }

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);

    if (_questionIndex < _questions.length) {
      print('Proceed to next question.');
    } else {
      print('You have finished the evaluation');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Anxiety test.'),
        ),
        body: _questionIndex < _questions.length
            ? Questionnaire(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions)
            : Result(_totalScore, _resetQuestionnaire),
      ),
    );
  }
}
