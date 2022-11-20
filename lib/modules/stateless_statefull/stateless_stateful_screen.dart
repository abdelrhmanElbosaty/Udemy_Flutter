
import 'package:flutter/material.dart';

class StatelessStatefulScreen extends StatefulWidget {
  @override
  State<StatelessStatefulScreen> createState() => _StatelessStatefulScreenState();
}

class _StatelessStatefulScreenState extends State<StatelessStatefulScreen> {

  int counter = 1;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Counter',
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  setState(() {
                    counter --;
                  });
                },
                child: const Text(
                  'MINUS',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                '${counter}',
                style: const TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            TextButton(
                onPressed: () {
                  setState(() {
                    counter ++;
                  });
                },
                child: const Text(
                  'PLUS',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}