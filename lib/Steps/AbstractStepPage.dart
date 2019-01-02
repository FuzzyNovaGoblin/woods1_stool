import 'package:flutter/material.dart';
import 'package:woods1_stool/CheckValues.dart';
//abstract class StepPage extends StatefulWidget
//{
//  final String title;
//
//  StepPage({Key key, this.title}) : super(key: key);
//}

class ImageThing extends StatelessWidget {
  final String location;
  ImageThing(this.location);
  @override
  Widget build(BuildContext context) {
    return Stack(
        children: <Widget>[
          Center(child: Padding(padding: EdgeInsets.all(8.0), child: CircularProgressIndicator())), Center(child: Image.asset(location)),
        ]
    );
  }
}

class CheckBoxThing extends StatefulWidget {
  
  bool value;
  String text;
  CheckValue checkValue;
  

  CheckBoxThing({Key key, this.checkValue}) : super(key: key)
  {
    switch(checkValue) {
      case CheckValue.sketchesDone:
        text = "Sketches Complete";
        value = CheckValues.sketchesDone;
        break;
      case CheckValue.threeDimImageDone:
        text = "Completed 3D Image";
        value = CheckValues.threeDimImageDone;
        break;
      case CheckValue.partsListDone:
        text = "Completed Parts List";
        value = CheckValues.partsListDone;
        break;
      case CheckValue.technicalSketchDone:
        text = "Completed Technical Sketch";
        value = CheckValues.technicalSketchDone;
        break;
      case CheckValue.billOfMaterialsDone:
        text = "Completed Bill Of Materials";
        value = CheckValues.billOfMaterialsDone;
        break;
      case CheckValue.radialArmSawDone:
        text = "Used Radial Arm Saw";
        value = CheckValues.radialArmSawDone;
        break;
      case CheckValue.surfacePlanerDone:
        text = "Used Surface Planer";
        value = CheckValues.surfacePlanerDone;
        break;
      case CheckValue.jointerDone:
        text = "Used Jointer";
        value = CheckValues.jointerDone;
        break;
      case CheckValue.layoutBoardDone:
        text = "Finnished Laying out board";
        value = CheckValues.layoutBoardDone;
        break;
      case CheckValue.compoundMiterSawDone:
        text = "Used Miter Saw";
        value = CheckValues.compoundMiterSawDone;
        break;
      case CheckValue.tableSawDone:
        text = "Used Table Saw";
        value = CheckValues.tableSawDone;
        break;
      case CheckValue.glueDone:
        text = "Completed Glueing";
        value = CheckValues.glueDone;
        break;
      case CheckValue.bandSawDone:
        text = "Used Band Saw";
        value = CheckValues.bandSawDone;
        break;
      case CheckValue.sandersDone:
        text = "Used Sanders";
        value = CheckValues.sandersDone;
        break;
      case CheckValue.routerDone:
        text = "Used Router";
        value = CheckValues.routerDone;
        break;
      case CheckValue.laserEngraverDone:
        text = "Used Laser Engraver";
        value = CheckValues.laserEngraverDone;
        break;
      case CheckValue.drillPressDone_blindHole:
        text = "Finished BlindHole/Counter Sink";
        value = CheckValues.drillPressDone_blindHole;
        break;
      case CheckValue.drillPressDone_layout:
        text = "Found Center Points";
        value = CheckValues.drillPressDone_layout;
        break;
      case CheckValue.drillPressDone_plugs:
        text = "Completed Plugs";
        value = CheckValues.drillPressDone_plugs;
        break;
      case CheckValue.attachPiecesDone:
        text = "Attatched Pices";
        value = CheckValues.attachPiecesDone;
        break;
      case CheckValue.finalSandingDone:
        text = "Finished Final Sanding";
        value = CheckValues.finalSandingDone;
        break;
      case CheckValue.finishDone:
        text = "Applied Finish";
        value = CheckValues.finishDone;
        break;
      case CheckValue.addNameDone:
        text = "Added Name";
        value = CheckValues.addNameDone;
        break;
      case CheckValue.reflectionDone:
        text = "Completed Self Reflection";
        value = CheckValues.reflectionDone;
        break;
      case CheckValue.portfolioDone:
        text = "Completed Portfolio";
        value = CheckValues.portfolioDone;
        break;
        
      case CheckValue.radialArmSawTest:
        text = "Passed Radial Arm Saw Test";
        value = CheckValues.radialArmSawTest;
        break;
      case CheckValue.compoundMiterSawTest:
        text = "Passed Compound Miter Saw Test";
        value = CheckValues.compoundMiterSawTest;
        break;
      case CheckValue.surFacePlanerTest:
        text = "Passed Surface Planer Test";
        value = CheckValues.surFacePlanerTest;
        break;
      case CheckValue.jointerTest:
        text = "Passed Jointer Test";
        value = CheckValues.jointerTest;
        break;
      case CheckValue.tableSawTest:
        text = "Passed Table Saw Test";
        value = CheckValues.tableSawTest;
        break;
      case CheckValue.sandersTest:
        text = "Passed Sanders Test";
        value = CheckValues.sandersTest;
        break;
      case CheckValue.routerTest:
        text = "Passed Router Test";
        value = CheckValues.routerTest;
        break;
  
  
      case CheckValue.bandSawTest:
        text = "Passed Band Saw Test";
        value = CheckValues.bandSawTest;
        break;
      case CheckValue.drillPressTest:
        text = "Passed Drill Press Test";
        value = CheckValues.drillPressTest;
        break;
      
    }
  }
  
  @override
  _CheckBoxThingState createState() => _CheckBoxThingState();
}


class _CheckBoxThingState extends State<CheckBoxThing> {
  
  
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: CheckValues.getBool(widget.checkValue),
      onChanged: (bool value) {
        setState((){
          CheckValues.setVal(v:!CheckValues.getBool(widget.checkValue),checkValue: widget.checkValue);
          CheckValues.printValues();
          CheckValues.saveData();
        });
        },
      activeColor: Colors.green,
      title: Text(widget.text, style: TextStyle(color: CheckValues.getBool(widget.checkValue)? Colors.green : Colors.red),
      ),
    );
  }
}