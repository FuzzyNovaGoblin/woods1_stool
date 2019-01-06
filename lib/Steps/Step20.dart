import 'package:flutter/material.dart';
import 'package:woods1_stool/CheckValues.dart';
import 'AbstractStepPage.dart';

class Step20Page extends StatefulWidget
{
  
  @override
  State<StatefulWidget> createState() {
    return Step20PageState();
  }
  
}

class Step20PageState extends State
{
  
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        CheckBoxThing(checkValue: CheckValue.finishDone),
        ExpansionTile(title: Text("-Required Polyurethane", style: Theme.of(context).textTheme.display1),
        children: <Widget>[
          ListTile(title: Text("-Suggestion to put finishing nails onto a board so the board can sit on it while drying and not get stuck to anything on table, ect.", style: Theme.of(context).textTheme.display2))
        ],),
        ImageThing("assets/IMG_0138.jpg"),
        ImageThing("assets/IMG_0137.jpg"),
        
      ],
    );
  }
  
}