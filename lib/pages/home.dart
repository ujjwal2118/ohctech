// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ohctech/utils/routes.dart';

import 'package:ohctech/widgets/drawer.dart';

class HomePage extends StatelessWidget {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text(
          "OHC TECH - Daily Statistics",
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    flex: 2,
                    child: InkWell(
                      onTap: () => moveToOpd(context),
                      child: Container(
                        width: 200,
                        height: 100,
                        margin: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(25.0),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/images/st1.png",
                                    fit: BoxFit.contain,
                                    height: 50,
                                    width: 70,
                                  ),
                                  SizedBox(width: 60),
                                  Text(
                                    "OPD",
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
                          borderRadius: BorderRadius.circular(10),
                          // ignore: prefer_const_literals_to_create_immutables
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x3f000000),
                              blurRadius: 4,
                              offset: Offset(0, 4),
                            ),
                          ],
                          color: Color(0xfff8683a),
                        ),
                      ),
                    )),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    flex: 1,
                    child: InkWell(
                      onTap: () => moveToInjury(context),
                      child: Container(
                        width: 106,
                        height: 100,
                        margin: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(25.0),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/images/injury1.png",
                                    fit: BoxFit.contain,
                                    height: 50,
                                    width: 70,
                                  ),
                                  SizedBox(width: 40),
                                  Text(
                                    "INJURY",
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
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x3f000000),
                              blurRadius: 4,
                              offset: Offset(0, 4),
                            ),
                          ],
                          color: Color.fromARGB(255, 189, 3, 3),
                        ),
                      ),
                    )),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: InkWell(
                    onTap: () => moveToMedExam(context),
                    child: Container(
                      width: 106,
                      height: 100,
                      margin: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(25.0),
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/images/medexam.png",
                                  fit: BoxFit.contain,
                                  height: 50,
                                  width: 70,
                                ),
                                SizedBox(width: 20),
                                Text(
                                  "EXAMINATION",
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
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3f000000),
                            blurRadius: 4,
                            offset: Offset(0, 4),
                          ),
                        ],
                        color: Color.fromARGB(255, 49, 130, 222),
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
                    flex: 1,
                    child: InkWell(
                      onTap: () => moveToSickness(context),
                      child: Container(
                        width: 106,
                        height: 100,
                        margin: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(25.0),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/images/fittt.png",
                                    fit: BoxFit.contain,
                                    height: 50,
                                    width: 70,
                                  ),
                                  SizedBox(width: 30),
                                  Text(
                                    "FITNESS",
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
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x3f000000),
                              blurRadius: 4,
                              offset: Offset(0, 4),
                            ),
                          ],
                          color: Color.fromARGB(255, 25, 170, 17),
                        ),
                      ),
                    )),
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
                          borderRadius: BorderRadius.circular(10),
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
