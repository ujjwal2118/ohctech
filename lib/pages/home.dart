// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, missing_return
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:ohctech/models/patient.dart';
import 'package:ohctech/utils/routes.dart';
import 'package:pricing_cards/pricing_cards.dart';
import 'package:ohctech/widgets/drawer.dart';
import 'package:fluid_action_card/FluidActionCard/fluid_action_card.dart';
import 'package:heroicons/heroicons.dart';
import 'package:http/http.dart' as http;
import 'package:sizer/sizer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var urlOPD = "http://103.196.222.49:85/jsw/patient_count.php";

  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    var response = await http.get(Uri.parse(urlOPD));

    var patientJson = response.body.toString();

    var decodedData = jsonDecode(patientJson);
    var patientsData = decodedData;

    print(patientsData);

    PatientModel.patients = List.from(patientsData)
        .map<Patient>((patient) => Patient.fromMap(patient))
        .toList();

    setState(() {});
  }

  moveToOpd(BuildContext context) async {
    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, MyRoutes.opdRoute);
  }

  moveToInjury(BuildContext context) async {
    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, MyRoutes.injuryRoute);
  }

  moveToMedExam(BuildContext context) async {
    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, MyRoutes.medExamRoute);
  }

  moveToReports(BuildContext context) async {
    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, MyRoutes.reportsRoute);
  }

  moveToSickness(BuildContext context) async {
    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, MyRoutes.sicknessRoute);
  }

  moveToapprovedOpd(BuildContext context) async {
    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, MyRoutes.approvedOpdRoute);
  }

  moveToapprovedInjury(BuildContext context) async {
    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, MyRoutes.approvedInjuryRoute);
  }

  moveToapprovedMedical(BuildContext context) async {
    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, MyRoutes.approvedMedicalRoute);
  }

  moveToapprovedSickness(BuildContext context) async {
    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, MyRoutes.approvedSicknessRoute);
  }

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            "OHC TECH - Daily Statistics",
          ),
        ),
        floatingActionButton: FloatingActionButton(
            elevation: 0.0,
            child: Icon(Icons.refresh),
            backgroundColor: Color.fromARGB(255, 32, 255, 3),
            onPressed: () {
              loadData();
              
            }),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 2.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      width: 30.w,
                      height: 27.h,
                      padding: new EdgeInsets.all(10.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        color: Color(0xfff8683a),
                        elevation: 10,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            (PatientModel.patients != null &&
                                    PatientModel.patients.isNotEmpty)
                                ? ListView.builder(
                                    scrollDirection: Axis.vertical,
                                    shrinkWrap: true,
                                    itemCount: PatientModel.patients.length,
                                    itemBuilder: (context, index) {
                                      var patient =
                                          PatientModel.patients[index];
                                      return ListTile(
                                        // leading: HeroIcon(HeroIcons.calendar,style: HeroIconStyle.outline, color: Colors.black,size: 30,),
                                        // horizontalTitleGap: 50,
                                        leading: Image.asset(
                                          "assets/images/st1.png",
                                          fit: BoxFit.contain,
                                          height: 20.h,
                                          width: 20.w,
                                        ),
                                        title: Text(
                                          'OPD',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 30.sp,
                                              color: Colors.white),
                                        ),
                                        subtitle: Text(
                                            'Approved Case: (${patient.approved_opd_count})     Pending Case: (${patient.pending_opd_count}) ',
                                            style: TextStyle(
                                                fontSize: 12.0.sp,
                                                color: Color.fromARGB(
                                                    255, 239, 237, 237))),
                                      );
                                    },
                                  )
                                : Center(
                                    child: CircularProgressIndicator(),
                                  ),
                            ButtonBar(
                              alignment: MainAxisAlignment.center,
                              children: <Widget>[
                                ElevatedButton(
                                  style: ButtonStyle(
                                    elevation: MaterialStatePropertyAll(10),
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.cyan[300]),
                                  ),
                                  child: Text(
                                    'Approved ',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                  onPressed: () {
                                    moveToapprovedOpd(context);
                                  },
                                ),
                                ElevatedButton(
                                    style: ButtonStyle(
                                      elevation: MaterialStatePropertyAll(10),
                                      backgroundColor:
                                      MaterialStateProperty.all(Colors.amber),
                                    ),
                                    child: Text(
                                      'Pending ',
                                      textAlign: TextAlign.center,
                                    ),
                                    onPressed: () {
                                      moveToOpd(context);
                                    }
                                ),
                              ],
                            ),              // ButtonBar(
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      width: 30.w,
                      height: 27.h,
                      padding: new EdgeInsets.all(10.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        color: Color.fromARGB(255, 189, 3, 3),
                        elevation: 10,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            (PatientModel.patients != null &&
                                    PatientModel.patients.isNotEmpty)
                                ? ListView.builder(
                                    scrollDirection: Axis.vertical,
                                    shrinkWrap: true,
                                    itemCount: PatientModel.patients.length,
                                    itemBuilder: (context, index) {
                                      var patient =
                                          PatientModel.patients[index];
                                      return ListTile(
                                        // leading: HeroIcon(HeroIcons.calendar,style: HeroIconStyle.outline, color: Colors.black,size: 30,),
                                        leading: Image.asset(
                                          "assets/images/injury1.png",
                                          fit: BoxFit.contain,
                                          height: 20.h,
                                          width: 20.w,
                                        ),
                                        title: Text(
                                          'INJURY',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 30.sp,
                                              color: Colors.white),
                                        ),
                                        subtitle: Text(
                                            'Approved Case: (${patient.approved_injury_count})       Pending Case: (${patient.pending_injury_count}) ',
                                            style: TextStyle(
                                                fontSize: 12.0.sp,
                                                color: Color.fromARGB(
                                                    255, 239, 237, 237))),
                                      );
                                    },
                                  )
                                : Center(
                                    child: CircularProgressIndicator(),
                                  ),
                            ButtonBar(
                              alignment: MainAxisAlignment.center,
                              children: <Widget>[
                                ElevatedButton(
                                  style: ButtonStyle(
                                    elevation: MaterialStatePropertyAll(10),
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.cyan[300]),
                                  ),
                                  child: Text(
                                    'Approved ',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                  onPressed: () {
                                    moveToapprovedInjury(context);
                                  },
                                ),
                                ElevatedButton(
                                    style: ButtonStyle(
                                      elevation: MaterialStatePropertyAll(10),
                                      backgroundColor:
                                      MaterialStateProperty.all(Colors.amber),
                                    ),
                                    child: Text(
                                      'Pending ',
                                      textAlign: TextAlign.center,
                                    ),
                                    onPressed: () {
                                      moveToInjury(context);
                                    }
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      width: 30.w,
                      height: 27.h,
                      padding: new EdgeInsets.all(10.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        color: Color.fromARGB(255, 49, 130, 222),
                        elevation: 10,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            (PatientModel.patients != null &&
                                    PatientModel.patients.isNotEmpty)
                                ? ListView.builder(
                                    scrollDirection: Axis.vertical,
                                    shrinkWrap: true,
                                    itemCount: PatientModel.patients.length,
                                    itemBuilder: (context, index) {
                                      var patient =
                                          PatientModel.patients[index];
                                      return ListTile(
                                        // leading: HeroIcon(HeroIcons.calendar,style: HeroIconStyle.outline, color: Colors.black,size: 30,),
                                        leading: Image.asset(
                                          "assets/images/medexam.png",
                                          fit: BoxFit.contain,
                                          height: 20.h,
                                          width: 20.w,
                                        ),
                                        title: Text(
                                          'EXAMINATION',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 23.sp,
                                              color: Colors.white),
                                        ),
                                        subtitle: Text(
                                            'Approved Case: (${patient.approved_medical_count})       Pending Case: (${patient.pending_medical_count}) ',
                                            style: TextStyle(
                                                fontSize: 12.0.sp,
                                                color: Color.fromARGB(
                                                    255, 239, 237, 237))),
                                      );
                                    },
                                  )
                                : Center(
                                    child: CircularProgressIndicator(),
                                  ),
                            SizedBox(
                              height: 2.h,
                            ),
                            ButtonBar(
                              alignment: MainAxisAlignment.center,
                              children: <Widget>[
                                ElevatedButton(
                                  style: ButtonStyle(
                                    elevation: MaterialStatePropertyAll(10),
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.cyan[300]),
                                  ),
                                  child: Text(
                                    'Approved ',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                  onPressed: () {
                                    moveToapprovedMedical(context);
                                  },
                                ),
                                ElevatedButton(
                                    style: ButtonStyle(
                                      elevation: MaterialStatePropertyAll(10),
                                      backgroundColor:
                                      MaterialStateProperty.all(Colors.amber),
                                    ),
                                    child: Text(
                                      'Pending ',
                                      textAlign: TextAlign.center,
                                    ),
                                    onPressed: () {
                                      moveToMedExam(context);
                                    }
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      width: 30.w,
                      height: 27.h,
                      padding: new EdgeInsets.all(10.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        color: Color.fromARGB(255, 25, 170, 17),
                        elevation: 10,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            (PatientModel.patients != null &&
                                    PatientModel.patients.isNotEmpty)
                                ? ListView.builder(
                                    scrollDirection: Axis.vertical,
                                    shrinkWrap: true,
                                    itemCount: PatientModel.patients.length,
                                    itemBuilder: (context, index) {
                                      var patient =
                                          PatientModel.patients[index];
                                      return ListTile(
                                        // leading: HeroIcon(HeroIcons.calendar,style: HeroIconStyle.outline, color: Colors.black,size: 30,),
                                        leading: Image.asset(
                                          "assets/images/fittt.png",
                                          fit: BoxFit.contain,
                                          height: 20.h,
                                          width: 20.w,
                                        ),
                                        title: Text(
                                          'FITNESS',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 30.sp,
                                              color: Colors.white),
                                        ),
                                        subtitle: Text(
                                            'Approved Case: (${patient.approved_sickness_count})       Pending Case: (${patient.pending_sickness_count}) ',
                                            style: TextStyle(
                                                fontSize: 12.0.sp,
                                                color: Color.fromARGB(
                                                    255, 239, 237, 237))),
                                      );
                                    },
                                  )
                                : Center(
                                    child: CircularProgressIndicator(),
                                  ),
                            ButtonBar(
                              alignment: MainAxisAlignment.center,
                              children: <Widget>[
                                ElevatedButton(
                                  style: ButtonStyle(
                                    elevation: MaterialStatePropertyAll(10),
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.cyan[300]),
                                  ),
                                  child: Text(
                                    'Approved ',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                  onPressed: () {
                                    moveToapprovedSickness(context);
                                  },
                                ),
                                ElevatedButton(
                                    style: ButtonStyle(
                                      elevation: MaterialStatePropertyAll(10),
                                      backgroundColor:
                                      MaterialStateProperty.all(Colors.amber),
                                    ),
                                    child: Text(
                                      'Pending ',
                                      textAlign: TextAlign.center,
                                    ),
                                    onPressed: () {
                                      moveToSickness(context);
                                    }
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      flex: 2,
                      child: InkWell(
                        onTap: () => moveToReports(context),
                        child: Container(
                          width: 30.w,
                          height: 20.h,
                          margin: EdgeInsets.all(20),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Image.asset(
                                        "assets/images/report.png",
                                        fit: BoxFit.contain,
                                        height: 8.h,
                                        width: 5.w,
                                      ),
                                    ),
                                    SizedBox(width: 8.w),
                                    Text(
                                      "REPORTING",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontSize: 25.sp, color: Colors.white),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x3f000000),
                                blurRadius: 4,
                                offset: Offset(0, 4),
                              ),
                            ],
                            color: Color.fromARGB(255, 9, 61, 5),
                          ),
                        ),
                      )),
                ],
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
        drawer: MyDrawer(
          text: '',
        ),
      );
    });
  }
}
