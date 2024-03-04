import 'package:flutter/material.dart';

class ResultBox extends StatelessWidget {
  const ResultBox(this.dataSummery, {Key? key}) : super(key: key);

  final List<Map<String, Object>> dataSummery;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: dataSummery.map((e) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 40, // Adjust according to your needs
                    child: Text(
                      e['index'].toString(),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10), // Adjust spacing between index and question
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          e['question'].toString(),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 4), // Adjust spacing between question and answers
                        Text(
                          'Your Ans: ${e['your_ans'].toString()}',
                          style: TextStyle(
                            fontSize: 14,
                            color: e['your_ans'] == e['correct_ans']
                                ? const Color.fromARGB(255, 26, 64, 26) // Highlight correct answer
                                : Colors.red, // Highlight incorrect answer
                          ),
                        ),
                        Text(
                          'Correct Ans: ${e['correct_ans'].toString()}',
                          style: const TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 44, 100, 46),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
