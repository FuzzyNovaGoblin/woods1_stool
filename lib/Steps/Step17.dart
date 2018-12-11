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
        //TODO  add check boxes inbetween each of these bigger sections

        //part 1
        ExpansionTile(title: Text("Blind Hole/Counter Sink", style: Theme.of(context).textTheme.title,) ,children: <Widget>[
          ExpansionTile(title: Text("-Create a counter sink/blind hole for the screw to sit in ", style: Theme.of(context).textTheme.display1,),
          children: <Widget>[
            ExpansionTile(title: Text("-2 holes per side on the rails to attach rails to legs", style: Theme.of(context).textTheme.display1,),
            children: <Widget>[
              ListTile(title: Text("-This hole is used to hide the screws ", style: Theme.of(context).textTheme.display1,)),
              ListTile(title: Text("-Be sure to center punch holes so they go where you want them to go", style: Theme.of(context).textTheme.display1,)),
            ],),
            ExpansionTile(title: Text("-Choices in sizes depend on plug bit used", style: Theme.of(context).textTheme.display1,),
            children: <Widget>[
              ListTile(title: Text("-Find a drill bit the same size as the plug bit you plan on using", style: Theme.of(context).textTheme.display1,))
            ],),
            ExpansionTile(title: Text("-The hole should only go half way through the wood", style: Theme.of(context).textTheme.display1,),
            children: <Widget>[
              ListTile(title: Text("-NOT ALL THE WAY THROUGH THE BOARD!", style: Theme.of(context).textTheme.display1,))
            ],),
          ],),
        ],),

        //part 2
        ExpansionTile(title: Text("Layout out Board – Find Center Points", style: Theme.of(context).textTheme.title,),children: <Widget>[
          Placeholder(color: Colors.deepPurpleAccent,)
        ],),

        //part 3
        ExpansionTile(title: Text("Plugs", style: Theme.of(context).textTheme.title,),
          children: <Widget>[
            ListTile(title: Text("-Attain a plug the size of the hole you drilled for your counter sink/blind hole", style: Theme.of(context).textTheme.display1,),),
            ExpansionTile(title: Text("-Drill only the depth of the hole you created", style: Theme.of(context).textTheme.display1,),
            children: <Widget>[
              ListTile(title: Text("-You will need 8 total (4 per rail x 2 rails)", style: Theme.of(context).textTheme.display1,))
            ],)
          ],),
      ],
    );
  }
  
}