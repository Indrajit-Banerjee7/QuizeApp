import 'package:flutter/material.dart';
import 'package:quize_app/data/questionsdata.dart';
import 'package:quize_app/restultbox.dart';


class ResultScreen extends StatelessWidget{
  const ResultScreen(this.anslistResScreen ,{super.key});
  final List<String>anslistResScreen ;

  List<Map<String , Object>> resultSummeryfunc(){
    final List<Map<String, Object>> summery = [];
    for(var i =0 ; i<anslistResScreen.length ; i++){
      summery.add(
        {
          'index' : i+1 ,
          'question' : quetions[i].text ,
          'your_ans' : anslistResScreen[i],
          'correct_ans' : quetions[i].answers[0] ,
        }
      );
    }
    return summery;
  }
  

  @override
  Widget build(BuildContext context) {
    return Center(child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text('You have answered 5 out of 6 questions currectly !'),
        const SizedBox(
          height: 25,
        ),
         const SizedBox(
          
         ),
         ResultBox(resultSummeryfunc()),
        //  ...anslistResScreen.map(
        //       (item) {
        //         return Text(item);
        //       },
        //     ),
        
        const SizedBox(
          height: 25,
        ),
        ElevatedButton(onPressed: (){}, child: const Text('restart quiz'),),
      ],
    ),);
  }
}