// ignore_for_file: prefer_const_constructors
import 'dart:typed_data';

import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ohctech/models/patient.dart';
import 'package:ohctech/pages/pdf_preview_page.dart';

void main() {
  runApp(PatientDetailsSickness());
}

class PatientDetailsSickness extends StatelessWidget {
  final Patient patient;

  const PatientDetailsSickness({Key key, @required this.patient})
      : assert(patient != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Patient Details",
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.lightBlue,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => PdfPreviewPage(patient: patient),
              ),
            );
          },
          backgroundColor: Colors.green,
          child: const Icon(Icons.picture_as_pdf),
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
          child: ListView(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Patient Name : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Container(
                        child: Text(patient.patient_name),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Sickness Date : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(45, 0, 0, 0),
                      child: Container(
                        child: Text(patient.sickness_date),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Absent From: ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(45, 0, 0, 0),
                      child: Container(
                        child: Text(patient.date_absent),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Absent To: ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(45, 0, 0, 0),
                      child: Container(
                        child: Text(patient.date_absent_to),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Date Of Return: ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(45, 0, 0, 0),
                      child: Container(
                        child: Text(patient.date_return),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Ticket No. : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(45, 0, 0, 0),
                      child: Container(
                        child: Text(patient.ticket_no),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Description: ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(63, 0, 0, 0),
                      child: Container(
                        child: Text(patient.des),
                      ),
                    ),
                  ],
                ),
              ),
              // Container(
              //   margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
              //   child: Row(
              //     children: <Widget>[
              //       Container(
              //         child: Text(
              //           "DISEASE TYPE : ",
              //           style: TextStyle(fontWeight: FontWeight.bold),
              //         ),
              //       ),
              //       Padding(
              //         padding: EdgeInsets.fromLTRB(17, 0, 0, 0),
              //         child: Container(
              //           child: Text("DISEASE TYPE"),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),

              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Ailment System : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(19, 0, 0, 0),
                      child: Container(
                        child: Text(patient.ailment_systems_new),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Ailment Name: ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Container(
                        child: Text(patient.ailment_name),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Fitness Status: ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(45, 0, 0, 0),
                      child: Container(
                        child: Text(patient.fitness_status),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}