//import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:quize_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<StatefulWidget> createState() {
    return _QuizeState() ; 
  }
}

class _QuizeState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: 
         [ Colors.blue,
          Colors.cyan ,
          Colors.green,], 
          stops: [0.0 , 0.5 , 1.0],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight, 
          )
        ),
        child: const StartScreen(),
      ),
    ),
  );
  }
}