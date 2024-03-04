import 'package:flutter/material.dart';

class ResultBox extends StatelessWidget {
  const ResultBox(this.dataSummery ,{super.key});
  final List<Map<String , Object>> dataSummery ;
  @override
  Widget build(BuildContext context) {
    return  
       Column(
        
        children: dataSummery.map((e) => Row(
          children: [
            Text(e['index'].toString()),
            
            Column(
              children: [
                Text(e['question'].toString()),
                Text('Your Ans: ${e['your_ans'].toString()}'),
                Text('Correct Ans: ${e['correct_ans'].toString()}'),

              ],
            )
          ],
        )
        ).toList()
      );
  }
}