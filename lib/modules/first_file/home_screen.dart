
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        foregroundColor: Colors.blue,
        elevation: 2,
        leading: Icon(
          Icons.menu,
        ),
        title: Text("Title"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () => print("pressed"),
              icon: Icon( Icons.search_rounded),

          ),
          // Icon(
          //   Icons.search_rounded
          //   ),
          Icon(
            Icons.notifications_active
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            child: Text(
              "Hello1",
              style: TextStyle(
                fontSize: 30,
                color: Colors.amber,
                backgroundColor: Colors.deepOrange,
              ),
            ),
            height: 100,

          ),
          Container(
            child: Text(
              "Hello2",
              style: TextStyle(
                fontSize: 30,
                color: Colors.cyan,
                backgroundColor: Colors.lime,
              ),
            ),
            height: 200,
          ),
          Container(
            child: Text(
              "Hello3",
              style: TextStyle(
                fontSize: 30,
                backgroundColor: Colors.lightBlue,
                color: Colors.deepPurple
              ),
            ),
            height: 300,
          ),
          // Container(
          //   child: Text(
          //     "Hello4",
          //     style: TextStyle(
          //       color: Colors.pink,
          //       fontSize: 30,
          //       backgroundColor: Colors.purple
          //     ),
          //   ),
          //   height: 400,
          // ),
        ]
      ),
    );
  }
}
