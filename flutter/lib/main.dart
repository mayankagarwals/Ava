import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// ignore_for_file: prefer_const_constructors

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{

  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

Widget _buildMessageContainer(List<String> messages) {
  return Expanded(
    child: Container(
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Column(
        children: messages.map((message) {
          return Container(
            margin: EdgeInsets.only(bottom: 8.0),
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Text(message),
          );
        }).toList(),
      ),
    ),
  );
}


class _MyAppState extends State<MyApp> {

  List<String> myList = ["Woah", "Woah indeed"];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


    DateTime now = DateTime.now();
    String formattedDate = DateFormat('MMMM d, y').format(now);

    return MaterialApp(
      title: 'Ava',

      home: Scaffold(
        backgroundColor: Color(0xff292F3F),
        appBar: AppBar(title: Text("hello world")),
        body: Column(
          children: [

            _buildMessageContainer(myList),

            Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Write',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        )

      ),
    );
  }
}


