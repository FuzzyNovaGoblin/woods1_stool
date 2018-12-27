import 'package:flutter/material.dart';
import 'package:woods1_stool/CheckValues.dart';
import 'AbstractStepPage.dart';

class Step6Page extends StatefulWidget
{
  
  @override
  State<StatefulWidget> createState() {
    return Step6PageState();
  }
  
}

class Step6PageState extends State
{
  
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        CheckBoxThing(checkValue: CheckValue.radialArmSawDone),
        ExpansionTile(title: Text("-After lesson on radial arm saw take radial arm saw test", style: Theme.of(context).textTheme.display1),
        children: <Widget>[
          ImageThing("assets/radial arm saw.jpg"),
        ],),
        ExpansionTile(title: Text("Next Step", style: Theme.of(context).textTheme.display1),
        children: <Widget>[
          ListTile(title: Text("-Measure out the board you chose ", style: Theme.of(context).textTheme.display2)),
          ImageThing("assets/IMG_0047.JPG"),
          ImageThing("assets/IMG_0048.JPG"),
          ExpansionTile(title: Text("-Set up board on machine", style: Theme.of(context).textTheme.display2),
          children: <Widget>[
            ExpansionTile(title: Text("-Pay attention to distortions", style: Theme.of(context).textTheme.display3),
            children: <Widget>[
              ListTile(title: Text("-Cup with the hump up", style: Theme.of(context).textTheme.display4)),
              ListTile(title: Text("-Bow with the hump up", style: Theme.of(context).textTheme.display4)),
              ListTile(title: Text("-Crook with the hump out", style: Theme.of(context).textTheme.display4)),
            ],),
          ],),
          ListTile(title: Text("-Get teacher", style: Theme.of(context).textTheme.display2)),
          ListTile(title: Text("-Turn machine on", style: Theme.of(context).textTheme.display2)),
          ListTile(title: Text("-Pull out blade GENTLY & Slowly", style: Theme.of(context).textTheme.display2)),
          ListTile(title: Text("-Return blade", style: Theme.of(context).textTheme.display2)),
          ListTile(title: Text("-Turn machine off – wait for complete stop", style: Theme.of(context).textTheme.display2)),
        ],),
      ],
    );
  }
  
}