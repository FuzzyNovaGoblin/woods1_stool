import 'package:flutter/material.dart';
import 'package:woods1_stool/CheckValues.dart';
import 'AbstractStepPage.dart';

class Step12Page extends StatefulWidget
{
  
  @override
  State<StatefulWidget> createState() {
    return Step12PageState();
  }
  
}

class Step12PageState extends State
{
  
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ExpansionTile(title: Text("-Glue your Top and/or Legs together to sit overnight", style: Theme.of(context).textTheme.display1),
        children: <Widget>[
          ExpansionTile(title: Text("-Remember grain structure and orientation that was discussed in passed lessons", style: Theme.of(context).textTheme.display2),
          children: <Widget>[
            ListTile(title: Text("-(if you don’t remember check out your notes)", style: Theme.of(context).textTheme.display3)),
            ListTile(title: Text("-Keep in mind when gluing two pieces there is a way to make is so that shrinking and swelling act against each other to reduce distortions.", style: Theme.of(context).textTheme.display3)),
          ],),
        ],),
        ListTile(title: Text("-Don’t forget to Dry Clamp", style: Theme.of(context).textTheme.display1)),
        ListTile(title: Text("-Don’t forget to use wet paper towel to wipe away excess glue", style: Theme.of(context).textTheme.display1)),
        CheckboxListTile(
          activeColor: Colors.green,
          value: CheckValues.glueDone,
          title: Text(CheckValues.glueDone?"Pie Is Power":"Complete Parts List"),
          onChanged: (bool value)=>setState(()=>CheckValues.glueDone = !CheckValues.glueDone),
        )
      ],
    );
  }
  
}