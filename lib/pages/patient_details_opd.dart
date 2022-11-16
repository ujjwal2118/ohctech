// ignore_for_file: prefer_const_constructors
import 'dart:typed_data';

import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ohctech/models/patient.dart';
import 'package:ohctech/pages/pdf_preview_page.dart';

void main() {
  runApp(PatientDetailsOpd());
}

class PatientDetailsOpd extends StatelessWidget {
  final Patient patient;

  const PatientDetailsOpd({Key key, @required this.patient})
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
                        "Visit Date : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(45, 0, 0, 0),
                      child: Container(
                        child: Text(patient.appointment_date),
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
              // Container(
              //   margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
              //   child: Row(
              //     children: <Widget>[
              //       Container(
              //         child: Text(
              //           "Timing : ",
              //           style: TextStyle(fontWeight: FontWeight.bold),
              //         ),
              //       ),
              //       Padding(
              //         padding: EdgeInsets.fromLTRB(63, 0, 0, 0),
              //         child: Container(
              //           child: Text("Timing"),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
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
              // Container(
              //   margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
              //   child: Row(
              //     children: <Widget>[
              //       Container(
              //         child: Text(
              //           "Case Type : ",
              //           style: TextStyle(fontWeight: FontWeight.bold),
              //         ),
              //       ),
              //       Padding(
              //         padding: EdgeInsets.fromLTRB(45, 0, 0, 0),
              //         child: Container(
              //           child: Text("Case Type"),
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

              OrientationBuilder(
                builder: (context, orientation) => RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      fontSize: 14.0,
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Complaints :',
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: patient.complaints),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 10,
              ),

              // Container(
              //   margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
              //   child: Row(
              //     children: <Widget>[
              //       Container(
              //         child: Text(
              //           "Complaints : ",
              //           style: TextStyle(fontWeight: FontWeight.bold),
              //         ),
              //       ),
              //       Padding(
              //         padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
              //         child: Container(
              //           child: Text(patient.complaints),
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
                        "Diagnosis : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                      child: Container(
                        child: Text(patient.ailments_new),
                      ),
                    ),
                  ],
                ),
              ),

              OrientationBuilder(
                builder: (context, orientation) => RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      fontSize: 14.0,
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Examination Findings :',
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: patient.examination_remarks),
                    ],
                  ),
                ),
              ),

              // Container(
              //   margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
              //   child: Row(
              //     children: <Widget>[
              //       Container(
              //         child: Text(
              //           "Examination Findings : ",
              //           style: TextStyle(fontWeight: FontWeight.bold),
              //         ),
              //       ),
              //       Padding(
              //         padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
              //         child: Container(
              //           child: Text(patient.examination_remarks),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // Container(
              //   margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
              //   child: Row(
              //     children: <Widget>[
              //       Container(
              //         child: Text(
              //           "History Of Drug Allergies : ",
              //           style: TextStyle(fontWeight: FontWeight.bold),
              //         ),
              //       ),
              //       Padding(
              //         padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              //         child: Container(
              //           child: Text("History Of Drug Allergies"),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                color: Colors.lightBlue,
                child: Center(
                  child: Text(
                    "Medicine",
                    style: TextStyle(
                      fontSize: 18,

                      color: Colors.black, //font color
                      letterSpacing: 2, //letter spacing
                      decorationStyle:
                          TextDecorationStyle.double, //double underline
                      decorationColor:
                          Colors.brown, //text decoration 'underline' color
                      decorationThickness: 2, //decoration 'underline' thickness
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Row(
                  children: <Widget>[
                    Table(
                      defaultColumnWidth: FixedColumnWidth(85),
                      border: TableBorder.all(
                          color: Colors.black,
                          style: BorderStyle.solid,
                          width: 2),
                      children: [
                        TableRow(children: [
                          Column(children: [
                            Text('Medicine', style: TextStyle(fontSize: 15.0))
                          ]),
                          Column(children: [
                            Text('Frequency', style: TextStyle(fontSize: 15.0))
                          ]),
                          Column(children: [
                            Text('DURATION', style: TextStyle(fontSize: 15.0))
                          ]),
                          Column(children: [
                            Text('Qty issued', style: TextStyle(fontSize: 15.0))
                          ]),
                        ]),
                        TableRow(children: [
                          Column(children: [
                            Text('NaN', style: TextStyle(fontSize: 15.0))
                          ]),
                          Column(children: [
                            Text('NaN', style: TextStyle(fontSize: 15.0))
                          ]),
                          Column(children: [
                            Text('NaN', style: TextStyle(fontSize: 15.0))
                          ]),
                          Column(children: [
                            Text('NaN', style: TextStyle(fontSize: 15.0))
                          ]),
                        ]),
                      ],
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
