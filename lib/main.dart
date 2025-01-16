import 'package:flutter/material.dart';
import 'quiz_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quizee"),
          foregroundColor: Colors.white,
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.white,
        body: SafeArea(child: Center(child: QuizPage())),
      ),
    );
  }
}
