import 'package:flutter/material.dart';
import 'package:woods1_stool/CheckValues.dart';
import 'AbstractStepPage.dart';

class Step14Page extends StatefulWidget
{
  
  @override
  State<StatefulWidget> createState() {
    return Step14PageState();
  }
  
}

class Step14PageState extends State
{
  
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        CheckBoxThing(checkValue: CheckValue.sandersTest),
        CheckBoxThing(checkValue: CheckValue.sandersDone),
        ListTile(title: Text("-Sand the pieces you have so they can be assembled", style: Theme.of(context).textTheme.display1)),
        ListTile(title: Text("-Choose the proper sander for the proper job", style: Theme.of(context).textTheme.display1)),
        ImageThing("assets/IMG_0134.jpg"),
        
      ],
    );
  }
  
}