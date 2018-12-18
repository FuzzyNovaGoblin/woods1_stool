import 'package:flutter/material.dart';
import 'package:woods1_stool/CheckValues.dart';
import 'AbstractStepPage.dart';

class Step7Page extends StatefulWidget
{
  
  @override
  State<StatefulWidget> createState() {
    return Step7PageState();
  }
  
}

class Step7PageState extends State
{
  
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ExpansionTile(title: Text("-Use the surface planer to create two surfaced faces", style: Theme.of(context).textTheme.display1),
        children: <Widget>[
          ListTile(title: Text("-Be sure to check distortions to make sure you are placing the board in correctly", style: Theme.of(context).textTheme.display2)),
          ImageThing("assets/surface planer.jpg"),
        ],),
        CheckboxListTile(
          activeColor: Colors.green,
          value: CheckValues.surfacePlanerDone,
          title: Text(CheckValues.surfacePlanerDone?"Pie Is Power":"Use Surface Planer"),
          onChanged: (bool value)=>setState(()=>CheckValues.surfacePlanerDone = !CheckValues.surfacePlanerDone),
        )
      ],
    );
  }
  
}