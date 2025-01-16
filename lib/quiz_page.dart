import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];
  List<String> questions = [
    'You can lead a cow down stairs but not up stairs.',
    'Approximately one quarter of human bones are in the feet.',
    'A slug\'s blood is green.',
  ];

  int questionNumber = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.white,
              width: double.infinity,
              child: Center(
                child: Text(
                  "Questions will go here?",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Center(
                  child: MyButton(
                    "True",
                    Colors.green,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: MyButton(
                    "False",
                    Colors.red,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.check,
                      color: Colors.green,
                    ),
                    Icon(
                      Icons.close,
                      color: Colors.red,
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton(this.theText, this.color1, {super.key});

  final String theText;
  final Color color1;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: color1,
        ),
        child: SizedBox(
          width: 300,
          height: 50,
          child: Center(
            child: Text(
              theText,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
