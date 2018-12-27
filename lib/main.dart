import 'package:flutter/material.dart';
import 'package:woods1_stool/TextValues.dart';
import 'HomePage.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      MaterialApp(
          home: HomePage(),
          theme: ThemeData(textTheme: TextValues())
      );
}


