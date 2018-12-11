import 'package:flutter/material.dart';
import 'AbstractStepPage.dart';

class Step17Page extends StatefulWidget
{
  
  @override
  State<StatefulWidget> createState() {
    return Step17PageState();
  }
  
}

class Step17PageState extends State
{
  
  
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.fitWidth,
      child: Text(" This has been Done\non another machine"),
    );
  }
  
}