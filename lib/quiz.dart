import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;
  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.questionIndex});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Text(questions.elementAt(0)),
        Question(
          questions[questionIndex]['questionText'],
        ),
        //Answers(_answerQuestion),
        //... spread operator
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answers(() => answerQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
