import 'package:shared_preferences/shared_preferences.dart';

class CheckValues {
  static bool sketchesDone = false;
  static bool threeDimImageDone = false;
  static bool partsListDone = false;
  static bool technicalSketchDone = false;
  static bool billOfMaterialsDone = false;
  static bool radialArmSawDone = false;
  static bool surfacePlanerDone = false;
  static bool jointerDone = false;
  static bool layoutBoardDone = false;
  static bool compoundMiterSawDone = false;
  static bool tableSawDone = false;
  static bool glueDone = false;
  static bool bandSawDone = false;
  static bool sandersDone = false;
  static bool routerDone = false;
  static bool laserEngraverDone = false;
//  static bool drillPressDone = false;
  
  static bool drillPressDone_blindHole = false;
  static bool drillPressDone_layout = false;
  static bool drillPressDone_plugs = false;
  
  static bool attachPiecesDone = false;
  static bool finalSandingDone = false;
  static bool finishDone = false;
  static bool addNameDone = false;
  static bool reflectionDone = false;
  static bool portfolioDone = false;
  
  static printValues()
  {
    print(sketchesDone);
    print(threeDimImageDone);
    print(partsListDone);
    print(technicalSketchDone);
    print(billOfMaterialsDone);
    print(radialArmSawDone);
    print(surfacePlanerDone);
    print(jointerDone);
    print(layoutBoardDone);
    print(compoundMiterSawDone);
    print(tableSawDone);
    print(glueDone);
    print(bandSawDone);
    print(sandersDone);
    print(routerDone);
    print(laserEngraverDone);
    print(drillPressDone_blindHole);
    print(drillPressDone_layout);
    print(drillPressDone_plugs);
    print(attachPiecesDone);
    print(finalSandingDone);
    print(finishDone);
    print(addNameDone);
    print(reflectionDone);
    print(portfolioDone);
  }
  
  static bool getBool(CheckValue checkValue)
  {
    switch(checkValue) {
      case CheckValue.sketchesDone:
        return CheckValues.sketchesDone;
        
      case CheckValue.threeDimImageDone:
        return CheckValues.threeDimImageDone;
        
      case CheckValue.partsListDone:
        return CheckValues.partsListDone;
        
      case CheckValue.technicalSketchDone:
        return CheckValues.technicalSketchDone;
        
      case CheckValue.billOfMaterialsDone:
        return CheckValues.billOfMaterialsDone;
        
      case CheckValue.radialArmSawDone:
        return CheckValues.radialArmSawDone;
        
      case CheckValue.surfacePlanerDone:
        return CheckValues.surfacePlanerDone;
        
      case CheckValue.jointerDone:
        return CheckValues.jointerDone;
        
      case CheckValue.layoutBoardDone:
        return CheckValues.layoutBoardDone;
        
      case CheckValue.compoundMiterSawDone:
        return CheckValues.compoundMiterSawDone;
        
      case CheckValue.tableSawDone:
        return CheckValues.tableSawDone;
        
      case CheckValue.glueDone:
        return CheckValues.glueDone;
        
      case CheckValue.bandSawDone:
        return CheckValues.bandSawDone;
        
      case CheckValue.sandersDone:
        return CheckValues.sandersDone;
        
      case CheckValue.routerDone:
        return CheckValues.routerDone;
        
      case CheckValue.laserEngraverDone:
        return CheckValues.laserEngraverDone;
        
      case CheckValue.drillPressDone_blindHole:
        return CheckValues.drillPressDone_blindHole;
        
      case CheckValue.drillPressDone_layout:
        return CheckValues.drillPressDone_layout;
        
      case CheckValue.drillPressDone_plugs:
        return CheckValues.drillPressDone_plugs;
        
      case CheckValue.attachPiecesDone:
        return CheckValues.attachPiecesDone;
        
      case CheckValue.finalSandingDone:
        return CheckValues.finalSandingDone;
        
      case CheckValue.finishDone:
        return CheckValues.finishDone;
        
      case CheckValue.addNameDone:
        return CheckValues.addNameDone;
        
      case CheckValue.reflectionDone:
        return CheckValues.reflectionDone;
        
      case CheckValue.portfolioDone:
        return CheckValues.portfolioDone;
        
    }
  }
  
