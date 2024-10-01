import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier({
    super.key,
    required this.question_index,
    required this.isCorrect,
  });
  final int question_index;
  final bool isCorrect;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height :30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrect? const Color.fromARGB(255, 143, 180, 137): const Color.fromARGB(255, 108, 69, 69),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        question_index.toString(),
        style: TextStyle(
          fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 255, 224, 224),
        )
      ),
    );
  }
}