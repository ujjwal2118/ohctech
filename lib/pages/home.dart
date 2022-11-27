// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, prefer_interpolation_to_compose_strings

import 'dart:convert';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:ohctech/utils/routes.dart';
import 'package:ohctech/widgets/drawer.dart';
import 'package:http/http.dart' as http;
import '../models/casecount.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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

  var response;
  Casecount countCase;

  Future<Casecount> Countload(BuildContext context) async {
    var url = "http://dushant-mali.great-site.net/mobile/table.php?i=1";

    response = await http.post(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    var patientJson = response.body.toString();
    // countData = ;
    var decodedData = jsonDecode(patientJson);
    CasecountModel.counter = List.from(decodedData)
        .map<Casecount>((counter) => Casecount.fromMap(counter))
        .toList();
    // print(countCase.aopd);
    print("DM");
  }

  void initState() {
    super.initState();
    Countload(context);
    // print(countCase.aopd);
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
                    height: 200,
                    padding: new EdgeInsets.all(10.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: Colors.lightGreenAccent[400],
                      elevation: 10,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ListTile(
                            // leading: HeroIcon(HeroIcons.calendar,style: HeroIconStyle.outline, color: Colors.black,size: 30,),
                            horizontalTitleGap: 50,
                            leading: Image.asset(
                              "assets/images/st1.png",
                              fit: BoxFit.contain,
                              height: 100,
                              width: 70,
                            ),
                            title: Text(
                              'OPD',
                              textAlign: TextAlign.left,
                              style:
                                  TextStyle(fontSize: 45, color: Colors.white),
                            ),
                            subtitle:
                                Text(' ', style: TextStyle(fontSize: 18.0)),
                          ),
                          ButtonBar(
                            alignment: MainAxisAlignment.center,
                            children: <Widget>[
                              ElevatedButton(
                                style: ButtonStyle(
                                  elevation: MaterialStatePropertyAll(10),
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.greenAccent),
                                ),
                                child: Text(
                                  'Approved (  15   ) ',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                onPressed: () {
                                  print("Approved Click");
                                },
                              ),
                              ElevatedButton(
                                style: ButtonStyle(
                                  elevation: MaterialStatePropertyAll(10),
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.amber),
                                ),
                                child: Text(
                                  'Pendding ( 150 )',
                                  textAlign: TextAlign.center,
                                ),
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
            //

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
                      color: Colors.blueAccent,
                      elevation: 10,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ListTile(
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
                              style:
                                  TextStyle(fontSize: 40, color: Colors.white),
                            ),
                            subtitle:
                                Text(' ', style: TextStyle(fontSize: 18.0)),
                          ),
                          ButtonBar(
                            alignment: MainAxisAlignment.center,
                            children: <Widget>[
                              ElevatedButton(
                                style: ButtonStyle(
                                  elevation: MaterialStatePropertyAll(10),
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.greenAccent),
                                ),
                                child: Text(
                                  'Approved ( 5 )',
                                  textAlign: TextAlign.center,
                                ),
                                onPressed: () {
                                  print("Approved Click");
                                },
                              ),
                              ElevatedButton(
                                style: ButtonStyle(
                                  elevation: MaterialStatePropertyAll(10),
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.amber),
                                ),
                                child: Text(
                                  'Pendding ( 100 )',
                                  textAlign: TextAlign.center,
                                ),
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
                    height: 200,
                    padding: new EdgeInsets.all(10.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: Colors.blueGrey[900],
                      elevation: 10,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ListTile(
                            // leading: HeroIcon(HeroIcons.calendar,style: HeroIconStyle.outline, color: Colors.black,size: 30,),
                            leading: Image.asset(
                              "assets/images/medical.png",
                              // height: 100,
                              // width: 70,
                            ),
                            title: Text(
                              'EXAMINATION',
                              textAlign: TextAlign.left,
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            ),
                            subtitle:
                                Text(' ', style: TextStyle(fontSize: 18.0)),
                          ),
                          ButtonBar(
                            alignment: MainAxisAlignment.center,
                            children: <Widget>[
                              ElevatedButton(
                                style: ButtonStyle(
                                  elevation: MaterialStatePropertyAll(10),
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.greenAccent),
                                ),
                                child: Text(
                                  'Approved ( 5 ) ',
                                  textAlign: TextAlign.center,
                                ),
                                onPressed: () {
                                  print("Approved Click");
                                },
                              ),
                              ElevatedButton(
                                style: ButtonStyle(
                                  elevation: MaterialStatePropertyAll(10),
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.amber),
                                ),
                                child: Text(
                                  'Pendding ( 100 )',
                                  textAlign: TextAlign.center,
                                ),
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
                          ListTile(
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
                              style:
                                  TextStyle(fontSize: 35, color: Colors.white),
                            ),
                            subtitle:
                                Text('', style: TextStyle(fontSize: 18.0)),
                          ),
                          ButtonBar(
                            alignment: MainAxisAlignment.center,
                            children: <Widget>[
                              ElevatedButton(
                                style: ButtonStyle(
                                  elevation: MaterialStatePropertyAll(10),
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.greenAccent),
                                ),
                                child: Text(
                                  'Approved ( 5 )',
                                  textAlign: TextAlign.center,
                                ),
                                onPressed: () {
                                  print("Approved Click");
                                },
                              ),
                              ElevatedButton(
                                style: ButtonStyle(
                                  elevation: MaterialStatePropertyAll(10),
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.amber),
                                ),
                                child: Text(
                                  'Pendding ( 230 )',
                                  textAlign: TextAlign.center,
                                ),
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
                  child: Container(
                    width: 300,
                    height: 200,
                    padding: new EdgeInsets.all(10.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: Color.fromARGB(255, 141, 0, 184),
                      elevation: 10,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ListTile(
                            // leading: HeroIcon(HeroIcons.calendar,style: HeroIconStyle.outline, color: Colors.black,size: 30,),
                            leading: Image.asset(
                              "assets/images/report.png",
                              fit: BoxFit.contain,
                              height: 100,
                              width: 70,
                            ),
                            title: Text(
                              'REPORTING',
                              textAlign: TextAlign.left,
                              style:
                                  TextStyle(fontSize: 28, color: Colors.white),
                            ),
                            subtitle:
                                Text('', style: TextStyle(fontSize: 18.0)),
                          ),
                          ButtonBar(
                            alignment: MainAxisAlignment.center,
                            children: <Widget>[
                              ElevatedButton(
                                style: ButtonStyle(
                                  elevation: MaterialStatePropertyAll(10),
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.amber),
                                ),
                                child: Text(
                                  'View ',
                                  textAlign: TextAlign.center,
                                ),
                                onPressed: () {
                                  print("Pending Click");
                                  moveToReports(context);
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
          ],
        ),
      ),
      drawer: MyDrawer(
        text: '',
      ),
    );
  }
}
