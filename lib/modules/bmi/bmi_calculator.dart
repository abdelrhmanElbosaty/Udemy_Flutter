
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_study/modules/bmi/bmi_Result.dart';

class BmiCalculator extends StatefulWidget {
  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {

  bool isMale = true;
  double sliderValue = 100;
  int age = 24;
  int weight = 78;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: const Text(
          'BMI Calculator',
          style: TextStyle(
            color: Colors.redAccent,
            fontSize: 24,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                   color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        bottom: 24,
                        left: 24,
                        right: 24,
                        top: 38,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: (){
                                setState(() {
                                  isMale = true;
                                });
                              },
                              child: Container(
                                decoration:  BoxDecoration(
                                  borderRadius:  BorderRadius.all(Radius.circular(8)),
                                  color: isMale ? Colors.blue : Colors.grey[400],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(24.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Image(
                                        width: 100,
                                          image: NetworkImage('https://icons.iconarchive.com/icons/custom-icon-design/flatastic-7/512/Male-icon.png'),
                                      ),
                                      SizedBox(
                                        height: 16,
                                      ),
                                      Text(
                                          'Male',
                                        style: TextStyle(
                                          fontSize: 32,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 24),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isMale = false;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                 color: !isMale ? Colors.blue : Colors.grey[400],
                                  borderRadius: BorderRadius.all(Radius.circular(8)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(24.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Image(
                                          width: 100,
                                          image: NetworkImage('https://icons.iconarchive.com/icons/custom-icon-design/flatastic-7/512/Female-icon.png'),
                                      ),
                                      SizedBox(height: 16),
                                      Text(
                                        'Female',
                                        style: TextStyle(
                                          fontSize: 32,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                 ),
                  Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 8,
                        right: 24,
                          left: 24,
                        bottom: 8,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey[400],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                  'Height',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                children: [
                                  Text(
                                    '${sliderValue.round()}',
                                    style: const TextStyle(
                                      fontSize: 32,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Text(
                                    'cm',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Slider(
                                  value: sliderValue,
                                  max: 220,
                                  min: 0,
                                  onChanged: (value) {
                                    setState(() {
                                        sliderValue = value;
                                    });
                                  }
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(
                      bottom: 32,
                      left: 24,
                      right: 24,
                      top: 24,
                    ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              width:  double.infinity,
                              decoration:  BoxDecoration(
                                borderRadius: const BorderRadius.all(Radius.circular(8)),
                                color: Colors.grey[400],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(24.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                    'Weight',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 28,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                     Text(
                                      '${weight}',
                                      style: const TextStyle(
                                        fontSize: 60,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        FloatingActionButton(
                                          onPressed: (){
                                            setState(() {
                                              if (weight != 0) {
                                                weight --;
                                              }
                                            });
                                          },
                                          heroTag: 'Weight--',
                                          mini: true,
                                          child: const Icon(
                                            Icons.remove,
                                          ),
                                        ),
                                        const SizedBox(width: 16),
                                        FloatingActionButton(
                                          onPressed: (){
                                            setState(() {
                                              weight++;
                                            });
                                          },
                                          heroTag: 'Weight++',
                                          mini: true,
                                          child: const Icon(
                                            Icons.add,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 24),
                          Expanded(
                            child: Container(
                              width:  double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(Radius.circular(8)),
                                color: Colors.grey[400],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(24.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      'Age',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 28,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                     Text(
                                      '${age}',
                                      style: const TextStyle(
                                          fontSize: 60,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        FloatingActionButton(
                                            onPressed: (){
                                              setState(() {
                                                if (age != 0) {
                                                  age--;
                                                }
                                              });
                                            },
                                          heroTag: 'Age--',
                                          mini: true,
                                          child: const Icon(
                                            Icons.remove,
                                          ),
                                        ),
                                        const SizedBox(width: 16),
                                        FloatingActionButton(
                                          onPressed: (){
                                            setState(() {
                                              age++;
                                            });
                                          },
                                          heroTag: 'Age++',
                                          mini: true,
                                          child: const Icon(
                                            Icons.add,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 80,
            color: Colors.redAccent,
            child: MaterialButton(onPressed: () {
              double res;
              if (sliderValue != 0) {
                res = (weight / pow(sliderValue / 100, 2));
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BmiResult(
                      age: age,
                      gender: isMale ? 'Male' : 'Female',
                      result: res.round(),
                    ),
                  ),
                );
              } else {
                print('Fuck of');
              }
            },
              child: const Text(
                'Calculate',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}