import 'package:first_app/circle_number.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({Key? key, required this.summaryData}) : super(key: key);

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    

    return SingleChildScrollView(
      child: Column(
        children: summaryData.map((data) {
          
          return Row(
            
            children: [
               Circles(data:data),
             
        
              
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(data['questions'] as String,style: GoogleFonts.labrada(color: Colors.white,fontSize: 15),),
                    const  SizedBox(height: 5),
                    Text(data['corrected_answers'] as String,style: GoogleFonts.lato(color: Colors.lightBlue,fontSize: 9),),
                    Text(data['selected_answer'] as String,style: GoogleFonts.aleo(color: Colors.lightGreen,fontSize: 9),),
                    
                  ],
                ),
              ),
            ],
          );
        }).toList(),
      ),
    );
  }
}
