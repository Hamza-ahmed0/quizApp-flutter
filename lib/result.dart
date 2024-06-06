import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore >= 30) {
      resultText = 'You are awesome!';
      print(resultScore);
    } else if (resultScore >= 20) {
      resultText = 'Pretty likeable!';
      print(resultScore);
    } else if (resultScore >= 0) {
      resultText = 'This is poor';
      print(resultScore);
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            'Score' '$resultScore',
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 40,
          ),
          ElevatedButton(
            onPressed: resetHandler,
            child: Text("Restart Quiz!"),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(20),
              primary: Colors.lightGreen
            ),

          )
        ],
      ),
    );
  }
}
