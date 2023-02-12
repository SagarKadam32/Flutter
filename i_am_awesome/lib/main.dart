import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.amber,
          appBar: AppBar(
            title: const Text('I Am Awesome'),
            backgroundColor: Colors.purpleAccent,
          ),
          body: const Center(
            child: Image(
              image: AssetImage('images/peace.jpg'),
            ),
          )),
    ),
  );
}
