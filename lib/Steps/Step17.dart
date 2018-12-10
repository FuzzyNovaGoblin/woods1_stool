import 'package:flutter/material.dart';
import 'AbstractStepPage.dart';

class Step17Page extends StatefulWidget
{
  
  @override
  State<StatefulWidget> createState() {
    return Step17PageState();
  }
  
}

class Step17PageState extends State
{
  
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ExpansionTile(children: <Widget>[],),
        ExpansionTile(children: <Widget>[ListTile()],),
        ExpansionTile(children: <Widget>[],),
      ],
    );
  }
  
}