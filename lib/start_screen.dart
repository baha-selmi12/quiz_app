import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {

  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;
  
  @override
  Widget build(BuildContext context) {
    return Center(child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('assets/images/quiz-logo.png', height: 370, color: Color.fromARGB(150, 255, 255, 255),),
              const SizedBox(height: 100),
              const Text('Learn Flutter the fun way!', style: TextStyle(color: Colors.white, fontSize: 27),),
              const SizedBox(height: 30),
              OutlinedButton.icon(
                onPressed: () {startQuiz();},
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.white, width: 1)
                ), 
                icon: const Icon(Icons.arrow_right),
                label: const Text("Start Quiz", 
                  style: TextStyle(color: Colors.white, 
                  fontSize: 20),
                  ),
              )
            ],
          ),
          );
  }
}