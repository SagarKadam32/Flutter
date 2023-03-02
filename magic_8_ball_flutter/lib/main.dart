import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(BallPage());
}

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Text('Ask Me Anything'),
            backgroundColor: Colors.blue.shade800,
          ),
          body: Ball()),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  void ballButtonClicked() {
    print('I got clicked! Current Ball No = $ballNumber');
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        child: Image.asset('images/ball$ballNumber.png'),
        onPressed: () {
          ballButtonClicked();
        },
      ),
    );
  }
}
