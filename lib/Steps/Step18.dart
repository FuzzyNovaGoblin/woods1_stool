import 'package:flutter/material.dart';
import 'AbstractStepPage.dart';

class Step18Page extends StatefulWidget
{
  
  @override
  State<StatefulWidget> createState() {
    return Step18PageState();
  }
  
}

class Step18PageState extends State
{
  
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.fitWidth,
      child: Text(" This has been Done\non another machine"),
    );
  }
  
}