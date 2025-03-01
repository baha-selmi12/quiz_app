import 'package:flutter/material.dart';


class AnswerButton extends StatelessWidget {
  const AnswerButton(this.answerText, this.onTap ,{super.key});

  final String answerText;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {

    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 151, 93, 232),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40)
      ),
      child: Text(answerText, textAlign: TextAlign.center,));
  }
}
