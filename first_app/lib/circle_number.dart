import 'package:flutter/material.dart';

class Circles extends StatelessWidget {
  const Circles({required this.data, Key? key}) : super(key: key);

  final Map<String, Object> data;

  @override
  Widget build(BuildContext context) {
    Color circleColor;
    if (data['corrected_answers'] == data['selected_answer']) {
      circleColor = Colors.green;
    } else {
      circleColor = Colors.red;
    }

    return Stack(
      children: [
        Container(
          width: 25,
          height: 24,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: circleColor,
          ),
        ),
        Text(
          ((data['question_index'] as int) + 1).toString(),
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
