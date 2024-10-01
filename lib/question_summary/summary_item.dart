import 'package:adv_basics/question_summary/question_identifier.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData,{super.key});
  final Map<String, Object> itemData;
  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer = itemData['user_answer'] == itemData['correct_answer'];
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(isCorrect: isCorrectAnswer, question_index: itemData['question_index'] as int,),
        const SizedBox(width: 20,),
        Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(itemData['question'] as String, style: GoogleFonts.afacad(fontSize: 20, color: Colors.white), textAlign: TextAlign.left,),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(itemData['user_answer'] as String, style: GoogleFonts.afacad(fontSize: 15, color: const Color.fromARGB(255, 32, 35, 35)), textAlign: TextAlign.left,),
                      Text(itemData['correct_answer'] as String, style: GoogleFonts.afacad(fontSize: 15, color: const Color.fromARGB(255, 85, 243, 125)), textAlign: TextAlign.left,),
                    ],
                  ),
                ),
      ],
    );
  }
}