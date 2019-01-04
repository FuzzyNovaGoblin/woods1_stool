import 'package:flutter/material.dart';
import 'package:woods1_stool/TextValues.dart';
import 'HomePage.dart';
import 'package:woods1_stool/CheckValues.dart';

void main() async{
  await CheckValues.readData();
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Woods 1",
        home: HomePage(),
        theme: ThemeData(textTheme: TextValues())
    );
  }
}


