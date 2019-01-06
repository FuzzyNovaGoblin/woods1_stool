import 'package:flutter/material.dart';
import 'package:woods1_stool/CheckValues.dart';
import 'AbstractStepPage.dart';

class Step18Page extends StatefulWidget
{
  
  @override
  State<StatefulWidget> createState() {
    return Step18PageState();
  }
  
}

//title: Text("-", style: Theme.of(context).textTheme.display1,)
class Step18PageState extends State
{
  
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        CheckBoxThing(checkValue: CheckValue.attachPiecesDone),
        //part 1
        ExpansionTile(title: Text("Attach cleats to Rails", style: Theme.of(context).textTheme.display1,),
          children: <Widget>[
            ListTile(title: Text("-Find center for cleat; make sure it fits between legs", style: Theme.of(context).textTheme.display2,),),
            ExpansionTile(title: Text("-Check to make sure drill bit doesn’t go past Rail for Pilot hole", style: Theme.of(context).textTheme.display2,),children: <Widget>[ImageThing("assets/IMG_0141.jpg")],),
            ExpansionTile(title: Text("-Drill Pilot hole", style: Theme.of(context).textTheme.display2,),children: <Widget>[ImageThing("assets/IMG_0144.jpg")],),
            ExpansionTile(title: Text("-Check to make sure screw doesn’t go past Rail", style: Theme.of(context).textTheme.display2,),children: <Widget>[ImageThing("assets/IMG_0142.jpg")],),
            ExpansionTile(title: Text("-Screw Cleat to Rail", style: Theme.of(context).textTheme.display2,),children: <Widget>[ImageThing("assets/IMG_0145.jpg")],),
          ]),

        //part 2
        ExpansionTile(title: Text("Attach rails to legs", style: Theme.of(context).textTheme.display1,), children: <Widget>[
          ExpansionTile(title: Text("-Use Vice to hold leg allowing me to have downward force when drilling", style: Theme.of(context).textTheme.display2,), children: <Widget>[ImageThing("assets/IMG_0148.jpg")]),
          ExpansionTile(title: Text("-Be sure you hold make sure leg is lined up evenly with edges", style: Theme.of(context).textTheme.display2,), children: <Widget>[ImageThing("assets/IMG_0154.jpg")],),
//          ExpansionTile(title:  Text("IDK what you want???", style: TextStyle(color: Colors.red),), children: <Widget>[Placeholder(),Placeholder()],),
        ],),

        //part 3
        ExpansionTile(title: Text("Glue Plugs into Rails", style: Theme.of(context).textTheme.display1,),
        children: <Widget>[
          ImageThing("assets/IMG_0161.jpg"),
          ImageThing("assets/IMG_0162.jpg"),
          ImageThing("assets/IMG_0163.jpg"),
          ImageThing("assets/IMG_0164.jpg"),
          ImageThing("assets/IMG_0165.jpg"),
          ImageThing("assets/IMG_0166.jpg"),
          ImageThing("assets/IMG_0167.jpg"),
        ],),

        //part 4
        ExpansionTile(title: Text("Attach Top to stand", style: Theme.of(context).textTheme.display1,),
        children: <Widget>[
          ImageThing("assets/IMG_0133.jpg"),
        ],),


      ],
    );
  }
  
}