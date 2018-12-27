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
        CheckBoxThing(checkValue: CheckValue.routerDone),
        ListTile(title: Text("-Router the edge(s) you need", style: Theme.of(context).textTheme.display1)),
        FittedBox(
          fit: BoxFit.fitWidth,
          child: Row(
            children: <Widget>[
              ImageThing("assets/IMG_0135.JPG"),
              ImageThing("assets/IMG_0136.JPG"),
            ],
          ),
        ),
        
      ],
    );
  }
  
}