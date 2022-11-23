import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CookingScreen extends StatelessWidget {
  const CookingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          RecipeDetailsAppBar(),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'data',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  DefaultTextStyle(
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                      child: Row(
                        children:  [
                          const Text(
                            'Food'
                          ),
                          const SizedBox(width: 8),
                          Container(
                            width: 5,
                            height: 5,
                            decoration: const BoxDecoration(
                              color: Colors.grey,
                              shape: BoxShape.circle
                            ),
                          ),
                          const SizedBox(width: 8 ),
                          const Text(
                              '60 Mins'
                          ),
                        ],
                      )
                  ),
                  const SizedBox(height: 16,),
                  Row(
                    children:  [
                      Container(
                        width: 32,
                        height: 32,
                        decoration: const BoxDecoration(
                            color: Colors.grey,
                            shape: BoxShape.circle
                        ),
                      ),
                      const SizedBox(width: 8 ),
                      const Text(
                          '60 Mins'
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class RecipeDetailsAppBar extends StatelessWidget {
  const RecipeDetailsAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
      ),
      expandedHeight: 200,
      flexibleSpace: FlexibleSpaceBar(
        stretchModes: const [
          StretchMode.blurBackground,
          StretchMode.zoomBackground
        ],
        background: Image.asset(
          'assets/images/foodPic.png',
          fit: BoxFit.cover,
        ),
      ),
      elevation: 0,
      pinned: true,
      stretch: true,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: Container(
          alignment: Alignment.center,
          height: 43,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32),
              topRight: Radius.circular(32),
            ),
          ),
          child: Container(
            alignment: Alignment.center,
            height: 5,
            width: 40,
            decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(100))),
          ),
        ),
      ),
      leadingWidth: 80,
      leading: Container(
        margin: const EdgeInsetsDirectional.only(start: 24),
        child: Container(
          height: 56,
          width: 56,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.40),
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.arrow_back,
            color: Colors.brown,
          ),
        ),
      ),
    );
  }
}