  static setVal({bool v, CheckValue checkValue})
  {
    switch(checkValue) {
      case CheckValue.sketchesDone:
         CheckValues.sketchesDone; CheckValues.sketchesDone = v;break;
    
      case CheckValue.threeDimImageDone:
         CheckValues.threeDimImageDone; CheckValues.threeDimImageDone = v;break;
    
      case CheckValue.partsListDone:
         CheckValues.partsListDone; CheckValues.partsListDone = v;break;
    
      case CheckValue.technicalSketchDone:
         CheckValues.technicalSketchDone; CheckValues.technicalSketchDone = v;break;
    
      case CheckValue.billOfMaterialsDone:
         CheckValues.billOfMaterialsDone; CheckValues.billOfMaterialsDone = v;break;
    
      case CheckValue.radialArmSawDone:
         CheckValues.radialArmSawDone; CheckValues.radialArmSawDone = v;break;
    
      case CheckValue.surfacePlanerDone:
         CheckValues.surfacePlanerDone; CheckValues.surfacePlanerDone = v;break;
    
      case CheckValue.jointerDone:
         CheckValues.jointerDone; CheckValues.jointerDone = v;break;
    
      case CheckValue.layoutBoardDone:
         CheckValues.layoutBoardDone; CheckValues.layoutBoardDone = v;break;
    
      case CheckValue.compoundMiterSawDone:
         CheckValues.compoundMiterSawDone; CheckValues.compoundMiterSawDone = v;break;
    
      case CheckValue.tableSawDone:
         CheckValues.tableSawDone; CheckValues.tableSawDone = v;break;
    
      case CheckValue.glueDone:
         CheckValues.glueDone; CheckValues.glueDone = v;break;
    
      case CheckValue.bandSawDone:
         CheckValues.bandSawDone; CheckValues.bandSawDone = v;break;
    
      case CheckValue.sandersDone:
         CheckValues.sandersDone; CheckValues.sandersDone = v;break;
    
      case CheckValue.routerDone:
         CheckValues.routerDone; CheckValues.routerDone = v;break;
    
      case CheckValue.laserEngraverDone:
         CheckValues.laserEngraverDone; CheckValues.laserEngraverDone = v;break;
    
      case CheckValue.drillPressDone_blindHole:
         CheckValues.drillPressDone_blindHole; CheckValues.drillPressDone_blindHole = v;break;
    
      case CheckValue.drillPressDone_layout:
         CheckValues.drillPressDone_layout; CheckValues.drillPressDone_layout = v;break;
    
      case CheckValue.drillPressDone_plugs:
         CheckValues.drillPressDone_plugs; CheckValues.drillPressDone_plugs = v;break;
    
      case CheckValue.attachPiecesDone:
         CheckValues.attachPiecesDone; CheckValues.attachPiecesDone = v;break;
    
      case CheckValue.finalSandingDone:
         CheckValues.finalSandingDone; CheckValues.finalSandingDone = v;break;
    
      case CheckValue.finishDone:
         CheckValues.finishDone; CheckValues.finishDone = v;break;
    
      case CheckValue.addNameDone:
         CheckValues.addNameDone; CheckValues.addNameDone = v;break;
    
      case CheckValue.reflectionDone:
         CheckValues.reflectionDone; CheckValues.reflectionDone = v;break;
    
      case CheckValue.portfolioDone:
         CheckValues.portfolioDone; CheckValues.portfolioDone = v;break;
    
    }
  }
  
