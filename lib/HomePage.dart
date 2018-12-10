import 'package:flutter/material.dart';
import 'package:woods1_stool/Steps/AbstractStepPage.dart';
import 'package:woods1_stool/Steps/Intro.dart';
import 'package:woods1_stool/Steps/Step1.dart';
import 'package:woods1_stool/Steps/Step2.dart';
import 'package:woods1_stool/Steps/Step3.dart';
import 'package:woods1_stool/Steps/Step4.dart';
import 'package:woods1_stool/Steps/Step5.dart';
import 'package:woods1_stool/Steps/Step6.dart';
import 'package:woods1_stool/Steps/Step7.dart';
import 'package:woods1_stool/Steps/Step8.dart';
import 'package:woods1_stool/Steps/Step9.dart';
import 'package:woods1_stool/Steps/Step10.dart';
import 'package:woods1_stool/Steps/Step11.dart';
import 'package:woods1_stool/Steps/Step12.dart';
import 'package:woods1_stool/Steps/Step13.dart';
import 'package:woods1_stool/Steps/Step14.dart';
import 'package:woods1_stool/Steps/Step15.dart';
import 'package:woods1_stool/Steps/Step16.dart';
import 'package:woods1_stool/Steps/Step17.dart';
import 'package:woods1_stool/Steps/Step18.dart';
import 'package:woods1_stool/Steps/Step19.dart';
import 'package:woods1_stool/Steps/Step20.dart';
import 'package:woods1_stool/Steps/Step21.dart';
import 'package:woods1_stool/Steps/Step22.dart';
import 'package:woods1_stool/Steps/Step23.dart';
import 'package:woods1_stool/Steps/Step24.dart';
import 'package:woods1_stool/Steps/Step25.dart';
import 'package:woods1_stool/Steps/Step26.dart';
import 'package:woods1_stool/Steps/Step27.dart';

enum Step{Intro,
  Step1, Step2, Step3, Step4, Step5, Step6, Step7, Step8, Step9,
  Step10, Step11, Step12, Step13, Step14, Step15, Step16, Step17, Step18, Step19,
  Step20, Step21, Step22, Step23}

String getTitle(Step s)
{
  switch(s)
  {
    case Step.Intro:
      return "Intro";
    case Step.Step1:
      return "1: Brainstorm Sketches";
    case Step.Step2:
      return "2: Choose Final Design";
    case Step.Step3:
      return "3: Parts List";
    case Step.Step4:
      return "4: Technical Sketch";
    case Step.Step5:
      return "5: Identify your Bill of Materials";
    case Step.Step6:
      return "6: Radial Arm Saw";
    case Step.Step7:
      return "7: Surface Planer";
    case Step.Step8:
      return "8: Jointer";
    case Step.Step9:
      return "9: Layout Board";
    case Step.Step10:
      return "10: Compound Miter Saw";
    case Step.Step11:
      return "11: Table Saw";
    case Step.Step12:
      return "12: Glue Top/Legs";
    case Step.Step13:
      return "13: Band Saw";
    case Step.Step14:
      return "14: Sanders";
    case Step.Step15:
      return "15: Router";
    case Step.Step16:
      return "16: Laser Engrave";
    case Step.Step17:
      return "17: Drill Press";
    case Step.Step18:
      return "18: Attach Pieces";
    case Step.Step19:
      return "19: Final Sanding";
    case Step.Step20:
      return "20: Apply Finish";
    case Step.Step21:
      return "21: Apply your name";
    case Step.Step22:
      return "22: Self Reflection";
    case Step.Step23:
      return "23: Set up your portfolio portion";
  }
}

VoidCallback ss;


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

    case Step.Step3:
      return Step3Page();
      case Step.Step4:
        return Step4Page();
      case Step.Step5:
        return Step5Page();
      case Step.Step6:
        return Step6Page();
      case Step.Step7:
        return Step7Page();
      case Step.Step8:
        return Step8Page();
      case Step.Step9:
        return Step9Page();
      case Step.Step10:
        return Step10Page();
      case Step.Step11:
        return Step11Page();
      case Step.Step12:
        return Step12Page();
      case Step.Step13:
        return Step13Page();
      case Step.Step14:
        return Step14Page();
      case Step.Step15:
        return Step15Page();
      case Step.Step16:
        return Step16Page();
      case Step.Step17:
        return Step17Page();
      case Step.Step18:
        return Step18Page();
      case Step.Step19:
        return Step19Page();
      case Step.Step20:
        return Step20Page();
      case Step.Step21:
        return Step21Page();
      case Step.Step22:
        return Step22Page();
      case Step.Step23:
        return Step23Page();
  }
  return null;
}

class HomePage extends StatefulWidget
{
  Step step = Step.Intro;
  StepPage stepPage;
  
//  HomePage(){stepPage = getPage(step);}
  
  @override
  State<StatefulWidget> createState() {
     return HomePageState();
  }
}

class HomePageState extends State<HomePage> with SingleTickerProviderStateMixin
{
  
  TabController tabController;
  
  Drawer drawer;


  @override
  void initState() {
    super.initState();
    tabController = TabController(length: Step.values.length, vsync: this,)..addListener(()=>ss());


    drawer = Drawer(
      child: ListView.builder(itemBuilder: (context, i){
        if(i < Step.values.length)
        {
          return ListTile(
            title: Text(getTitle(Step.values[i]),style: TextStyle(fontSize: 30.0),),
            onTap: (){
              tabController.index = i;
              Navigator.of(context).pop();
              ss();
              },
            //decoration: BoxDecoration(color: Colors.blueAccent),
          );
        }
      }),
    );
  }

  @override
  Widget build(BuildContext context) {

    ss = ()=>setState(() {});

    return Scaffold(
      appBar: AppBar(title: Text(getTitle(Step.values[tabController.index])),),
      drawer: drawer,
      body: TabBarView(
          controller: tabController,
          children: [
            IntroPage(),
            Step1Page(),
            Step2Page(),
            Step3Page(),
            Step4Page(),
            Step5Page(),
            Step6Page(),
            Step7Page(),
            Step8Page(),
            Step9Page(),
            Step10Page(),
            Step11Page(),
            Step12Page(),
            Step13Page(),
            Step14Page(),
            Step15Page(),
            Step16Page(),
            Step17Page(),
            Step18Page(),
            Step19Page(),
            Step20Page(),
            Step21Page(),
            Step22Page(),
            Step23Page(),
          ])
    );
  }
  
}


/*
TabBarView(
        controller: tabController,
          children: [
            IntroPage(),
            Step1Page(),
            Step2Page(),
            Step2Page(),
            Step3Page(),
            Step4Page(),
            Step5Page(),
            Step6Page(),
            Step7Page(),
            Step8Page(),
            Step9Page(),
            Step10Page(),
            Step11Page(),
            Step12Page(),
            Step13Page(),
            Step14Page(),
            Step15Page(),
            Step16Page(),
            Step17Page(),
            Step18Page(),
            Step19Page(),
            Step20Page(),
            Step21Page(),
            Step22Page(),
            Step23Page(),
            Step24Page(),
            Step25Page(),
            Step26Page(),
            Step27Page(),
      ])
* */