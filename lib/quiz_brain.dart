import 'question.dart';

class QuizBrain {
  List<Question> questionBank = [
    Question(
      quizQuestions: 'You can lead a cow down stairs but not up stairs.',
      quizAnswers: false),
    Question(
      quizQuestions: 'Approximately one quarter of human bones are in the feet.',
      quizAnswers: true),
    Question(
      quizQuestions: 'A slug\'s blood is green.',
      quizAnswers: true),
    Question(
      quizQuestions: 'The End',
      quizAnswers: false),
  ];
}