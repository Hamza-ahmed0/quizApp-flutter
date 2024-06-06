import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler , this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.grey[50]
      ),
      child: ElevatedButton(onPressed: selectHandler,
       child: Text(answerText , style:TextStyle(fontSize: 24,
       color: Colors.black
       ) 
       ,),
       style: ElevatedButton.styleFrom(
         padding: EdgeInsets.all(20),
         primary: Colors.lime,
       ),
       ),
    );
  }
}
