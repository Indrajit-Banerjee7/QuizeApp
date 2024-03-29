//import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:quize_app/questions_screen.dart';
import 'package:quize_app/start_screen.dart';
import 'package:quize_app/data/questionsdata.dart';
import 'package:quize_app/rest_screen.dart';



class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<StatefulWidget> createState() {
    return _QuizeState() ; 
  }
}

class _QuizeState extends State<Quiz> {

  Widget? activescreen ;   
  final List<String> anslist = [] ; 
  

  @override
  void initState() {
    activescreen = StartScreen(setscreen) ;
    super.initState();
  }

  void setscreen (){
    setState(() {
      activescreen = QuestionScreen(getAns) ; 
    });
  }

  void getAns(String ans){
    anslist.add(ans);
    //print(anslist);
    if(anslist.length>=quetions.length){
      setState(() {
        activescreen =  ResultScreen(anslist , restartButton) ; 
      });
    }
  }

  void restartButton (){
    anslist.clear();
    setState(() {
      activescreen = StartScreen(setscreen);
    });
  }


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
        child: activescreen,
      ),
    ),
  );
  }
}