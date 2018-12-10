import 'package:flutter/material.dart';
import 'package:woods1_stool/CheckValues.dart';
import 'AbstractStepPage.dart';

class Step4Page extends StatefulWidget
{

  @override
  State<StatefulWidget> createState() {
    return Step4PageState();
  }

}

class Step4PageState extends State
{

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(title: Text("-A technical Sketch shows the intricate details of a product",style: Theme.of(context).textTheme.display1),),
        ExpansionTile(title: Text("-To do this we use three different 2D images called the Top, Front, Right and position it in a L formation",style: Theme.of(context).textTheme.display1),
        children: <Widget>[
          ExpansionTile(title: Text("-The L formation is where the top is aligned above the front and the right side view is aligned to the right of the front view.",style: Theme.of(context).textTheme.display2),
          children: <Widget>[
            ListTile(title: Text("-A top view is a birds eye view of the product",style: Theme.of(context).textTheme.display3)),
            ListTile(title: Text("-A Front view displays the most details and longest edge, and is seen as if all you see is the front edge of that part",style: Theme.of(context).textTheme.display3)),
            ListTile(title: Text("-A right side view is displaying the right side only of the part – it will show the products height and width.",style: Theme.of(context).textTheme.display3)),
          ],),
          ExpansionTile(title: Text("-We then add dimensions, hidden lines, and annotations such as details of the view/drawing.",style: Theme.of(context).textTheme.display2),
          children: <Widget>[
            ListTile(title: Text("-A hidden line shows a cut or indicates that there is a change in the material that we cannot see",style: Theme.of(context).textTheme.display3)),
            ExpansionTile(title: Text("-Dimensions are added between the coinciding views so it minimizes the number of dimensions we place",style: Theme.of(context).textTheme.display3),
            children: <Widget>[
              ListTile(title: Text("-For example: the length is displayed between the top and the front view to show they have the same length. ",style: Theme.of(context).textTheme.display4))
            ],),
          ],),
        ],
        ),
        CheckboxListTile(
          activeColor: Colors.green,
          value: CheckValues.technicalSketchDone,
          title: Text(CheckValues.technicalSketchDone?"Pie Is Power":"Complete Technical Sketch"),
          onChanged: (bool value)=>setState(()=>CheckValues.technicalSketchDone = !CheckValues.technicalSketchDone),
        )
      ],
    );
  }

}