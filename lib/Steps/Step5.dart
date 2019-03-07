import 'package:flutter/material.dart';
import 'package:woods1_stool/CheckValues.dart';
import 'package:woods1_stool/TextValues.dart';
import 'AbstractStepPage.dart';
import 'package:url_launcher/url_launcher.dart';

class Step5Page extends StatefulWidget
{

  @override
  State<StatefulWidget> createState() {
    return Step5PageState();
  }

}

class Step5PageState extends State
{
  _launchURL() async {
    const url = "https://www.hardwoodstore.com/lumber-prices";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        CheckBoxThing(checkValue: CheckValue.billOfMaterialsDone),
        //part 1
        ExpansionTile(title: Text("-The bill of materials includes:", style: Theme.of(context).textTheme.display1,),
        children: <Widget>[
          ImageThing("assets/6.jpg"),
          ExpansionTile(title: Text("-A list of Materials/tools needed", style: Theme.of(context).textTheme.display2,),
          children: <Widget>[
            ExpansionTile(title: Text("-This includes:", style: Theme.of(context).textTheme.display3,),
            children: <Widget>[
              ListTile(title: Text("-machines, drill bits, rulers, etc.", style: Theme.of(context).textTheme.display4,))
            ],),
          ],),
        ],),
        
        
        //part 2

        ExpansionTile(title: Text("-Board Foot Calculation of Wood needed (includes costs)", style: Theme.of(context).textTheme.display1,),
          children: <Widget>[
            RotatedBox(child: ImageThing("assets/bill2-3.jpg"),quarterTurns: 3,),
            ExpansionTile(title: Text("-To complete your board foot calculation you will need your parts list for the wood you need only (this doesn’t include the one for screws, ect.)", style: Theme.of(context).textTheme.display2,),
              children: <Widget>[
                ExpansionTile(title: Text.rich( TextSpan(text: "-First calculate the board foot for what your finished pieces would be. ",children: [TextSpan(text: "Round UP to second decimal place!", style: TextStyle(fontWeight: FontWeight.bold))]), style: Theme.of(context).textTheme.display3,),
                  children: <Widget>[
                    ExpansionTile(title: Text("-Add all the parts you would need (there are only 4 different pieces)", style: Theme.of(context).textTheme.display4,),
                    children: <Widget>[
                      ListTile(title: Text("-Using the parts list complete the first 4 columns in the document", style: Theme.of(context).textTheme.display4,))
                    ],),
                    ListTile(title: Text("-To calculate Board Footage: Multiple the wood in inches- thickness by the width by the length. Then divide all of that by 144. That would give you your board foot for that singular piece.", style: Theme.of(context).textTheme.display4,)),
                    ListTile(title: Text("-The next column asks for the board footage of all the pieces, so you would multiply column three (# of pieces) by column five (board footage).  Then place that number there.", style: Theme.of(context).textTheme.display4,)),
                    ListTile(title: Text("-Then add of up all of the pieces total board footage and placed that in the total board footage row", style: Theme.of(context).textTheme.display4,)),
                    ExpansionTile(title: Text("-Find the cost per board foot for the wood you are using. (Site is given below for aid)", style: Theme.of(context).textTheme.display4,),
                      children: <Widget>[
                        MaterialButton(
                          child: Text("https://www.hardwoodstore.com/lumber-prices", style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline),),
                          onPressed: () {
                            _launchURL();
                        },)
                      ],),
                    ListTile(title: Text("-Then multiply the cost by the total board footage and place that number in the total cost", style: Theme.of(context).textTheme.display4,)),
                  ],),
              ],),
          ],),
        
        
        //part 3
        ExpansionTile(title: Text("-Now you would need to create a board layout on paper to do the next part", style: Theme.of(context).textTheme.display1,),
        children: <Widget>[
          ImageThing("assets/7.jpg"),
          ListTile(title: Text("-In order to do this you need to go find a board and get a common width (just in case it isn’t there when you get to cut, there will be a board the same size around for you to use)", style: Theme.of(context).textTheme.display2,)),
          ExpansionTile(title: Text("-Draw out a board and figure out how long the board will need to be for you to use", style: Theme.of(context).textTheme.display2,),
          children: <Widget>[
            ExpansionTile(title: Text("-Your aim is to have all the pieces needed but have the least about of waste", style: Theme.of(context).textTheme.display3,),
            children: <Widget>[
              ListTile(title: Text("-Waste is the wood that is being cut off or unused portions of the board", style: Theme.of(context).textTheme.display4,)),
              ListTile(title: Text("-Don’t forget to include that ¼” – ½” will most likely be removed from your board when making the edges straight (not rough anymore)", style: Theme.of(context).textTheme.display4,)),
            ],)
          ],),
        ],),
  
    //part 4
        ListTile(title: Text("-Calculate your Rough lumber board foot the same way you did the finished lumber section.", style: Theme.of(context).textTheme.display1,)),
        ExpansionTile(title: Text("-Calculate your waste", style: Theme.of(context).textTheme.display1,),
        children: <Widget>[
          ListTile(title: Text("-Subtract the Rough lumber total cost from the finished lumber total cost.", style: Theme.of(context).textTheme.display2,)),
          ListTile(title: Text("-Try and see if you can figure out what the percent of waste is…", style: Theme.of(context).textTheme.display2,)),
          RotatedBox(child: ImageThing("assets/bill4-4.jpg"), quarterTurns: 3,),
        ],),
      
        
        //checkbox

        
      ],
    );
  }

}