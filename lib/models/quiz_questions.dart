import 'package:quizzler/models/question_class.dart';

class QuizBrain {
  List<Question> allQuestions = [
    Question(
        question: 'Some cats are actually allergic to humans',
        questionAnswer: true),
    Question(
        question: 'You can lead a cow down stairs but not up stairs.',
        questionAnswer: false),
    Question(
        question: 'Approximately one quarter of human bones are in the feet.',
        questionAnswer: true),
    Question(question: 'A slug\'s blood is green.', questionAnswer: true),
    Question(
        question: 'Buzz Aldrin\'s mother\'s maiden name was \"Moon\".',
        questionAnswer: true),
    Question(
        question: 'It is illegal to pee in the Ocean in Portugal.',
        questionAnswer: true),
    Question(
        question:
            'No piece of square dry paper can be folded in half more than 7 times.',
        questionAnswer: false),
    Question(
        question:
            'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        questionAnswer: true),
    Question(
        question:
            'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        questionAnswer: false),
    Question(
        question:
            'The total surface area of two human lungs is approximately 70 square metres.',
        questionAnswer: true),
    Question(
        question: 'Google was originally called \"Backrub\".',
        questionAnswer: true),
    Question(
        question:
            'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        questionAnswer: true),
    Question(
        question:
            'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        questionAnswer: true),
  ];

  bool getCorrectAns(int questionNum) {
    return allQuestions[questionNum].questionAnswer;
  }

  String getText(int questionNum) {
    return allQuestions[questionNum].question;
  }
}
