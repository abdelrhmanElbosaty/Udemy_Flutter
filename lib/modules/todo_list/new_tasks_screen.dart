import 'package:flutter/material.dart';

class NewTasksScreen extends StatelessWidget {
  const NewTasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
          'New tasks',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}
