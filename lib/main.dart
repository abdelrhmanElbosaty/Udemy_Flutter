import 'package:flutter/material.dart';
import 'package:flutter_study/modules/stateless_statefull/stateless_stateful_screen.dart';
import 'modules/bmi/bmi_calculator.dart';
import 'modules/first_file/home_screen.dart';
import 'modules/login/login_screen.dart';
import 'modules/messenger/messenger_screen_with_list.dart';
import 'modules/first_file/second_screen.dart';
import 'modules/messenger/messenger_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
