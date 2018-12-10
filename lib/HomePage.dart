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
  Step20, Step21, Step22, Step23, Step24, Step25, Step26, Step27}

String getTitle(Step s)
{
  switch(s)
  {
    case Step.Intro:
      return "Intro";
    case Step.Step1:
      return "1: Brainstorm Sketches";
    case Step.Step2:
      return "Step2";
    case Step.Step3:
      return "Step3";
    case Step.Step4:
      return "Step4";
    case Step.Step5:
      return "Step5";
    case Step.Step6:
      return "Step6";
    case Step.Step7:
      return "Step7";
    case Step.Step8:
      return "Step8";
    case Step.Step9:
      return "Step9";
    case Step.Step10:
      return "Step10";
    case Step.Step11:
      return "Step11";
    case Step.Step12:
      return "Step12";
    case Step.Step13:
      return "Step13";
    case Step.Step14:
      return "Step14";
    case Step.Step15:
      return "Step15";
    case Step.Step16:
      return "Step16";
    case Step.Step17:
      return "Step17";
    case Step.Step18:
      return "Step18";
    case Step.Step19:
      return "Step19";
    case Step.Step20:
      return "Step20";
    case Step.Step21:
      return "Step21";
    case Step.Step22:
      return "Step22";
    case Step.Step23:
      return "Step23";
    case Step.Step24:
      return "Step24";
    case Step.Step25:
      return "Step25";
    case Step.Step26:
      return "Step26";
    case Step.Step27:
      return "Step27";
  }
}

VoidCallback ss;

//
//Widget getPage(Step s)
//{
//
//  switch(s)
//  {
//    case Step.Intro:
//      return IntroPage();
//    case Step.Step1:
//      return Step1Page();
//    case Step.Step2:
//      return Step2Page();
//  }
//  return null;
//}

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
      ]),
    );
  }
  
}