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
  return Container(
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
        body: Column(
          children: [
            Container(

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                  formattedDate,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                )]
              ),
              constraints: BoxConstraints(
                minWidth: 0.0,
                maxWidth: double.infinity,
                minHeight: 0.0,
                maxHeight: double.infinity,
              ),
            ),

            _buildMessageContainer(myList),

            Positioned(
              bottom: 16.0, //how to make this device independent
              left: 16.0,
              right: 16.0,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Write',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
          ],
        )

      ),
    );
  }
}


