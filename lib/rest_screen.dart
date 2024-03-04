import 'package:flutter/material.dart';
import 'package:quize_app/data/questionsdata.dart';
import 'package:quize_app/restultbox.dart';


class ResultScreen extends StatelessWidget{
  const  ResultScreen(this.anslistResScreen, this.restartButton ,{super.key});
  final List<String>anslistResScreen ;
  final void Function() restartButton ;

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
  //const b = resultSummeryfunc() ;
  

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> summery = resultSummeryfunc();
    final totalq = quetions.length ;
    final correctA = summery.fold(0, (prev, element) => prev + (element['correct_ans'] == element['your_ans'] ? 1 : 0)); // Calculate a 

    return Center(child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'You have answered $correctA out of $totalq questions currectly !' ,
          style: const TextStyle(
            color: Color.fromARGB(255, 144, 48, 4),
          ),
        
        ),
        const SizedBox(
          height: 25,
        ),
         SizedBox(
          width: 300,
          height: 380,
          child:ResultBox(summery),
         ),
        //  ...anslistResScreen.map(
        //       (item) {
        //         return Text(item);
        //       },
        //     ),
        
        const SizedBox(
          height: 25,
        ),
        ElevatedButton(onPressed: restartButton, style: ElevatedButton.styleFrom(
          foregroundColor: const Color.fromARGB(255, 17, 16, 16),
          backgroundColor: const Color.fromARGB(255, 166, 252, 177),
        ),
         child: const Text('restart quiz'),
         ),
      ],
    ),);
  }
}