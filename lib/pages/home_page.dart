import 'package:flutter/material.dart';
import 'package:todo_app/utils/todo_list.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List toDoList = [
    ['Code With Jovana', true],
    ['Learn Flutter', true],
    ['Drink Coffee', false],
    ['Explore Firebase', false],
  ];

  void checkBoxChanged(int index){
    setState(() {
      toDoList[index][1]= !toDoList[index][1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade300,
      appBar: AppBar(
        title: const Text('Simple ToDo App'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (BuildContext context, index){
          return TodoList(
            taskName: toDoList[index][0],
            taskCompleted: toDoList[index][1],
            onChanged: (value)=> checkBoxChanged(index),
          );
        },
      ),
    );
  }
}
