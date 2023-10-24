import 'package:flutter/material.dart';
import 'package:first_app/answer_button.dart';
import 'package:first_app/data/question_data.dart';
import 'package:google_fonts/google_fonts.dart';

class Questions extends StatefulWidget {
  const Questions(this.setSelected, {Key? key});
  final void Function(String) setSelected;

  @override
  State<Questions> createState() {
    return _QuestionsState();
  }
}

class _QuestionsState extends State<Questions> {
  var variable = 0;

  @override
  Widget build(context) {
    void change_question(String answer) {
      widget.setSelected(answer);

      setState(() {
        variable += 1;
      });
    }

    final current_question = questions[variable];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              current_question.text,
              style: GoogleFonts.aBeeZee(
                color: Colors.white,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            AnswerButton(current_question.answer[0], () {
              change_question(current_question.answer[0]);
            }),
            const SizedBox(height: 10),
            AnswerButton(current_question.answer[1], () {
              change_question(current_question.answer[1]);
            }),
            const SizedBox(height: 10),
            AnswerButton(current_question.answer[2], () {
              change_question(current_question.answer[2]);
            }),
            const SizedBox(height: 10),
            AnswerButton(current_question.answer[3], () {
              change_question(current_question.answer[3]);
            }),
          ],
        ),
      ),
    );
  }
}
