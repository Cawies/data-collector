// Import material themes to simplify design
import 'package:flutter/material.dart';

// Flutter uses a main function to execute parts of the code.
void main() {
  runApp(StepOne());
}

// Flutter uses extensions of base classes to simplify rendering things on the screen.
class StepOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('A small first step.'),
        ),
        body: Text('Put some content here.'),
      ),
    );
  }
}
