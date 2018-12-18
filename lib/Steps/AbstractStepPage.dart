import 'package:flutter/material.dart';

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
          Padding(padding: EdgeInsets.all(8.0), child: CircularProgressIndicator()), ImageThing(location),
        ]
    );
  }
}
