import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  String resultText = '';
  Result(this.totalScore, {Key? key}) : super(key: key);

  String get resultPhrase {
    return resultText = 'your score is : ' + totalScore.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          Text(
            totalScore <= 20 ? ' Better luck next time !' : ' You won !',
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Text(
            resultPhrase,
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
