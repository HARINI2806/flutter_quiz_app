import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  @override
  Result(this.resultScore, this.resetHandler);
  String get resultPhrase {
    var resultText;
    if (resultScore >= 8) {
      resultText = 'You completed the Quiz! Awesome!' +
          '\n Your Score is:' +
          resultScore.toString();
    } else if (resultScore < 8 && resultScore >= 5) {
      resultText = 'You completed the Quiz! Good Job!' +
          '\n Your Score is:' +
          resultScore.toString();
    } else {
      resultText = 'You completed the Quiz! Need to improve!' +
          '\n Your Score is:' +
          resultScore.toString();
    }
    return resultText;
  }

  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          RaisedButton(
            child: Text(
              'Restart Quiz!?',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
            textColor: Colors.deepPurpleAccent,
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
