import 'package:flutter/material.dart';
import 'package:woods1_stool/CheckValues.dart';
import 'AbstractStepPage.dart';

class Step8Page extends StatefulWidget
{
  
  @override
  State<StatefulWidget> createState() {
    return Step8PageState();
  }
  
}

class Step8PageState extends State
{
  
  @override
  Widget build(BuildContext context) {
    return ListView(
      children:[
        CheckBoxThing(checkValue: CheckValue.jointerTest),
        CheckBoxThing(checkValue: CheckValue.jointerDone),
        ListTile(title: Text("-Joint 1 edge", style: Theme.of(context).textTheme.display1)),
        ExpansionTile(title: Text("-Only joint one edge!", style: Theme.of(context).textTheme.display1),
        children: <Widget>[
          ListTile(title: Text("-the other edge will be cleaned when using the table saw to create a square board", style: Theme.of(context).textTheme.display2)),
        ],),
        ImageThing("assets/IMG_0021.JPG"),
        
      ]
    );
  }
  
}