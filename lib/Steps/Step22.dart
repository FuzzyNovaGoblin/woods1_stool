import 'package:flutter/material.dart';
import 'package:woods1_stool/CheckValues.dart';
import 'AbstractStepPage.dart';

class Step22Page extends StatefulWidget
{
  
  @override
  State<StatefulWidget> createState() {
    return Step22PageState();
  }
  
}

class Step22PageState extends State
{
  
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ExpansionTile(title: Text("-Self Reflect on your progress with the provided project rubric", style: Theme.of(context).textTheme.display1),
        children: <Widget>[
          ListTile(title: Text("-Circle what you think you deserve – READ IT Carefully!", style: Theme.of(context).textTheme.display2)),
          ImageThing("assets/10.PNG")
        ],),
        ExpansionTile(title: Text("-Write a self reflection on your process", style: Theme.of(context).textTheme.display1),
        children: <Widget>[
          ListTile(title: Text("-Follow teacher direction", style: Theme.of(context).textTheme.display2)),
        ],),
        CheckboxListTile(
          activeColor: Colors.green,
          value: CheckValues.reflectionDone,
          title: Text(CheckValues.reflectionDone?"Pie Is Power":"Completed Self Reflection"),
          onChanged: (bool value)=>setState(()=>CheckValues.reflectionDone = !CheckValues.reflectionDone),
        )
      ],
    );
  }
  
}