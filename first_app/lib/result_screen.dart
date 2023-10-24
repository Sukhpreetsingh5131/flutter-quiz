import 'package:flutter/material.dart';
import 'package:first_app/data/question_data.dart'; // Import your question data here
import 'package:first_app/question_summary.dart';
import 'package:google_fonts/google_fonts.dart'; // Import the QuestionSummary class

class ResultScreen extends StatelessWidget {
  const ResultScreen({required this.choose_answer, Key? key}) : super(key: key);

  final List<String> choose_answer;

  @override
  Widget build(BuildContext context) {
    var count = 0; // Initialize count as 0
    var totalQuestions = choose_answer.length;

    List<Map<String, Object>> getSummaryData() {
      final List<Map<String, Object>> summary = [];
      for (var i = 0; i < choose_answer.length; i++) {
        if (questions[i].answer[0] == choose_answer[i]) {
          
          count += 1; // Increment count only when the answer is correct
        };

        summary.add({
          'question_index': i,
          'questions': questions[i].text,
          'corrected_answers': questions[i].answer[0],
          'selected_answer': choose_answer[i],
        });
      }
      return summary;
    }

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You answered correctly $count out of $totalQuestions', style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 18,
            )),
            const SizedBox(height: 20),
            QuestionSummary(summaryData: getSummaryData()),
            const SizedBox(height: 20),
            TextButton.icon(onPressed:(){} ,label: const Text('Restart Quiz'),icon:const Icon(Icons.restart_alt_rounded)),
            // Add your content here
          ],
        ),
      ),
    );
  }
}
