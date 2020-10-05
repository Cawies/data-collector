// Import material themes to simplify design
import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText':
            'How often have you been bothered by feeling down, depressed or hopeless?',
        'answers': [
          'Not at all',
          'Several days',
          'More than half the days',
          'Nearly every day'
        ]
      },
      {
        'questionText':
            'How often have you had little interest or pleasure in doing things?',
        'answers': [
          'Not at all',
          'Several days',
          'More than half the days',
          'Nearly every day'
        ]
      },
      {
        'questionText':
            'How often have you been bothered by trouble falling or staying asleep, or sleeping too much?',
        'answers': [
          'Not at all',
          'Several days',
          'More than half the days',
          'Nearly every day'
        ],
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('A small first step.'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'],
            ),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answers(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
