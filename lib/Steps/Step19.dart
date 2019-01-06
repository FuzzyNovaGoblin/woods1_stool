import 'package:flutter/material.dart';
import 'package:woods1_stool/CheckValues.dart';
import 'AbstractStepPage.dart';

class Step19Page extends StatefulWidget
{
  
  @override
  State<StatefulWidget> createState() {
    return Step19PageState();
  }
  
}

class Step19PageState extends State
{
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        CheckBoxThing(checkValue: CheckValue.finalSandingDone),
        ExpansionTile(title: Text("-You are required to put a Polyurethane on", style: Theme.of(context).textTheme.display1),
          children: <Widget>[
            ListTile(title: Text("-That means you should have sanded up the highest sandpaper", style: Theme.of(context).textTheme.display2))
          ],),
        ImageThing("assets/IMG_0131.jpg"),
        
      ],
    );
  }
}