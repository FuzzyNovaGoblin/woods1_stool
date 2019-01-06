import 'package:flutter/material.dart';
import 'package:woods1_stool/CheckValues.dart';
import 'AbstractStepPage.dart';

class Step21Page extends StatefulWidget
{
  
  @override
  State<StatefulWidget> createState() {
    return Step21PageState();
  }
  
}

class Step21PageState extends State
{
  
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        CheckBoxThing(checkValue: CheckValue.addNameDone),
        ListTile(title: Text("-Put your name on your project – take responsibility for your work", style: Theme.of(context).textTheme.display1)),
        ExpansionTile(title: Text("-Options:", style: Theme.of(context).textTheme.display1),
        children: <Widget>[
          ListTile(title: Text("-Wood burn your name", style: Theme.of(context).textTheme.display2)),
          ListTile(title: Text("-Hand Stamp your name", style: Theme.of(context).textTheme.display2)),
          ExpansionTile(title: Text("-Boring Options:", style: Theme.of(context).textTheme.display2),
          children: <Widget>[
            ListTile(title: Text("-Marker", style: Theme.of(context).textTheme.display2)),
            ListTile(title: Text("-Pencil", style: Theme.of(context).textTheme.display2)),
            ListTile(title: Text("-Pen", style: Theme.of(context).textTheme.display2)),
          ],)
        ],),
        ImageThing("assets/cropedName.jpg"),
        
      ],
    );
  }
  
}