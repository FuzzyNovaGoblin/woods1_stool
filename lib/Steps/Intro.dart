import 'package:flutter/material.dart';
import 'AbstractStepPage.dart';

class IntroPage extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return IntroPageState();
  }
}

class IntroPageState extends State
{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: <Widget>[
          Text("What is it?", style: TextStyle(fontSize: 30.0),),
          RichText(
            text: TextSpan(
              text: '\n',
              style: TextStyle(fontSize: 20.0, color: Colors.black),
              children: <TextSpan>[
                TextSpan(text: '-You are making a step stool.\n', style: TextStyle()),
                TextSpan(text: '-You are to personalize it, but not change the foundation of the structure.\n',
                    children: [
                      TextSpan(text:"  -Must include, all parts: Top, Legs, Rails, and Cleats\n", style: TextStyle(fontSize: 15.0, )),
                    ]),
                TextSpan(text: '-Project Rubric is provided\n',
                    children: [
                      TextSpan(text:"  -Read it carefully so you understand what you would be grade on for all wood working projects\n", style: TextStyle(fontSize: 15.0)),
                    ]),
              ],
            ),
          ),
          ImageThing("assets/stool.jpg"),
        ],
      ),
//      child: Column(
//        children: <Widget>[
////          Text("What is it?", style: TextStyle(fontSize: 30.0),),
////          Row(children: <Widget>[Text("-"), Text("You are making a step stool.")],),
////          Row(children: <Widget>[Text("-"), Text("Project Rubric is provided")],),
////          Row(children: <Widget>[Text("-"), Text("You are to personalize it, but not change the foundation of the structure.")],),
//        ],
//      ),
    );
  }
}