import 'package:flutter/material.dart';
import 'package:woods1_stool/CheckValues.dart';
import 'AbstractStepPage.dart';

class Step16Page extends StatefulWidget
{
  
  @override
  State<StatefulWidget> createState() {
    return Step16PageState();
  }
  
}

class Step16PageState extends State
{
  
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ExpansionTile(title: Text("-Laser Engrave what is needed", style: Theme.of(context).textTheme.display1),
        children: <Widget>[
          ListTile(title: Text("-Be sure to set up document properly", style: Theme.of(context).textTheme.display1)),
          ListTile(title: Text("-Be sure to double check printer settings for Laser Engraver", style: Theme.of(context).textTheme.display1)),
        ],),
        ImageThing("assets/IMG_0127.JPG"),
        CheckboxListTile(
          activeColor: Colors.green,
          value: CheckValues.laserEngraverDone,
          title: Text(CheckValues.laserEngraverDone?"Pie Is Power":"Complete Parts List"),
          onChanged: (bool value)=>setState(()=>CheckValues.laserEngraverDone = !CheckValues.laserEngraverDone),
        )
      ],
    );
  }
  
}