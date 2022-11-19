// ignore_for_file: prefer_const_constructors
import 'dart:typed_data';

import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ohctech/models/patient.dart';
import 'package:ohctech/pages/injury_pdf_preview.dart';
import 'package:ohctech/pages/pdf_preview_page.dart';

void main() {
  runApp(PatientDetailsInjury());
}

class PatientDetailsInjury extends StatelessWidget {
  final Patient patient;

  const PatientDetailsInjury({Key key, @required this.patient})
      : assert(patient != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    Orientation deviceOrientation = MediaQuery.of(context).orientation;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon:Icon(Icons.arrow_back_ios),
          ),
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
                builder: (context) => InjurypdfPreview(patient: patient),
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
                        child: Text( patient.patient_name == null || patient.patient_name == "" ? "Please Select Patient" : patient.patient_name),
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
                        child: Text( patient.appointment_date == null || patient.appointment_date == "" ? "" : patient.appointment_date),
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
                        child: Text( patient.ticket_no == null || patient.ticket_no == "" ? "" : patient.ticket_no),
                      ),
                    ),
                  ],
                ),
              ),

              OrientationBuilder(
                builder: (context, orientation) => RichText(
                  text: TextSpan(
                    // Note: Styles for TextSpans must be explicitly defined.
                    // Child text spans will inherit styles from parent
                    style: const TextStyle(
                      fontSize: 14.0,
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Incident Location: ',
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text:  patient.incident_location == null || patient.incident_location == "" ? "" : patient.incident_location),
                    ],
                  ),
                ),
              ),

//  OrientationBuilder(
//                 builder: (context, orientation) =>
//                     Text(
//                         "Incident Location: "+ patient.incident_location,
//                       ),

//                 ),
              SizedBox(
                height: 10,
              ),

//               Container(
//                 margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
//                 child: Row(
//                   children: <Widget>[

//                   Text(
//                         "Incident Location: ",
//                         style: TextStyle(fontWeight: FontWeight.bold),
//                       ),

//  OrientationBuilder(
//                 builder: (context, orientation) =>  Text(
//                         patient.incident_location,
//                       ),

//                 ),

//                   ],
//                 ),
//               ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Injury Parts: ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(17, 0, 0, 0),
                      child: Container(
                        child: Text( patient.injury_parts_new == null || patient.injury_parts_new == "" ? "" : patient.injury_parts_new),
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
                        "Injury Classification: ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Container(
                        child: Text( patient.injury_classes_new == null || patient.injury_classes_new == "" ? "" : patient.injury_classes_new),
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
                        "Injury Type: ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Container(
                        child: Text( patient.injury_types_new == null || patient.injury_types_new == "" ? "" : patient.injury_types_new),
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
              //           "Injury Procedure: ",
              //           style: TextStyle(fontWeight: FontWeight.bold),
              //         ),
              //       ),
              //       Padding(
              //         padding: EdgeInsets.fromLTRB(19, 0, 0, 0),
              //         child: Container(
              //           child: Text(patient.injury_procedure),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),

              OrientationBuilder(
                builder: (context, orientation) => RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      fontSize: 14.0,
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Injury Procedure: ',
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: patient.injury_procedure == null || patient.injury_procedure == "" ? "" : patient.injury_procedure  ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 10,
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
                      TextSpan(text: patient.complaints == null ||  patient.complaints == "" ? "" :  patient.complaints ),
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
              // Container(
              //   margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
              //   child: Row(
              //     children: <Widget>[
              //       Container(
              //         child: Text(
              //           "Diagnosis : ",
              //           style: TextStyle(fontWeight: FontWeight.bold),
              //         ),
              //       ),
              //       Padding(
              //         padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
              //         child: Container(
              //           child: Text(patient.ailments_new == null || patient.ailments_new == "" ? "" : patient.ailments_new),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),

 OrientationBuilder(
                builder: (context, orientation) => RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      fontSize: 14.0,
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Diagnosis : ',
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text:patient.ailments_new == null || patient.ailments_new == "" ? "" : patient.ailments_new),
                    ],
                  ),
                ),
              ),

SizedBox(height: 10,),

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
                      TextSpan(text: patient.examination_remarks == null ||  patient.examination_remarks == '' ? "" :  patient.examination_remarks ),
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
