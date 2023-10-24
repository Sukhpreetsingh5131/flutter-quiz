import 'package:flutter/material.dart';

import 'package:first_app/main_screen.dart';
import 'package:first_app/quiz.dart'; // Import the Questions class
import 'package:first_app/data/question_data.dart';
import 'package:first_app/result_screen.dart';
class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions_screen';
    });
  }

  void setSelectedAnswer(String answer) {
    setState(() {
      selectedAnswers.add(answer);
     
      if(selectedAnswers.length==questions.length){
        

        setState(() {
          activeScreen='result-screen';
        });
      }
    });

  }

  @override
  Widget build(context) {
    Widget screenWidget = MainScreen(switchScreen);

    if (activeScreen == 'questions_screen') {
      screenWidget = Questions(setSelectedAnswer); // Update the widget to Questions() here
    }
    if(activeScreen=='result-screen'){
      screenWidget=ResultScreen(choose_answer:selectedAnswers);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.purple,
                Colors.blue,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}


