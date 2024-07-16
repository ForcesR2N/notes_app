import 'dart:io';

import 'package:flutter/material.dart';
import '../util/todo_body.dart';

class HomePage extends StatefulWidget{
  const HomePage ({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{

  List todoList = [
    ["Create Notes", false],
    ["Create Notes", false]
  ];

void checkboxChanged(bool? value, int index) {
  setState(() {
    todoList[index][1] = !todoList [index] [1];
  });
}

void createNewTask(){
  showDialog(context: context, builder: (context));
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent[200],
      appBar: AppBar(
        title: Text('kill yourself'),
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
      child: Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: todoList.length,
        itemBuilder: (context, index) {
          return TodoBody(
            taskName: todoList[index][0],
            taskComplete: todoList[index][1],
            onChanged: (value) => checkboxChanged(value, index)
          );
        }
      ),
    );
  }
}