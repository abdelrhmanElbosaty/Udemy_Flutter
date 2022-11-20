
import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {

  final int result;
  final String gender;
  final int age;

  BmiResult({
    required this.age,
    required this.gender,
    required this.result
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Result',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Gender is: ${gender}',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            Text(
                'Result is: ${result}',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            Text(
              'Age is: ${age}',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,

              ),
            ),
          ],
        ),
      ),
    );
  }
}
