import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      //if you want to able below code then first you will have to disable the above statement...
      // width: double.infinity,
      // height: 40,
      margin: EdgeInsets.only(
        right: 50,
        left: 50,
        bottom: 20,
        top: 20,
      ),
      child: ElevatedButton(
        child: Text(answerText),
        onPressed: selectHandler,
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          onPrimary: Colors.white,
          shadowColor: Colors.blue,
          textStyle: TextStyle(
            fontSize: 20,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
