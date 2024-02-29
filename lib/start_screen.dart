import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

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
          const Text('Try Luring flutter the fun way!' , style: TextStyle(
            color: Color.fromARGB(255, 238, 242, 243),
            fontSize: 23 , 
          ),),
          const SizedBox(
            height: 80,
          ),
          OutlinedButton(
            onPressed: () {},
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
