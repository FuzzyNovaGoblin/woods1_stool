import 'package:flutter/material.dart';
import 'AbstractStepPage.dart';

class IntroPage extends StepPage
{
  
  IntroPage():super(title: "Intro");
  
  @override
  State<StatefulWidget> createState() {
    return IntroPageState();
  }
  
}

class IntroPageState extends State
{
  
  @override
  Widget build(BuildContext context) {
    return Text("Hello World!");
  }
  
}