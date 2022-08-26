import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore >= 50) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore >= 40) {
      resultText = 'Pretty likeable!';
    } else if (resultScore >= 30) {
      resultText = 'You are ... strange?!';
    } else if (resultScore >= 20) {
      resultText = 'Not bad...!';
    } else if (resultScore >= 10) {
      resultText = 'Need to improve, buddy...';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
              top: 30,
              bottom: 10,
              left: 10,
              right: 10,
            ),
            child: Text(
              resultPhrase,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            // ignore: deprecated_member_use
            child: FlatButton(
              child: Text(
                'Restart Quiz!',
              ),
              textColor: Colors.blue,
              onPressed: resetHandler,
            ),
          ),
        ],
      ),
    );
  }
}
