import 'package:flutter/material.dart';
import 'package:woods1_stool/CheckValues.dart';
import 'AbstractStepPage.dart';

class Step9Page extends StatefulWidget
{
  
  @override
  State<StatefulWidget> createState() {
    return Step9PageState();
  }
  
}

class Step9PageState extends State
{
  
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ExpansionTile(title: Text("-Layout your pieces/parts onto the surfaced board", style: Theme.of(context).textTheme.display1),
        children: <Widget>[
          ListTile(title: Text("-Be sure to include the 1/8” spaces between pieces (for the blade’s cut)", style: Theme.of(context).textTheme.display2)),
          ListTile(title: Text("-Use your board layout design that you did on paper as reference", style: Theme.of(context).textTheme.display2)),
          ExpansionTile(title: Text("-Place the name of the part you’re your name in each section", style: Theme.of(context).textTheme.display2),
          children: <Widget>[
            ExpansionTile(title: Text("-So when it is cut you know what the part is and others know it’s yours", style: Theme.of(context).textTheme.display3),
            children: <Widget>[
              ListTile(title: Text("-DECORATE YOUR NAME ALL OVER IT!!!", style: TextStyle(fontWeight: FontWeight.bold)))
            ],),
          ],),
        ],),
        ImageThing("assets/IMG_0049.JPG"),
        CheckboxListTile(
          activeColor: Colors.green,
          value: CheckValues.layoutBoardDone,
          title: Text(CheckValues.layoutBoardDone?"Pie Is Power":"Done Laying out board"),
          onChanged: (bool value)=>setState(()=>CheckValues.layoutBoardDone = !CheckValues.layoutBoardDone),
        )
      ],
    );
  }
  
}