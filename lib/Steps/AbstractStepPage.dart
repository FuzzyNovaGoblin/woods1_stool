import 'package:flutter/material.dart';

abstract class StepPage extends StatefulWidget
{
  final String title;

  StepPage({Key key, this.title}) : super(key: key);
}