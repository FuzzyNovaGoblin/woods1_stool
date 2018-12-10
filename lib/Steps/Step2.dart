import 'package:flutter/material.dart';
import 'package:woods1_stool/CheckValues.dart';
import 'AbstractStepPage.dart';

class Step2Page extends StatefulWidget
{
  
  @override
  State<StatefulWidget> createState()
  {
    return Step2PageState();
  }
  
}

class Step2PageState extends State
{
  
  @override
  Widget build(BuildContext context)
  {
    return ListView(
        children: <Widget>[
          ListTile(title: Text("-Create a 3D image of your final design", style: Theme.of(context).textTheme.display1)),
          ExpansionTile(title: Text("-Create a Top, Front, Right of your final design", style: Theme.of(context).textTheme.display1),
            children: <Widget>[
              ExpansionTile(title: Text("-The ideas is to display as much information about that final idea as you can", style: Theme.of(context).textTheme.display2),
              children: <Widget>[
                ListTile(title: Text("-So the teacher can help you make your project as close to what you want.", style: Theme.of(context).textTheme.display3),),
                ListTile(title: Text("-So the teacher can help in figuring out if it is possible with time constraints", style: Theme.of(context).textTheme.display3)),
              ]),
              ListTile(title: Text("-Annotations: images, text (explanations), and DIMENSIONS are needed ", style: Theme.of(context).textTheme.display2),),
            ],
          ),

          CheckboxListTile(
            activeColor: Colors.green,
            value: CheckValues.threeDimImageDone,
            title: Text(CheckValues.threeDimImageDone?"Pie Is Power":"Complete 3D Image"),
            onChanged: (bool value)=>setState(()=>CheckValues.threeDimImageDone = !CheckValues.threeDimImageDone),
          )
        ]);
  }
  
}