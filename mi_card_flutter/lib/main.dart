import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.white,
                child: const Text('Container 1'),
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
                child: const Text('Container 2'),
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
                child: const Text('Container 3'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
