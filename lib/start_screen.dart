import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
   const StartScreen(this.startQuiz ,{super.key});

   final void Function() startQuiz ;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/quiz-logo.png',
            width: 300,
          ),
          const SizedBox(
            height: 81,
          ),
          const Text('Test your Geopolitical Knowledge!' , style: TextStyle(
            color: Color.fromARGB(255, 238, 242, 243),
            fontSize: 23 , 
          ),),
          const SizedBox(
            height: 80,
          ),
          OutlinedButton(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 17, 16, 16),
              backgroundColor: const Color.fromARGB(255, 166, 252, 177),
            ),
            child: const  Text('Start Quiz' ),
          ),
        ],
      ),
    );
  }
}
