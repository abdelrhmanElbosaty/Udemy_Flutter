import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_study/modules/todo_list/archived_tasks_screen.dart';
import 'package:flutter_study/modules/todo_list/done_tasks_screen.dart';
import 'package:flutter_study/modules/todo_list/new_tasks_screen.dart';
import 'package:flutter_study/shared/components/default_button.dart';
import 'package:intl/intl.dart';
import 'package:sqflite/sqflite.dart';
import '../shared/consts/consts.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentIndex = 0;

  List<Widget> screens = [
    NewTasksScreen(),
    DoneTasksScreen(),
    ArchivedTasksScreen(),
  ];

  List<String> titles = const ['New Tasks', 'Done Tasks', 'Archived Tasks'];

  Database? dataBase;


  var scaffoldKey = GlobalKey<ScaffoldState>();
  var formKey = GlobalKey<FormState>();
  var isBottomSheetShown = false;

  var titleController = TextEditingController();
  var timeController = TextEditingController();
  var dateController = TextEditingController();
  IconData floatingIcon = Icons.edit;

  @override
  void initState() {
    super.initState();

    createDataBase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text(
          titles[currentIndex],
        ),
        leading: const SizedBox(),
      ),
      body: screens[currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (isBottomSheetShown) {
            if (formKey.currentState?.validate() != null) {
              if (formKey.currentState!.validate()) {
                insertInDataBase(
                        title: titleController.text,
                        date: dateController.text,
                        time: timeController.text)
                    .then((value) {
                  Navigator.pop(context);
                  isBottomSheetShown = false;
                  titleController.clear();
                  dateController.clear();
                  timeController.clear();
                  setState(() {
                    floatingIcon = Icons.edit;
                  });
                });
              }
            }
          } else {
            scaffoldKey.currentState
                ?.showBottomSheet((context) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        top: 32, right: 24, left: 24, bottom: 24),
                    child: Form(
                      key: formKey,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          defaultTextField(
                            verticalContentPadding: 10,
                            horizontalContentPadding: 10,
                            controller: titleController,
                            keyboardType: TextInputType.name,
                            validate: (String value) {
                              if (value.isEmpty) {
                                return "please enter title";
                              }
                              return null;
                            },
                            labelName: 'Task title',
                          ),
                          const SizedBox(height: 16),
                          defaultTextField(
                            showKeyboard: false,
                            verticalContentPadding: 10,
                            horizontalContentPadding: 10,
                            controller: timeController,
                            keyboardType: TextInputType.name,
                            validate: (String value) {
                              if (value.isEmpty) {
                                return "please enter Time";
                              }
                              return null;
                            },
                            labelName: 'Task time',
                            onTap: () {
                              showTimePicker(
                                context: context,
                                initialTime: TimeOfDay.now(),
                              ).then((value) {
                                if (value != null) {
                                  timeController.text =
                                      value.format(context).toString();
                                }
                              });
                            },
                          ),
                          const SizedBox(height: 16),
                          defaultTextField(
                            showKeyboard: false,
                            verticalContentPadding: 10,
                            horizontalContentPadding: 10,
                            controller: dateController,
                            keyboardType: TextInputType.name,
                            validate: (String value) {
                              if (value.isEmpty) {
                                return "please enter Date";
                              }
                              return null;
                            },
                            labelName: 'Task Date',
                            onTap: () {
                              showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime.now(),
                                      lastDate: DateTime.parse('2023-09-20'))
                                  .then((value) {
                                if (value != null) {
                                  dateController.text = DateFormat.yMMMd()
                                      .format(value)
                                      .toString();
                                }
                              });
                              // await selectDate();
                            },
                          )
                        ],
                      ),
                    ),
                  );
                })
                .closed
                .then((value) {
                  isBottomSheetShown = false;
                  titleController.clear();
                  dateController.clear();
                  timeController.clear();
                  setState(() {
                    floatingIcon = Icons.edit;
                  });
                });
            isBottomSheetShown = true;
            setState(() {
              floatingIcon = Icons.add;
            });
          }
        },
        // onPressed: () async {
        //   await insertInDataBase();
        //
        //   // getName().then((value) {
        //   //   print(value);
        //   //   throw('error error');
        //   // }).catchError((error) {
        //   //   print(error.toString());
        //   // });
        //
        //   // try {
        //   //   var name = await getName() ;
        //   //   print(name);
        //   //
        //   //   throw('error');
        //   // } catch(error) {
        //   //   print(error.toString());
        //   // }
        //
        //   // var name = await getName() ;
        //   // print(name);
        // },
        child: Icon(floatingIcon),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Todo'),
          BottomNavigationBarItem(icon: Icon(Icons.done_all), label: 'done'),
          BottomNavigationBarItem(icon: Icon(Icons.archive), label: 'archived'),
        ],
      ),
    );
  }

  // Future<void> _selectDate(BuildContext context) async {
  //   final DateTime? picked = await showDatePicker(
  //     context: context,
  //     initialDate: selectedDate,
  //     firstDate: DateTime(2021, 1, 1),
  //     lastDate: DateTime(2022, 1, 1),
  //   );
  // }

// Future<Void?> selectDate() async {
//     final DateTime? picked = await showDatePicker(
//         context: context,
//         initialDate: DateTime.now(),
//         firstDate: DateTime.now(),
//         lastDate: DateTime.parse('2022/09/29')
//     ).then((value) {
//       return value;
//     }).catchError((error){
//       return null;
//     });
//     return null;
//   }

  Future<String> getName() async {
    return 'Ahmed Ali';
  }

  void createDataBase() async {
    await openDatabase(
      'todo.db',
      version: 1,
      onCreate: (database, version) {
        print('DataBase created');
        database.execute(
            'CREATE TABLE task (id INTEGER PRIMARY KEY, title TEXT, date TEXT, time TEXT, status TEXT)');
      },
      onOpen: (database) {
        print('database opened');
       getFromDataBase(database).then((value) {
         tasks = value;
       });
      },
    ).then((value) {
      dataBase = value;
    }).catchError((error) {
      print(error.toString());
    });

    print(dataBase?.isOpen);
  }

  Future insertInDataBase({
    required String title,
    required String time,
    required String date,
  }) async {
    return await dataBase?.transaction((txn) async {
      await txn
          .rawInsert(
              'INSERT INTO task (title,date,time,status) VALUES ("$title","$date","$time","new")')
          .then((value) {
        print('$value inserted successfully');
      }).catchError((error) {
        print("error ${error.toString()}");
      });
    });
  }

   Future<List <Map>> getFromDataBase(dataBase) async{
      return await dataBase?.rawQuery('SELECT * FROM task');
   }
}
