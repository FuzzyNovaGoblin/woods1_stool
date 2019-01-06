import 'package:flutter/material.dart';
import 'package:woods1_stool/CheckValues.dart';
import 'AbstractStepPage.dart';

class Step11Page extends StatefulWidget
{
  
  @override
  State<StatefulWidget> createState() {
    return Step11PageState();
  }
  
}

class Step11PageState extends State
{
  
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        CheckBoxThing(checkValue: CheckValue.tableSawTest),
        CheckBoxThing(checkValue: CheckValue.tableSawDone),
        ExpansionTile(title: Text("-Use Table saw to rip pieces ", style: Theme.of(context).textTheme.display1),
        children: <Widget>[
          ListTile(title: Text("-You can also use table saw to cross cut sections that are to small for the compound miter saw, but that is only if a sled is used. (otherwise use bandsaw)", style: Theme.of(context).textTheme.display2))
        ],),
        RotatedBox(quarterTurns: 1,child: ImageThing("assets/IMG_0028.jpg")),
        
      ],
    );
  }
  
}