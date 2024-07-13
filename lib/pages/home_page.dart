import 'package:flutter/material.dart';
import '../utils/todo_body.dart';

class HomePage extends StatefulWidget{
  const HomePage ({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent[200],
      appBar: AppBar(
        title: Text('Kill yourself'),
        elevation: 0,
      ),
      body: ListView(
        children: [
          TodoBody(),
        ],
      ),
    );
  }
}