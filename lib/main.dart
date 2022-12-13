// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:ohctech/pages/approved_injury.dart';
import 'package:ohctech/pages/approved_medical.dart';
import 'package:ohctech/pages/approved_opd.dart';
import 'package:ohctech/pages/approved_sickness.dart';
import 'package:ohctech/pages/home.dart';
import 'package:ohctech/pages/injury.dart';
import 'package:ohctech/pages/login.dart';
import 'package:ohctech/pages/medical_details.dart';
import 'package:ohctech/pages/medical_examination.dart';
import 'package:ohctech/pages/pending_opd.dart';
import 'package:ohctech/pages/opd_form.dart';
import 'package:ohctech/pages/osi_graph.dart';
import 'package:ohctech/pages/sickness.dart';
import 'package:ohctech/utils/routes.dart';
import 'package:ohctech/widgets/themes.dart';

import 'widgets/patient_widget_opd.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      debugShowCheckedModeBanner: false,
      //home: HomePage(),
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.opdRoute: (context) => OpdPage(),
        MyRoutes.injuryRoute: (context) => InjuryPage(),
        MyRoutes.medExamRoute: (context) => MedicalPage(),
        MyRoutes.sicknessRoute: (context) => SicknessPage(),
        MyRoutes.approvedOpdRoute: (context) => ApprovedOPD(),
        MyRoutes.approvedInjuryRoute: (context) => ApprovedInjury(),
        MyRoutes.approvedMedicalRoute: (context) => ApprovedMedical(),
        MyRoutes.approvedSicknessRoute: (context) => ApprovedSickness(),
        MyRoutes.reportsRoute: (context) => Osi(),
      },
    );
  }
}
