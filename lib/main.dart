import 'package:flutter/material.dart';
import 'package:udemy_quizapp2/start_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 57, 6, 114),
              Color.fromARGB(255, 62, 9, 97),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            ),
          ),
        child: StartScreen()),
      ),
    ),
  );
}
