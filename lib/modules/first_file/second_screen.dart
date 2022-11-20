
import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        elevation: 2,
        leading: IconButton(
        onPressed: () => print('Menu Pressed'),
        icon: Icon(
            Icons.menu
          ),
          iconSize: 24,
        ),
        leadingWidth: 45,
        title: Text(
          'Second Screen'
        ),
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontSize: 22,
          color: Colors.white
        ),
        actions: [
          IconButton(
            onPressed: () => print('Search Button'),
            icon: Icon(
                Icons.search_rounded
            ),
          ),
          IconButton(
              onPressed: () => print('Notifiction Button'),
              icon: Icon(
                Icons.notifications
              ),
          ),
        ],
      ),
      body: Container(
        color: Colors.brown,
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Expanded(
            //   child: Container(
            //     child: Text(
            //       'First Line',
            //       style: TextStyle(
            //         color: Colors.indigoAccent,
            //         fontSize: 25,
            //         backgroundColor: Colors.redAccent,
            //       ),
            //     ),
            //     color: Colors.redAccent,
            //   ),
            // ),
            // Expanded(
            //   child: Container(
            //     child: Text(
            //       'Second Line',
            //       style: TextStyle(
            //         color: Colors.purple,
            //         fontSize: 25,
            //         backgroundColor: Colors.cyan,
            //       ),
            //     ),
            //     color: Colors.cyan,
            //   ),
            // ),
            // Expanded(
            //   flex: 3,
            //   child: Container(
            //     child: Text(
            //       'Third Line',
            //       style: TextStyle(
            //         color: Colors.redAccent,
            //         fontSize: 25,
            //         backgroundColor: Colors.amberAccent,
            //       ),
            //     ),
            //     color: Colors.amberAccent,
            //   ),
            // ),
            // Container(
            //   child: Text(
            //     'Third Line',
            //     style: TextStyle(
            //       color: Colors.redAccent,
            //       fontSize: 25,
            //       backgroundColor: Colors.amberAccent,
            //     ),
            //   ),
            //   color: Colors.amberAccent,
            // ),
            // Container(
            //   child: Text(
            //     'Third Line',
            //     style: TextStyle(
            //       color: Colors.redAccent,
            //       fontSize: 25,
            //       backgroundColor: Colors.amberAccent,
            //     ),
            //   ),
            //   color: Colors.amberAccent,
            // ),
            // Container(
            //   child: Text(
            //     'Third Line',
            //     style: TextStyle(
            //       color: Colors.redAccent,
            //       fontSize: 25,
            //       backgroundColor: Colors.amberAccent,
            //     ),
            //   ),
            //   color: Colors.amberAccent,
            // ),
            Padding(
              padding: const EdgeInsets.all(60.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image(
                        image: NetworkImage(
                            'https://thumbs.dreamstime.com/b/sun-flower-transparent-background-additional-png-file-greeting-cards-holiday-wishes-sun-flower-transparent-129371261.jpg'
                        ),
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      child: Text(
                        'He',
                        style: TextStyle(
                          fontSize: 20,
                         color: Colors.white
                        ),
                        textAlign: TextAlign.center,
                      ),
                      width: 200,
                      color: Colors.black.withOpacity(0.8),
                      padding: EdgeInsets.symmetric(
                        vertical: 6,
                        horizontal: 7
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
