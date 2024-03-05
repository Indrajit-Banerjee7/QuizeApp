import 'package:flutter/material.dart';

class ResultBox extends StatelessWidget {
  const ResultBox(this.dataSummary, {Key? key}) : super(key: key);

  final List<Map<String, Object>> dataSummary;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: dataSummary.map((e) {
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
                        color: Colors.white, // Text color set to white
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
                            color: Colors.white, // Text color set to white
                          ),
                        ),
                        const SizedBox(height: 4), // Adjust spacing between question and answers
                        Text(
                          'Your Ans: ${e['your_ans'].toString()}',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: e['your_ans'] == e['correct_ans']
                                ? Colors.greenAccent // Highlight correct answer
                                : Colors.redAccent, // Highlight incorrect answer
                          ),
                        ),
                        SizedBox(
                          child: Text(
                            'Correct Ans: ${e['correct_ans'].toString()}',
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.yellowAccent, // Text color set to yellow
                            ),
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
