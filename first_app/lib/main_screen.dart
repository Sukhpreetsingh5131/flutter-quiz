import 'package:flutter/material.dart';


class MainScreen extends StatelessWidget {
  const MainScreen(this.start_quiz, {Key? key}) : super(key: key);

  final void Function() start_quiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Opacity(
            opacity: 0.9,
            child: Image.asset(
              'assets/images/image-1.png',
              width: 300,
            ),
          ),
          const SizedBox(height: 20),
         const Text(
            'Welcome To Sikh Quiz',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
         const SizedBox(height: 20),
          OutlinedButton.icon(
            onPressed: (){start_quiz();},
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('start quiz'),
          ),
        ],
      ),
    );
  }
}
