import 'package:flutter/material.dart';
import 'package:flutter_study/shared/consts/consts.dart';

class NewTasksScreen extends StatelessWidget {
  const NewTasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Text(tasks[index][1]),
                Text(tasks[index][2]),
                Text(tasks[index][3]),
              ],
            );
          },
          separatorBuilder: (context, index) => const SizedBox(height: 16),
          itemCount: tasks.length
      ),
    );
  }
}
