import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text(
          'Dicee',
        ),
        backgroundColor: Colors.red,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class DicePage extends StatelessWidget {
  int leftDiceNumber = 5;
  int rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    leftDiceNumber = 1;
    rightDiceNumber = 3;
    return Center(
      child: Row(
        children: [
          Expanded(
              child: TextButton(
            child: Image.asset('images/dice$leftDiceNumber.png'),
            onPressed: () {
              print('Left Button Pressed');
            },
          )),
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$rightDiceNumber.png'),
              onPressed: () {
                print('Right Button was Pressed');
              },
            ),
          ),
        ],
      ),
    );
  }
}
