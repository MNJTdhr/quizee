//quiz brain, um actually its data sheet
import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;
  int _answerNumber = 0;

  final List<Question> _questionBank = [
    Question(
        quizQuestions: 'Some cats are actually allergic to humans',
        quizAnswers: true),
    Question(
        quizQuestions: 'You can lead a cow down stairs but not up stairs.',
        quizAnswers: false),
    Question(
        quizQuestions:
            'Approximately one quarter of human bones are in the feet.',
        quizAnswers: true),
    Question(quizQuestions: 'A slug\'s blood is green.', quizAnswers: true),
    Question(
        quizQuestions: 'Buzz Aldrin\'s mother\'s maiden name was "Moon".',
        quizAnswers: true),
    Question(
        quizQuestions: 'It is illegal to pee in the Ocean in Portugal.',
        quizAnswers: true),
    Question(
        quizQuestions:
            'No piece of square dry paper can be folded in half more than 7 times.',
        quizAnswers: false),
    Question(
        quizQuestions:
            'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        quizAnswers: true),
    Question(
        quizQuestions:
            'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        quizAnswers: false),
    Question(
        quizQuestions:
            'The total surface area of two human lungs is approximately 70 square metres.',
        quizAnswers: true),
    Question(
        quizQuestions: 'Google was originally called "Backrub".',
        quizAnswers: true),
    Question(
        quizQuestions:
            'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        quizAnswers: true),
    Question(
        quizQuestions:
            'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        quizAnswers: true),
    Question(quizQuestions: 'The End', quizAnswers: false),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
      _answerNumber++;
    }
  }

  String getquestionText() {
    return _questionBank[_questionNumber].quizQuestions;
  }

  bool getquestionAnswer() {
    return _questionBank[_answerNumber].quizAnswers;
  }
}
