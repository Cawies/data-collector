// Import material themes to simplify design
import 'package:flutter/material.dart';

import './question.dart';

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

  void answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'How often have you been bothered by feeling down, depressed or hopeless?',
      'How often have you had little interest or pleasure in doing things?',
      'How often have you been bothered by trouble falling or staying asleep, or sleeping too much?',
      'How often have you been bothered by feeling tired or having little energy?',
      'How often have you been bothered by poor appetite or overeating?',
      'How often have you been bothered by feeling bad about yourself, or that you are a failure, or have let yourself or your family down?',
      'How often have you been bothered by trouble concentrating on things, such as reading the newspaper or watching television?',
      'How often have you been bothered by moving or speaking so slowly that other people could have noticed, or the opposite - being so fidgety or restless that you have been moving around a lot more than usual?'
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('A small first step.'),
          ),
          body: Column(children: [
            Question(questions[_questionIndex]),
            RaisedButton(child: Text('Not at all'), onPressed: answerQuestion),
            RaisedButton(
                child: Text('Several days'), onPressed: answerQuestion),
            RaisedButton(
                child: Text('More than half of the days'),
                onPressed: answerQuestion),
            RaisedButton(
                child: Text('Nearly every day'), onPressed: answerQuestion),
          ])),
    );
  }
}
