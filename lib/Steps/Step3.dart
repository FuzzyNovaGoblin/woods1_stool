import 'package:flutter/material.dart';
import 'package:woods1_stool/CheckValues.dart';
import 'AbstractStepPage.dart';

class Step3Page extends StatefulWidget
{

  @override
  State<StatefulWidget> createState() {
    return Step3PageState();
  }

}

class Step3PageState extends State
{

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text("-Create a parts list of the required materials needed",style: Theme.of(context).textTheme.display1),
        ),
        ExpansionTile(
          title: Text("-Parts list includes the wood pieces you need:",style: Theme.of(context).textTheme.display1),
          children: <Widget>[
            ListTile(title: Text("-the part name (what you would call that piece)",style: Theme.of(context).textTheme.display1),),
            ListTile(title: Text("-quantity",style: Theme.of(context).textTheme.display1),),
            ListTile(title: Text("-material (type of wood used)",style: Theme.of(context).textTheme.display1),),
            ExpansionTile(
              title: Text("-Dimensions/size",style: Theme.of(context).textTheme.display1),
              children: <Widget>[
                ExpansionTile(title: Text("-For wood we size items in TxWxL orientation",style: Theme.of(context).textTheme.display3),
                  children: <Widget>[
                    ListTile(title: Text("-Thickness x Width x Length",style: Theme.of(context).textTheme.display4),)
                  ],
                ),
                ListTile(title: Text("-For cylindrical items (such as screws or plugs) we size them with diameter x length",style: Theme.of(context).textTheme.display3),)
              ],
            ),
          ],
        ),
        ExpansionTile(
          title: Text("-In the parts list you could also include other items needed, so you know what you need to make/collect",style: Theme.of(context).textTheme.display1),
          children: <Widget>[
            ListTile(title: Text("-Such as screws and plugs", style: Theme.of(context).textTheme.display2)),
          ],
        ),
        Image.asset("assets/4.PNG"),
        CheckboxListTile(
          activeColor: Colors.green,
          value: CheckValues.partsListDone,
          title: Text(CheckValues.partsListDone?"Pie Is Power":"Complete Parts List"),
          onChanged: (bool value)=>setState(()=>CheckValues.partsListDone = !CheckValues.partsListDone),
        )
      ],
    );
  }

}