import 'package:flutter/material.dart';
import 'package:woods1_stool/CheckValues.dart';
import 'AbstractStepPage.dart';

class Step15Page extends StatefulWidget
{
  
  @override
  State<StatefulWidget> createState() {
    return Step15PageState();
  }
  
}

class Step15PageState extends State
{
  
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(title: Text("-Router the edge(s) you need", style: Theme.of(context).textTheme.display1)),
        CheckboxListTile(
          activeColor: Colors.green,
          value: CheckValues.routerDone,
          title: Text(CheckValues.routerDone?"Pie Is Power":"Complete Parts List"),
          onChanged: (bool value)=>setState(()=>CheckValues.routerDone = !CheckValues.routerDone),
        )
      ],
    );
  }
  
}