import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.function, this.opstion, {super.key});
  final String opstion;
  final Function() function;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: function, 
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.black,
        backgroundColor: const Color.fromARGB(255, 166, 252, 177), 
        padding: const EdgeInsets.symmetric(vertical: 10 , horizontal: 40),
      ),
      child: Text(opstion),
      );
  }
}
