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
    'The End',
  ];
  List<bool> correctAnswer = [false, true, true, false];
  int questionNumber = 0;
  int answerNumber = 0;

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
                  questions[questionNumber],
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
                  child: TextButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.green),
                    onPressed: () {
                      if (correctAnswer[answerNumber] == true) {
                        debugPrint("correct");
                      } else {
                        debugPrint("wrong");
                      }
                      setState(
                        () {
                          questionNumber++;
                          answerNumber++;
                        },
                      );
                    },
                    child: SizedBox(
                      width: 300,
                      height: 50,
                      child: Center(
                        child: Text(
                          "True",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: TextButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.red),
                    onPressed: () {
                      if (correctAnswer[answerNumber] == false) {
                        debugPrint("Correct");
                      } else {
                        debugPrint("wrong");
                      }
                      setState(
                        () {
                          questionNumber++;
                          answerNumber++;
                        },
                      );
                    },
                    child: SizedBox(
                      width: 300,
                      height: 50,
                      child: Center(
                        child: Text(
                          "False",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
