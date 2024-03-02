import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});
  @override
  State<StatefulWidget> createState() {
    return _QestionScreenState();
  }
}

class _QestionScreenState extends State<QuestionScreen>{
  @override
  Widget build(BuildContext context) {
   return Center(
     child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text('Question'),
        const SizedBox(height: 30,),
        ElevatedButton(onPressed: () {}, child: const Text('ans1')),
        ElevatedButton(onPressed: () {}, child: const Text('ans1')),
        ElevatedButton(onPressed: () {}, child: const Text('ans1')),
        ElevatedButton(onPressed: () {}, child: const Text('ans1')),
      ],
     ),
   );
  }
}