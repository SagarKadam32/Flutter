import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: Container(
            height: 100,
            width: 100,
            margin: EdgeInsets.fromLTRB(30, 20, 10, 50),
            padding: EdgeInsets.all(20.0),
            color: Colors.white,
            child: const Text('Hello'),
          ),
        ),
      ),
    );
  }
}
