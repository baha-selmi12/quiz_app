import 'package:flutter/material.dart';
import 'package:adv_basics/start_screen.dart';
import 'package:adv_basics/questions_screen.dart';
import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = "start-screen";

  void switchScreen() {
    setState(() {
      activeScreen = "questions-screen";
    });
  }

   void chooseAnswer(String answer){
    selectedAnswers.add(answer);
    if(selectedAnswers.length == questions.length) {
      setState(() {
      activeScreen = 'results-screen';
    });
    }
   }
   void onRestartButton(){
      setState(() {
        selectedAnswers= [];
        activeScreen = 'questions-screen';

      });
    }


  @override
  Widget build(BuildContext context) {
    Widget activeWidget =StartScreen(switchScreen);
    if(activeScreen=="questions-screen"){
      activeWidget= QuestionsScreen(onSelectAnswer: chooseAnswer);
      
    }
    if(activeScreen=="results-screen"){
      activeWidget= ResultsScreen(chosenAnswers: selectedAnswers, onRestart: onRestartButton,);
      }

    

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 245, 150, 150),
                Color.fromARGB(255, 240, 52, 52)
              ],
            ),
          ),
          child: activeWidget,
        ),
      ),
    );
  }
}