  static void saveData() async
  {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('sketchesDone', sketchesDone);
    prefs.setBool('threeDimImageDone', threeDimImageDone);
    prefs.setBool('partsListDone', partsListDone);
    prefs.setBool('technicalSketchDone', technicalSketchDone);
    prefs.setBool('billOfMaterialsDone', billOfMaterialsDone);
    prefs.setBool('radialArmSawDone', radialArmSawDone);
    prefs.setBool('surfacePlanerDone', surfacePlanerDone);
    prefs.setBool('jointerDone', jointerDone);
    prefs.setBool('layoutBoardDone', layoutBoardDone);
    prefs.setBool('compoundMiterSawDone', compoundMiterSawDone);
    prefs.setBool('tableSawDone', tableSawDone);
    prefs.setBool('glueDone', glueDone);
    prefs.setBool('bandSawDone', bandSawDone);
    prefs.setBool('sandersDone', sandersDone);
    prefs.setBool('routerDone', routerDone);
    prefs.setBool('laserEngraverDone', laserEngraverDone);
    prefs.setBool('drillPressDone_blindHole', drillPressDone_blindHole);
    prefs.setBool('drillPressDone_layout', drillPressDone_layout);
    prefs.setBool('drillPressDone_plugs', drillPressDone_plugs);
    prefs.setBool('attachPiecesDone', attachPiecesDone);
    prefs.setBool('finalSandingDone', finalSandingDone);
    prefs.setBool('finishDone', finishDone);
    prefs.setBool('addNameDone', addNameDone);
    prefs.setBool('reflectionDone', reflectionDone);
    prefs.setBool('portfolioDone', portfolioDone);
  }
  static void readData() async
  {
    final prefs = await SharedPreferences.getInstance();

    sketchesDone = prefs.getBool('sketchesDone') ?? false;
    threeDimImageDone = prefs.getBool('threeDimImageDone') ?? false;
    partsListDone = prefs.getBool('partsListDone') ?? false;
    technicalSketchDone = prefs.getBool('technicalSketchDone') ?? false;
    billOfMaterialsDone = prefs.getBool('billOfMaterialsDone') ?? false;
    radialArmSawDone = prefs.getBool('radialArmSawDone') ?? false;
    surfacePlanerDone = prefs.getBool('surfacePlanerDone') ?? false;
    jointerDone = prefs.getBool('jointerDone') ?? false;
    layoutBoardDone = prefs.getBool('layoutBoardDone') ?? false;
    compoundMiterSawDone = prefs.getBool('compoundMiterSawDone') ?? false;
    tableSawDone = prefs.getBool('tableSawDone') ?? false;
    glueDone = prefs.getBool('glueDone') ?? false;
    bandSawDone = prefs.getBool('bandSawDone') ?? false;
    sandersDone = prefs.getBool('sandersDone') ?? false;
    routerDone = prefs.getBool('routerDone') ?? false;
    laserEngraverDone = prefs.getBool('laserEngraverDone') ?? false;
    drillPressDone_blindHole = prefs.getBool('drillPressDone_blindHole') ?? false;
    drillPressDone_layout = prefs.getBool('drillPressDone_layout') ?? false;
    drillPressDone_plugs = prefs.getBool('drillPressDone_plugs') ?? false;
    attachPiecesDone = prefs.getBool('attachPiecesDone') ?? false;
    finalSandingDone = prefs.getBool('finalSandingDone') ?? false;
    finishDone = prefs.getBool('finishDone') ?? false;
    addNameDone = prefs.getBool('addNameDone') ?? false;
    reflectionDone = prefs.getBool('reflectionDone') ?? false;
    portfolioDone = prefs.getBool('portfolioDone') ?? false;
  }
}

enum CheckValue {
  sketchesDone,
  threeDimImageDone,
  partsListDone,
  technicalSketchDone,
  billOfMaterialsDone,
  radialArmSawDone,
  surfacePlanerDone,
  jointerDone,
  layoutBoardDone,
  compoundMiterSawDone,
  tableSawDone,
  glueDone,
  bandSawDone,
  sandersDone,
  routerDone,
  laserEngraverDone,
  drillPressDone_blindHole,
  drillPressDone_layout,
  drillPressDone_plugs,
  attachPiecesDone,
  finalSandingDone,
  finishDone,
  addNameDone,
  reflectionDone,
  portfolioDone,
}
