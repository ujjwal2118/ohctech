// ignore_for_file: prefer_const_constructors
import 'dart:typed_data';

import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ohctech/models/medicine.dart';
import 'package:ohctech/models/patient.dart';
import 'package:ohctech/pages/pdf_preview_page.dart';
import 'package:animated_flip_card/animated_flip_card.dart';

class PatientDetailsOpd extends StatelessWidget {
  final Patient patient;

  const PatientDetailsOpd({Key key, @required this.patient, Medicine medicine})
      : assert(patient != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios),
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
                builder: (context) => PdfPreviewPage(patient: patient),
              ),
            );
          },
          backgroundColor: Colors.green,
          child: const Icon(Icons.picture_as_pdf),
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: ListView(
            children: <Widget>[
               Container(
      alignment: Alignment.center,
      child: AnimatedFlipCard(
          front:
          Image.asset(
            'assets/images/user.png',
            width: 250,
            fit: BoxFit.contain,
          ),
          back: Image.asset(
            'assets/images/logo.jpeg',
            width: 250,
            fit: BoxFit.contain,
          )
      ),
    ),
              Container(
                decoration: new BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.5),
                      blurRadius: 20.0, // soften the shadow
                      spreadRadius: 0.0, //extend the shadow
                      offset: Offset(
                        5.0, // Move to right 10  horizontally
                        5.0, // Move to bottom 10 Vertically
                      ),
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Card(
                      elevation: 10.20,
                      child: ListTile(
                        title: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: <Widget>[
                              Container(
                                child: Text(
                                  "Patient Name : ",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: Container(
                                  child: Text(patient.patient_name ?? "NA"),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: new BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.5),
                      blurRadius: 20.0, // soften the shadow
                      spreadRadius: 0.0, //extend the shadow
                      offset: Offset(
                        5.0, // Move to right 10  horizontally
                        5.0, // Move to bottom 10 Vertically
                      ),
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Card(
                      elevation: 10.20,
                      child: ListTile(
                        title: Row(
                          children: <Widget>[
                            Container(
                              child: Text(
                                "Visit Date : ",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Container(
                                child: Text(patient.appointment_date ?? "NA"),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: new BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.5),
                      blurRadius: 20.0, // soften the shadow
                      spreadRadius: 0.0, //extend the shadow
                      offset: Offset(
                        5.0, // Move to right 10  horizontally
                        5.0, // Move to bottom 10 Vertically
                      ),
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Card(
                      elevation: 10.20,
                      child: ListTile(
                        title: Row(
                          children: <Widget>[
                            Container(
                              child: Text(
                                "Ticket No. : ",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Container(
                                child: Text(patient.ticket_no ?? "NA"),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: new BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.5),
                      blurRadius: 20.0, // soften the shadow
                      spreadRadius: 0.0, //extend the shadow
                      offset: Offset(
                        5.0, // Move to right 10  horizontally
                        5.0, // Move to bottom 10 Vertically
                      ),
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Card(
                      elevation: 10.20,
                      child: ListTile(
                        title: Row(
                          children: <Widget>[
                            Container(
                              child: Text(
                                "Ailment System : ",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Container(
                                child:
                                    Text(patient.ailment_systems_new ?? "NA"),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: new BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.5),
                      blurRadius: 20.0, // soften the shadow
                      spreadRadius: 0.0, //extend the shadow
                      offset: Offset(
                        5.0, // Move to right 10  horizontally
                        5.0, // Move to bottom 10 Vertically
                      ),
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Card(
                      elevation: 10.20,
                      child: ListTile(
                        title: OrientationBuilder(
                          builder: (context, orientation) => RichText(
                            text: TextSpan(
                              style: const TextStyle(
                                fontSize: 14.0,
                                color: Colors.black,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Complaints :',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold)),
                                TextSpan(text: patient.complaints ?? "NA"),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: new BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.5),
                      blurRadius: 20.0, // soften the shadow
                      spreadRadius: 0.0, //extend the shadow
                      offset: Offset(
                        5.0, // Move to right 10  horizontally
                        5.0, // Move to bottom 10 Vertically
                      ),
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Card(
                      elevation: 10.20,
                      child: ListTile(
                        title: Row(
                          children: <Widget>[
                            Container(
                              child: Text(
                                "Diagnosis : ",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Container(
                                child: Text(patient.ailments_new ?? "NA"),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: new BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.5),
                      blurRadius: 20.0, // soften the shadow
                      spreadRadius: 0.0, //extend the shadow
                      offset: Offset(
                        5.0, // Move to right 10  horizontally
                        5.0, // Move to bottom 10 Vertically
                      ),
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Card(
                      elevation: 10.20,
                      child: ListTile(
                        title: OrientationBuilder(
                          builder: (context, orientation) => RichText(
                            text: TextSpan(
                              style: const TextStyle(
                                fontSize: 14.0,
                                color: Colors.black,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Examination Findings :',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold)),
                                TextSpan(
                                    text: patient.examination_remarks ?? "NA"),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
