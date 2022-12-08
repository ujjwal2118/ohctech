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
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "OHC TECH - Daily Statistics",
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    width: 300,
                    height: 215,
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
                                    var patient = PatientModel.patients[index];
                                    return ListTile(
                                      // leading: HeroIcon(HeroIcons.calendar,style: HeroIconStyle.outline, color: Colors.black,size: 30,),
                                      // horizontalTitleGap: 50,
                                      leading: Image.asset(
                                        "assets/images/st1.png",
                                        fit: BoxFit.contain,
                                        height: 100,
                                        width: 70,
                                      ),
                                      title: Text(
                                        'OPD',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: 40, color: Colors.white),
                                      ),
                                      subtitle: Text(
                                          'Approved Case: (${patient.approved_opd_count})     Pending Case: (${patient.pending_opd_count}) ',
                                          style: TextStyle(
                                              fontSize: 18.0,
                                              color: Color.fromARGB(
                                                  255, 239, 237, 237))),
                                    );
                                  },
                                )
                              : Center(
                                  child: CircularProgressIndicator(),
                                ),
                          ButtonBar(
                            children: <Widget>[
                              ElevatedButton(
                                child: Text('Approved ',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color.fromARGB(
                                            255, 239, 237, 237))),
                                onPressed: () {
                                  print("Approved Click");
                                  moveToapprovedOpd(context);
                                },
                              ),
                              ElevatedButton(
                                child: Text('Pending ',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color.fromARGB(
                                            255, 239, 237, 237))),
                                onPressed: () {
                                  print("Pending Click");
                                  moveToOpd(context);
                                },
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
                    width: 300,
                    height: 215,
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
                                    var patient = PatientModel.patients[index];
                                    return ListTile(
                                      // leading: HeroIcon(HeroIcons.calendar,style: HeroIconStyle.outline, color: Colors.black,size: 30,),
                                      leading: Image.asset(
                                        "assets/images/injury1.png",
                                        fit: BoxFit.contain,
                                        height: 100,
                                        width: 70,
                                      ),
                                      title: Text(
                                        'INJURY',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: 40, color: Colors.white),
                                      ),
                                      subtitle: Text(
                                          'Approved Case: (${patient.approved_injury_count})       Pending Case: (${patient.pending_injury_count}) ',
                                          style: TextStyle(
                                              fontSize: 18.0,
                                              color: Color.fromARGB(
                                                  255, 239, 237, 237))),
                                    );
                                  },
                                )
                              : Center(
                                  child: CircularProgressIndicator(),
                                ),
                          ButtonBar(
                            children: <Widget>[
                              ElevatedButton(
                                child: Text('Approved ',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color.fromARGB(
                                            255, 239, 237, 237))),
                                onPressed: () {
                                  moveToapprovedInjury(context);
                                },
                              ),
                              ElevatedButton(
                                child: Text('Pending ',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color.fromARGB(
                                            255, 239, 237, 237))),
                                onPressed: () {
                                  print("Pending Click");
                                  moveToInjury(context);
                                },
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
                    width: 300,
                    height: 210,
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
                                    var patient = PatientModel.patients[index];
                                    return ListTile(
                                      // leading: HeroIcon(HeroIcons.calendar,style: HeroIconStyle.outline, color: Colors.black,size: 30,),
                                      leading: Image.asset(
                                        "assets/images/medexam.png",
                                        fit: BoxFit.contain,
                                        height: 100,
                                        width: 70,
                                      ),
                                      title: Text(
                                        'EXAMINATION',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: 30, color: Colors.white),
                                      ),
                                      subtitle: Text(
                                          'Approved Case: (${patient.approved_medical_count})       Pending Case: (${patient.pending_medical_count}) ',
                                          style: TextStyle(
                                              fontSize: 18.0,
                                              color: Color.fromARGB(
                                                  255, 239, 237, 237))),
                                    );
                                  },
                                )
                              : Center(
                                  child: CircularProgressIndicator(),
                                ),
                          SizedBox(
                            height: 10,
                          ),
                          ButtonBar(
                            children: <Widget>[
                              ElevatedButton(
                                child: Text('Approved ',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color.fromARGB(
                                            255, 239, 237, 237))),
                                onPressed: () {
                                  moveToapprovedMedical(context);
                                },
                              ),
                              ElevatedButton(
                                child: Text('Pending ',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color.fromARGB(
                                            255, 239, 237, 237))),
                                onPressed: () {
                                  print("Pending Click");
                                  moveToMedExam(context);
                                },
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
                    width: 300,
                    height: 200,
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
                                    var patient = PatientModel.patients[index];
                                    return ListTile(
                                      // leading: HeroIcon(HeroIcons.calendar,style: HeroIconStyle.outline, color: Colors.black,size: 30,),
                                      leading: Image.asset(
                                        "assets/images/fittt.png",
                                        fit: BoxFit.contain,
                                        height: 100,
                                        width: 70,
                                      ),
                                      title: Text(
                                        'FITNESS',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: 30, color: Colors.white),
                                      ),
                                      subtitle: Text(
                                          'Approved Case: (${patient.approved_sickness_count})       Pending Case: (${patient.pending_sickness_count}) ',
                                          style: TextStyle(
                                              fontSize: 18.0,
                                              color: Color.fromARGB(
                                                  255, 239, 237, 237))),
                                    );
                                  },
                                )
                              : Center(
                                  child: CircularProgressIndicator(),
                                ),
                          ButtonBar(
                            children: <Widget>[
                              ElevatedButton(
                                child: Text('Approved ',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color.fromARGB(
                                            255, 239, 237, 237))),
                                onPressed: () {
                                  moveToapprovedSickness(context);
                                },
                              ),
                              ElevatedButton(
                                child: Text('Pending ',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color.fromARGB(
                                            255, 239, 237, 237))),
                                onPressed: () {
                                  print("Pending Click");
                                  moveToSickness(context);
                                },
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
                        width: 300,
                        height: 100,
                        margin: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(25.0),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/images/report.png",
                                    fit: BoxFit.contain,
                                    height: 50,
                                    width: 70,
                                  ),
                                  SizedBox(width: 30),
                                  Text(
                                    "REPORTING",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        fontSize: 25, color: Colors.white),
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
          ],
        ),
      ),
      drawer: MyDrawer(
        text: '',
      ),
    );
  }
}
