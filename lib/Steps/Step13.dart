import 'package:flutter/material.dart';
import 'package:woods1_stool/CheckValues.dart';
import 'AbstractStepPage.dart';

class Step13Page extends StatefulWidget
{
  
  @override
  State<StatefulWidget> createState() {
    return Step13PageState();
  }
  
}

class Step13PageState extends State
{
  
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ExpansionTile(title: Text("-Cut out design of legs on bandsaw", style: Theme.of(context).textTheme.display1),
        children: <Widget>[
          ExpansionTile(title: Text("-Reminder: Grain orientation plays a large role here!", style: Theme.of(context).textTheme.display2),
          children: <Widget>[
            ListTile(title: Text("-What way should the grain be to support the weight of the stool user", style: Theme.of(context).textTheme.display3))
          ],),
        ],),
        ExpansionTile(title: Text("-Cut out sections for Rails on the legs with the bandsaw", style: Theme.of(context).textTheme.display1),
        children: <Widget>[
          ExpansionTile(title: Text("-Use rail to mark the size of the rail and placement of the rail onto the leg", style: Theme.of(context).textTheme.display2),
          children: <Widget>[
            ListTile(title: Text("-Mark which side of the rail goes with which side of the leg for ease on knowing where the two pieces fit best.", style: Theme.of(context).textTheme.display3))
          ],),
        ],),
        CheckboxListTile(
          activeColor: Colors.green,
          value: CheckValues.bandSawDone,
          title: Text(CheckValues.bandSawDone?"Pie Is Power":"Complete Parts List"),
          onChanged: (bool value)=>setState(()=>CheckValues.bandSawDone = !CheckValues.bandSawDone),
        )
      ],
    );
  }
  
}