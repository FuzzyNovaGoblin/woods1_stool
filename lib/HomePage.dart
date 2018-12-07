import 'package:flutter/material.dart';
import 'package:woods1_stool/Steps/AbstractStepPage.dart';
import 'package:woods1_stool/Steps/Intro.dart';
import 'package:woods1_stool/Steps/Step1.dart';
import 'package:woods1_stool/Steps/Step2.dart';

enum Step{Intro, Step1, Step2}

String getTitle(Step s)
{
  switch(s)
  {
    case Step.Intro:
      return "Intro";
    case Step.Step1:
      return "Step1";
    case Step.Step2:
      return "Step2";
  }
}

Widget getPage(Step s)
{
  
  switch(s)
  {
    case Step.Intro:
      return IntroPage();
    case Step.Step1:
      return Step1Page();
    case Step.Step2:
      return Step2Page();
  }
  return null;
}

class HomePage extends StatefulWidget
{
  Step step = Step.Intro;
  StepPage stepPage;
  
  HomePage(){stepPage = getPage(step);}
  
  @override
  State<StatefulWidget> createState() {
     return HomePageState();
  }
  
}

class HomePageState extends State<HomePage> with TickerProviderStateMixin
{
  
  TabController tabController = TabController(length: Step.values.length, vsync: this);
  
  Drawer drawer = Drawer(
    child: ListView.builder(itemBuilder: (context, i){
      if(i < Step.values.length)
      {
        return DrawerHeader(
          child: Text(getTitle(Step.values[i]),style: TextStyle(fontSize: 30.0),),
          decoration: BoxDecoration(color: Colors.blueAccent),
        );
      }
    }),
  );
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(getTitle(widget.step)),),
      drawer: drawer,
      body: TabBarView(
          children: [
            IntroPage(),
            Step1Page(),
            Step2Page(),
      ]),
    );
  }
  
}