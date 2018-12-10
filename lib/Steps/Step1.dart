import 'package:flutter/material.dart';
import 'AbstractStepPage.dart';

class Step1Page extends StatefulWidget
{
  
  @override
  State<StatefulWidget> createState() {
    return Step1PageState();
  }
  
}

class Step1PageState extends State
{
  
  bool sketchesDone = false;
  
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(title: Text("-Brainstorm sketches", style: Theme.of(context).textTheme.display1),),
        ListTile(title: Text("-You can change the color, the arch style, the top iamge/style but not change the dimensions or structure of the stool.", style: Theme.of(context).textTheme.display1,),),
        ExpansionTile(
          title: Text("-You need 10 sketches", style: Theme.of(context).textTheme.display1),
          children: <Widget>[
            Image.asset("assets/brainstorm-sketch.jpg"),
            ExpansionTile(title: Text("-Each sketch must display the top, front, and side of the stool", style: Theme.of(context).textTheme.display2,),
              children: <Widget>[
                ListTile(title: Text("-You have the choice between a top, front, right view to equal one sketch or 1 3D stool sketch.", style: Theme.of(context).textTheme.display3),),
                ListTile(title: Text("-You must include anything you are interested in doing for the process. Such as laser engraving, CNC’ing ideas; Different cut ideas for the legs; color options for finish", style: Theme.of(context).textTheme.display3),),
              ],
            )
          ],
        ),
        CheckboxListTile(
          activeColor: Colors.green,
          value: sketchesDone,
          title: Text(sketchesDone?"Pie Is Power":""),
          onChanged: (bool value)=>setState(()=>sketchesDone = !sketchesDone),
        )
      ],
    );
  }
  
}