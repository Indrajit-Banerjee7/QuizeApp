import 'package:flutter/material.dart';
import 'package:quize_app/answer_button.dart';
import 'package:quize_app/data/questionsdata.dart';
//import 'package:quize_app/quiz.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen(this.onSlectAns, {super.key});

  final void Function(String ans) onSlectAns;

  @override
  State<StatefulWidget> createState() {
    return _QestionScreenState();
  }
}

class _QestionScreenState extends State<QuestionScreen> {
  var count = 0;

  void ansTap(String ansString) {
    
    widget.onSlectAns(ansString);
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var currentQ = quetions[count];

    return Container(
      margin: const EdgeInsets.all(20),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Text(
                currentQ.text,
                //styling have to be added
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentQ.suffeledans().map(
              (item) {
                return AnswerButton(() {
                  ansTap(item);
                }, item);
              },
            ),
          ],
        ),
      ),
    );
  }
}
