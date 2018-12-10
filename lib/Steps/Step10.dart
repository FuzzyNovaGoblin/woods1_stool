import 'package:flutter/material.dart';
import 'package:woods1_stool/CheckValues.dart';
import 'AbstractStepPage.dart';

class Step10Page extends StatefulWidget
{
  
  @override
  State<StatefulWidget> createState() {
    return Step10PageState();
  }
  
}

class Step10PageState extends State
{
  
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(title: Text("-Cross cut your pieces on the compound miter saw", style: Theme.of(context).textTheme.display1)),
        ListTile(title: Text("-Be sure to check distortions and where the surfaced edge is", style: Theme.of(context).textTheme.display1)),
        ExpansionTile(title: Text("-Cut your pieces", style: Theme.of(context).textTheme.display1),
        children: <Widget>[
          ExpansionTile(title: Text("-Think ahead on your cuts", style: Theme.of(context).textTheme.display2),
          children: <Widget>[
            ListTile(title: Text("-Cut small sections first so you have something to hold onto", style: Theme.of(context).textTheme.display3)),
            ListTile(title: Text("-If you have you have a consistent section that is to be ripped leave that together for easier use on the table saw then come back and cross cut them to separate them.", style: Theme.of(context).textTheme.display3)),
          ],)
        ],),
        ExpansionTile(title: Text("-Place your pieces in your locker", style: Theme.of(context).textTheme.display1),
        children: <Widget>[
          ListTile(title: Text("-Make sure your name is all over each piece", style: Theme.of(context).textTheme.display2))
        ],),
        CheckboxListTile(
          activeColor: Colors.green,
          value: CheckValues.compoundMiterSawDone,
          title: Text(CheckValues.compoundMiterSawDone?"Pie Is Power":"Complete Miter Saw"),
          onChanged: (bool value)=>setState(()=>CheckValues.compoundMiterSawDone = !CheckValues.compoundMiterSawDone),
        )
      ],
    );
  }
  
}