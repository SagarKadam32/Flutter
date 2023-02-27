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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: TextButton(
            child: Image.asset('images/dice1.png'),
            onPressed: () {
              print('Left Button Pressed');
            },
          )),
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice2.png'),
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
