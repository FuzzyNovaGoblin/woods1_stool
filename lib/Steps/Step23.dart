 import 'package:flutter/material.dart';
import 'package:woods1_stool/CheckValues.dart';
import 'AbstractStepPage.dart';

class Step23Page extends StatefulWidget
{
  
  @override
  State<StatefulWidget> createState() {
    return Step23PageState();
  }
  
}

class Step23PageState extends State
{
  
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ExpansionTile(title: Text("-Portfolio portion deals with:", style: Theme.of(context).textTheme.display1),
        children: <Widget>[
          ListTile(title: Text("-Reflection", style: Theme.of(context).textTheme.display2)),
          ExpansionTile(title: Text("-Images of your process and Final Product", style: Theme.of(context).textTheme.display2),
          children: <Widget>[
            ListTile(title: Text("-Note: try to find a good way to present this information, do you know any good apps (other than Power point/slides)?", style: Theme.of(context).textTheme.display3)),
          ],)
        ],),CheckboxListTile(
          activeColor: Colors.green,
          value: CheckValues.portfolioDone,
          title: Text(CheckValues.portfolioDone?"Pie Is Power":"Completed Portfolio"),
          onChanged: (bool value)=>setState(()=>CheckValues.portfolioDone = !CheckValues.portfolioDone),
        )
      ],
    );
  }
  
}