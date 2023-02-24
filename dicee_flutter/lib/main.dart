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
    return Row(
      children: const [
        Image(
          image: AssetImage('images/dice1.png'),
        ),
        Image(
          image: AssetImage('images/dice2.png'),
        )
      ],
    );
  }
}
