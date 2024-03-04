import 'package:flutter/material.dart';

class ResultBox extends StatelessWidget {
  const ResultBox(this.dataSummery, {super.key});
  final List<Map<String, Object>> dataSummery;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          children: dataSummery
              .map((e) => Row(
                mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(e['index'].toString()),
                      Expanded(
                        child: Column(
                          children: [
                            Text(e['question'].toString()),
                            Text('Your Ans: ${e['your_ans'].toString()}'),
                            Text('Correct Ans: ${e['correct_ans'].toString()}'),
                          ],
                        ),
                      ) 
                    ],
                  ))
              .toList()),
    );
  }
}
