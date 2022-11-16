// ignore_for_file: use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';
import 'package:ohctech/pages/medical_pdf_preview_page.dart';

import '../models/patient.dart';

void main() {
  // ignore: missing_required_param
  runApp(MedicalExam());
}

class MedicalExam extends StatelessWidget {
  final Patient patient;

  const MedicalExam({Key key, @required this.patient}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     Orientation deviceOrientation = MediaQuery.of(context).orientation;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Medical",
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.lightBlue,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => MedicalPdfPreviewPage(patient: patient),
              ),
            );
          },
          backgroundColor: Colors.green,
          child: const Icon(Icons.picture_as_pdf),
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
          child:  OrientationBuilder(
                builder: (context, orientation) => ListView(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Name : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Container(
                        child: Text(patient.patient_name ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Father’S Name : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Container(
                        child: Text(patient.father_name ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Age : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Container(
                        child: Text("Age"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Sex : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Container(
                        child: Text("Sex"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Blood Group : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Container(
                        child: Text("Blood Group"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Appointed for the Post of : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Container(
                        child: Text(
                          patient.designation_name ?? "NA",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "E-mail ID : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Container(
                        child: Text(patient.email_id ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Mobile No : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Container(
                        child: Text(patient.primary_phone ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Identification Mark. : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Container(
                        child: Text(patient.identi_mark ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Permanent Address : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text("Permanent Address"),
                  ],
                ),
              ),
              Divider(
                color: Colors.black,
                height: 25,
                thickness: 2,
                indent: 5,
                endIndent: 5,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "A) Personal Information : ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.black,
                height: 25,
                thickness: 2,
                indent: 5,
                endIndent: 5,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Marital Status : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Container(
                        child: Text("Marital Status"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "No. Of Children : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(3, 0, 0, 0),
                      child: Container(
                        child: Text("No. Of Children"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Addiction : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Container(
                        child: Text("Addiction"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Habits : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(38, 0, 0, 0),
                      child: Container(
                        child: Text("Habits"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Drug allergy : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                      child: Container(
                        child: Text("Drug allergy"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Take Any Medication : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(3, 0, 0, 0),
                      child: Container(
                        child: Text("Take Any Medication"),
                      ),
                    ),
                  ],
                ),
              ),
              
                
                   
                      OrientationBuilder(
                builder: (context, orientation) => Center(
                   child: Text(
                        "Whether Adopting Any Method of Family Planning :",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                )
                ),
                     
                   OrientationBuilder(
                builder: (context, orientation) => Center(
                   child: Text(
                        "Whether Adopting Any Method of Family Planning :",
                      ),
                )
                ),
                   
 
              Divider(
                color: Colors.black,
                height: 25,
                thickness: 2,
                indent: 5,
                endIndent: 5,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "B) Past and Present Ailment : ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.black,
                height: 25,
                thickness: 2,
                indent: 5,
                endIndent: 5,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Asthma : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(70, 0, 0, 0),
                      child: Container(
                        child: Text("✔"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Container(
                        child: Text(
                          "Diabetes Mellitus",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Container(
                        child: Text("✔"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "TB : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(100, 0, 0, 0),
                      child: Container(
                        child: Text("✔"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(18, 0, 0, 0),
                      child: Container(
                        child: Text(
                          "Hypertension",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(45, 0, 0, 0),
                      child: Container(
                        child: Text("✔"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Jaundice : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(58, 0, 0, 0),
                      child: Container(
                        child: Text("✔"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Container(
                        child: Text(
                          "Epilepsy",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(75, 0, 0, 0),
                      child: Container(
                        child: Text("✔"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Piles/Fistula : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(35, 0, 0, 0),
                      child: Container(
                        child: Text("✔"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Container(
                        child: Text(
                          "sychiatric Illness",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                      child: Container(
                        child: Text("✔"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Hernia/Hydrocele : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      child: Text(
                        "❌",
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Container(
                        child: Text(
                          "Heart Disease",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                      child: Container(
                        child: Text("✔"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Typhoid : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(60, 0, 0, 0),
                      child: Container(
                        child: Text("✔"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(22, 0, 0, 0),
                      child: Container(
                        child: Text(
                          "Night Blindness",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(32, 0, 0, 0),
                      child: Container(
                        child: Text("✔"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Leprosy : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(60, 0, 0, 0),
                      child: Container(
                        child: Text("✔"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Container(
                        child: Text(
                          "Thyroid",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(85, 0, 0, 0),
                      child: Container(
                        child: Text("✔"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "STD : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(83, 0, 0, 0),
                      child: Container(
                        child: Text("✔"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Container(
                        child: Text(
                          "Any other disease",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Container(
                        child: Text("✔"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Major Injury/Fracture/Operation : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Container(
                        child: Text("✔"),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.black,
                height: 25,
                thickness: 2,
                indent: 5,
                endIndent: 5,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "C) Family History : ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.black,
                height: 25,
                thickness: 2,
                indent: 5,
                endIndent: 5,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Asthma : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: Container(
                        child: Text("✔"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: Container(
                        child: Text(
                          "Diabetes Mellitus:",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Container(
                        child: Text("✔"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "TB : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(60, 0, 0, 0),
                      child: Container(
                        child: Text("✔"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: Container(
                        child: Text(
                          "Hypertension:",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                      child: Container(
                        child: Text("✔"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Any Others Diseases : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Container(
                        child: Text("✔"),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.black,
                height: 25,
                thickness: 2,
                indent: 5,
                endIndent: 5,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "D) Past Occupational History : ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.black,
                height: 25,
                thickness: 2,
                indent: 5,
                endIndent: 5,
              ),
              Table(
                defaultColumnWidth: FixedColumnWidth(85),
                border: TableBorder.all(
                    color: Colors.black, style: BorderStyle.solid, width: 2),
                children: [
                  TableRow(children: [
                    Column(children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: 2,
                            bottom: 5,
                            right: 2,
                            top: 5), //apply padding to some sides only
                        child: Text(
                          "Trade during last employment",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ]),
                    Column(children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: 2,
                            bottom: 5,
                            right: 2,
                            top: 5), //apply padding to some sides only
                        child: Text(
                          "Organization",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ]),
                    Column(children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: 2,
                            bottom: 5,
                            right: 2,
                            top: 5), //apply padding to some sides only
                        child: Text(
                          "Period of service",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ]),
                    Column(children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: 2,
                            bottom: 5,
                            right: 2,
                            top: 5), //apply padding to some sides only
                        child: Text(
                          "Past occupational illness if any",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
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
              Text(
                "\nI hereby declared that the particulars given by me in the foregoing are true, complete and correct to the best of my knowledge and belief, and if any of these information are found to be false/ incomplete/ incorrect, the organization is free to take appropriate action",
              ),
              Divider(
                color: Colors.black,
                height: 25,
                thickness: 2,
                indent: 5,
                endIndent: 5,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "E) CLINICAL EXAMINATION : ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.black,
                height: 25,
                thickness: 2,
                indent: 5,
                endIndent: 5,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Height : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Container(
                        child: Text(patient.height.toString() ?? "NA"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                      child: Container(
                        child: Text(
                          "Weight:",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: Container(
                        child: Text(patient.weight.toString() ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "BMI : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                      child: Container(
                        child: Text(patient.bmi.toString() ?? "NA"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                      child: Container(
                        child: Text(
                          "Built & Nutrition:",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Container(
                        child: Text("NaN"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "General Inspection: A : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Container(
                        child: Text("NaN"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                      child: Container(
                        child: Text(
                          "CY:",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Container(
                        child: Text("NaN"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "I : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Container(
                        child: Text("NaN"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(45, 0, 0, 0),
                      child: Container(
                        child: Text(
                          "CI:",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Container(
                        child: Text("NaN"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "E : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Container(
                        child: Text("NaN"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                      child: Container(
                        child: Text(
                          "BP:",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Container(
                        child: Text(patient.bp ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Pulse : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Container(
                        child: Text(patient.pulse.toString() ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Chest Inspiration : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Container(
                        child: Text(patient.chest_in ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Chest Expiration : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Container(
                        child: Text(patient.chest_exp ?? "NA"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                      child: Container(
                        child: Text(
                          "Chest:",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Container(
                        child: Text(patient.chest ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Skin : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Container(
                        child: Text(patient.skin ?? "NA"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                      child: Container(
                        child: Text(
                          "Muscular Skeletal:",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Container(
                        child: Text(patient.musculo_skeletal ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "LI Like Symptoms : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Container(
                        child: Text("NaN"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                      child: Container(
                        child: Text(
                          "Temp:",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                      child: Container(
                        child: Text("NaN"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Spo2 : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Container(
                        child: Text(""),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                      child: Container(
                        child: Text(
                          "Cold & Cough:",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Container(
                        child: Text("NaN"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "General Weakness : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Container(
                        child: Text("NaN"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                      child: Container(
                        child: Text(
                          "Smell:",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Container(
                        child: Text("NaN"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Deformities: congenital/ acquired : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Container(
                        child: Text(patient.deformities),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.black,
                height: 25,
                thickness: 2,
                indent: 5,
                endIndent: 5,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "F) BLOOD ROUTINE EXAMINATION",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.black,
                height: 25,
                thickness: 2,
                indent: 5,
                endIndent: 5,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Hemoglobin : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                      child: Container(
                        child: Text(patient.hb ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Total Leucocyte Count: ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Container(
                        child: Text(patient.tlc ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              // Container(
              //   margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
              //   child: Row(
              //     children: <Widget>[
              //       Container(
              //         child: Text(
              //           "Count : ",
              //           style: TextStyle(fontWeight: FontWeight.bold),
              //         ),
              //       ),
              //       Padding(
              //         padding: EdgeInsets.fromLTRB(63, 0, 0, 0),
              //         child: Container(
              //           child: Text("NaN"),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Differential Leucocyte Count : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    // Padding(
                    //   padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                    //   child: Container(
                    //     child: Text("NaN"),
                    //   ),
                    // ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "FBS : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Container(
                        child: Text(patient.blood_sugar_fbs ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Neutrophils : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Container(
                        child: Text(patient.dlc_n ?? "NA"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: Container(
                        child: Text(
                          "RBS :",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Container(
                        child: Text(patient.blood_sugar_rbs ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Lymphocytes : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                      child: Container(
                        child: Text(patient.dlc_l ?? "NA"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: Container(
                        child: Text(
                          "PPBS :",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(7, 0, 0, 0),
                      child: Container(
                        child: Text(patient.blood_sugar_ppbs ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Monocytes : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Container(
                        child: Text(patient.dlc_m ?? "NA"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(34, 0, 0, 0),
                      child: Container(
                        child: Text(
                          "HIV :",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(18, 0, 0, 0),
                      child: Container(
                        child: Text(patient.hiv ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Eosinophil : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Container(
                        child: Text(patient.dlc_e ?? "NA"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(34, 0, 0, 0),
                      child: Container(
                        child: Text(
                          "HCV :",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Container(
                        child: Text(patient.hcv ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Basophils : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(22, 0, 0, 0),
                      child: Container(
                        child: Text(patient.dlc_b ?? "NA"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(34, 0, 0, 0),
                      child: Container(
                        child: Text(
                          "HbsAg :",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Container(
                        child: Text(patient.hbsag ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "ESR : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(58, 0, 0, 0),
                      child: Container(
                        child: Text(patient.esr ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.black,
                height: 25,
                thickness: 2,
                indent: 5,
                endIndent: 5,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "G) RENAL FUNCTION TEST",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.black,
                height: 25,
                thickness: 2,
                indent: 5,
                endIndent: 5,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Uric Acid",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(58, 0, 0, 0),
                      child: Container(
                        child: Text(patient.uric_acid ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Urea",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(85, 0, 0, 0),
                      child: Container(
                        child: Text(patient.s_urea ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Creatinine",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(52, 0, 0, 0),
                      child: Container(
                        child: Text(patient.s_creatinine ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Sodium (Na+)",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(29, 0, 0, 0),
                      child: Container(
                        child: Text(patient.sodium ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Potassium (K+):",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Container(
                        child: Text(patient.potassium ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Phosphate",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                      child: Container(
                        child: Text(patient.phosphate ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Bi-Carbonate (Hco3)",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Container(
                        child: Text(patient.hco3 ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.black,
                height: 25,
                thickness: 2,
                indent: 5,
                endIndent: 5,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "H) LIVER FUNCTION TEST",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.black,
                height: 25,
                thickness: 2,
                indent: 5,
                endIndent: 5,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Total Bilirubin",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Container(
                        child: Text(patient.total_bilirubin ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Conj",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                      child: Container(
                        child: Text(patient.conj ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Unconj",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Container(
                        child: Text(patient.uniconj ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "SGOT",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Container(
                        child: Text(patient.sgop ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "SGPT",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Container(
                        child: Text(patient.sgpt ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Alkaline Phosphatase",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Container(
                        child: Text(patient.alk_phosphatase ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Total Protein",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Container(
                        child: Text(patient.total_protein ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Albumin",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(43, 0, 0, 0),
                      child: Container(
                        child: Text(patient.albumin ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Globulin",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(42, 0, 0, 0),
                      child: Container(
                        child: Text(patient.globulin ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.black,
                height: 25,
                thickness: 2,
                indent: 5,
                endIndent: 5,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "I) LIPID PROFILE",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.black,
                height: 25,
                thickness: 2,
                indent: 5,
                endIndent: 5,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Total cholesterol",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Container(
                        child: Text(patient.total_cholestrol ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "(LDL) cholesterol",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(13, 0, 0, 0),
                      child: Container(
                        child: Text(patient.ldl ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "(VLDL) cholesterol",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                      child: Container(
                        child: Text(patient.vldl ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "(HDL) cholesterol",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(13, 0, 0, 0),
                      child: Container(
                        child: Text(patient.hdl ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Triglycerides",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(43, 0, 0, 0),
                      child: Container(
                        child: Text(patient.triglycerides ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.black,
                height: 25,
                thickness: 2,
                indent: 5,
                endIndent: 5,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "J) EXAMINATION OF URINE\n ROUTINE ANALYSIS",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.black,
                height: 25,
                thickness: 2,
                indent: 5,
                endIndent: 5,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "(i) PHYSICAL EXAMINATION",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Quantity",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Container(
                        child: Text("NaN"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Colour",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                      child: Container(
                        child: Text("NaN"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Specific Gravity",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Container(
                        child: Text("NaN"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Appearance",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(38, 0, 0, 0),
                      child: Container(
                        child: Text("NaN"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "(ii) CHEMICAL EXAMINATION",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 8, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Ph : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(67, 0, 0, 0),
                      child: Container(
                        child: Text("NaN"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Blood",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(59, 0, 0, 0),
                      child: Container(
                        child: Text("NaN"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Protein : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                      child: Container(
                        child: Text("NaN"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Chyle",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(59, 0, 0, 0),
                      child: Container(
                        child: Text("NaN"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Glucose : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(34, 0, 0, 0),
                      child: Container(
                        child: Text("NaN"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Phosphates :",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(13, 0, 0, 0),
                      child: Container(
                        child: Text("NaN"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Ketone Body  : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(3, 0, 0, 0),
                      child: Container(
                        child: Text("NaN"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Leucocytes :",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(17, 0, 0, 0),
                      child: Container(
                        child: Text("NaN"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Bile Salt  : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(31, 0, 0, 0),
                      child: Container(
                        child: Text("NaN"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Nitrite :",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(52, 0, 0, 0),
                      child: Container(
                        child: Text("NaN"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Bile Pigment  : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                      child: Container(
                        child: Text("NaN"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Urobilinogen :",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(13, 0, 0, 0),
                      child: Container(
                        child: Text("NaN"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "(iii) MICROSCOPICAL EXAMINATION",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "R.B.C. :",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Container(
                        child: Text("NaN"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Pus Corpuscles :",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Container(
                        child: Text("NaN"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Epithelial Cell :",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                      child: Container(
                        child: Text("NaN"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Bacteria :",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Container(
                        child: Text("NaN"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "CASTS",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Cellular :",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Container(
                        child: Text("NaN"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Hyaline :",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Container(
                        child: Text("NaN"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Fatty :",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: Container(
                        child: Text("NaN"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Granular :",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Container(
                        child: Text("NaN"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "CRYSTALS",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Calcium Oxalate :",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Container(
                        child: Text("NaN"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Tripple :",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Container(
                        child: Text("NaN"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Phosphates :",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Container(
                        child: Text("NaN"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Amorphous :",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Container(
                        child: Text("NaN"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Others :",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                      child: Container(
                        child: Text("NaN"),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.black,
                height: 25,
                thickness: 2,
                indent: 5,
                endIndent: 5,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "K) EYE",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.black,
                height: 25,
                thickness: 2,
                indent: 5,
                endIndent: 5,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Visual Acuity :",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Without Glass: R.E: 6/  : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Container(
                        child: Text(patient.dis_without_right_eye ?? "NA"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: Container(
                        child: Text(
                          "L.E: 6/ :",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Container(
                        child: Text(patient.dis_without_left_eye ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "With Glass: R.E: 6/  : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Container(
                        child: Text(patient.near_without_right_eye ?? "NA"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: Container(
                        child: Text(
                          "LE: 6/ :",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Container(
                        child: Text(patient.near_without_left_eye ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Color Vision : ",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
// color:Colors.lightBlue,
                height: 20,
                child: Center(
                  child: Text("Refractive Power"),
                ),
              ),
              Table(
                defaultColumnWidth: FixedColumnWidth(85),
                border: TableBorder.all(
                    color: Colors.black, style: BorderStyle.solid, width: 2),
                children: [
                  TableRow(children: [
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: 2,
                              bottom: 5,
                              right: 2,
                              top: 5), //apply padding to some sides only
                          child: Center(
                            child: Text(
                              "Right eye",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: 2,
                            bottom: 5,
                            right: 2,
                            top: 5), //apply padding to some sides only
                        child: Text(
                          "distance",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ]),
                    Column(children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: 2,
                            bottom: 5,
                            right: 2,
                            top: 5), //apply padding to some sides only
                        child: Text(
                          "Near(reading)",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ]),
                  ]),
                  TableRow(children: [
                    Column(children: [
                      Text('DSPH',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ))
                    ]),
                    Column(children: [
                      Text('NaN',
                          style: TextStyle(
                            fontSize: 15.0,
                          ))
                    ]),
                    Column(children: [
                      Text('NaN', style: TextStyle(fontSize: 15.0))
                    ]),
                  ]),
                  TableRow(children: [
                    Column(children: [
                      Text('DCYL ',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ))
                    ]),
                    Column(children: [
                      Text('NaN', style: TextStyle(fontSize: 15.0))
                    ]),
                    Column(children: [
                      Text('NaN', style: TextStyle(fontSize: 15.0))
                    ]),
                  ]),
                  TableRow(children: [
                    Column(children: [
                      Text('AXIS ',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ))
                    ]),
                    Column(children: [
                      Text('NaN', style: TextStyle(fontSize: 15.0))
                    ]),
                    Column(children: [
                      Text('NaN', style: TextStyle(fontSize: 15.0))
                    ]),
                  ]),
                  TableRow(children: [
                    Column(children: [
                      Text(' V ',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ))
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
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              ),
              Table(
                defaultColumnWidth: FixedColumnWidth(85),
                border: TableBorder.all(
                    color: Colors.black, style: BorderStyle.solid, width: 2),
                children: [
                  TableRow(children: [
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: 2,
                              bottom: 5,
                              right: 2,
                              top: 5), //apply padding to some sides only
                          child: Center(
                            child: Text(
                              "Left eye",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: 2,
                            bottom: 5,
                            right: 2,
                            top: 5), //apply padding to some sides only
                        child: Text(
                          "distance",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ]),
                    Column(children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: 2,
                            bottom: 5,
                            right: 2,
                            top: 5), //apply padding to some sides only
                        child: Text(
                          "Near(reading)",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ]),
                  ]),
                  TableRow(children: [
                    Column(children: [
                      Text('DSPH',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ))
                    ]),
                    Column(children: [
                      Text('NaN',
                          style: TextStyle(
                            fontSize: 15.0,
                          ))
                    ]),
                    Column(children: [
                      Text('NaN', style: TextStyle(fontSize: 15.0))
                    ]),
                  ]),
                  TableRow(children: [
                    Column(children: [
                      Text('DCYL ',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ))
                    ]),
                    Column(children: [
                      Text('NaN', style: TextStyle(fontSize: 15.0))
                    ]),
                    Column(children: [
                      Text('NaN', style: TextStyle(fontSize: 15.0))
                    ]),
                  ]),
                  TableRow(children: [
                    Column(children: [
                      Text('AXIS ',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ))
                    ]),
                    Column(children: [
                      Text('NaN', style: TextStyle(fontSize: 15.0))
                    ]),
                    Column(children: [
                      Text('NaN', style: TextStyle(fontSize: 15.0))
                    ]),
                  ]),
                  TableRow(children: [
                    Column(children: [
                      Text(' V ',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ))
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
              Divider(
                color: Colors.black,
                height: 25,
                thickness: 2,
                indent: 5,
                endIndent: 5,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "L) CNS",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.black,
                height: 25,
                thickness: 2,
                indent: 5,
                endIndent: 5,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Speech : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(53, 0, 0, 0),
                      child: Container(
                        child: Text(patient.speech ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Higher Function :",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                      child: Container(
                        child: Text(patient.higher_function ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Motor Function : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                      child: Container(
                        child: Text(patient.motor_function ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Vertigo :",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(60, 0, 0, 0),
                      child: Container(
                        child: Text(patient.vertigo ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Reflexes (Superficial & Deep) : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(3, 0, 0, 0),
                      child: Container(
                        child: Text(patient.reflexes ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Vibration Syndrome : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(60, 0, 0, 0),
                      child: Container(
                        child: Text(patient.vibration_syndrome ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.black,
                height: 25,
                thickness: 2,
                indent: 5,
                endIndent: 5,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "M) ENT",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.black,
                height: 25,
                thickness: 2,
                indent: 5,
                endIndent: 5,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Conversational Hearing : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                      child: Container(
                        child: Text(patient.conversational_hearing ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Nose : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(23, 0, 0, 0),
                      child: Container(
                        child: Text(patient.nose ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Throat :",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(18, 0, 0, 0),
                      child: Container(
                        child: Text(patient.throat ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Audiometry : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(3, 0, 0, 0),
                      child: Container(
                        child: Text(patient.audio_findings_left ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.black,
                height: 25,
                thickness: 2,
                indent: 5,
                endIndent: 5,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "N) Dental",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.black,
                height: 25,
                thickness: 2,
                indent: 5,
                endIndent: 5,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Teeth & Gum : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Container(
                        child: Text(patient.teeth_n_gum ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.black,
                height: 25,
                thickness: 2,
                indent: 5,
                endIndent: 5,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "O) CVS",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.black,
                height: 25,
                thickness: 2,
                indent: 5,
                endIndent: 5,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "S1 & S2 : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(48, 0, 0, 0),
                      child: Container(
                        child: Text(patient.s1 ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "any other sound :",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Container(
                        child: Text(patient.any_other_sound ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "ECG Finding : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(21, 0, 0, 0),
                      child: Container(
                        child: Text(patient.ecg_findings ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.black,
                height: 25,
                thickness: 2,
                indent: 5,
                endIndent: 5,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "P) Respiratory System",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.black,
                height: 25,
                thickness: 2,
                indent: 5,
                endIndent: 5,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Spirometry Findings : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Container(
                        child: Text(patient.spiro_remarks ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.black,
                height: 25,
                thickness: 2,
                indent: 5,
                endIndent: 5,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Q) ABDOMEN",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.black,
                height: 25,
                thickness: 2,
                indent: 5,
                endIndent: 5,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Liver : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(48, 0, 0, 0),
                      child: Container(
                        child: Text(patient.liver ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Spleen",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(45, 0, 0, 0),
                      child: Container(
                        child: Text(patient.speen ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Tenderness : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                      child: Container(
                        child: Text(patient.tenderness ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Any Other Abnormality : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Container(
                        child: Text(patient.any_other_abnormality ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.black,
                height: 25,
                thickness: 2,
                indent: 5,
                endIndent: 5,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "R) Genito-Urinary System",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.black,
                height: 25,
                thickness: 2,
                indent: 5,
                endIndent: 5,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Hernia : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Container(
                        child: Text(patient.hernia_details ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Hydrocele :",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(3, 0, 0, 0),
                      child: Container(
                        child: Text(patient.hydrocele_details ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Phimosis : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(3, 0, 0, 0),
                      child: Container(
                        child: Text(patient.phimosis ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Piles :",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(33, 0, 0, 0),
                      child: Container(
                        child: Text(patient.piles ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Fistula : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(17, 0, 0, 0),
                      child: Container(
                        child: Text(patient.fistula ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Chest X-Ray (PA view) : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Container(
                        child: Text(patient.xray_findings ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Any Other Findings : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Container(
                        child: Text(patient.other_findings ?? "NA"),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.black,
                height: 25,
                thickness: 2,
                indent: 5,
                endIndent: 5,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Advice and Recommendations",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.black,
                height: 25,
                thickness: 2,
                indent: 5,
                endIndent: 5,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Health advices : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                      child: Container(
                        child: Text("NaN"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Health risks : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Container(
                        child: Text("NaN"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 8, 3, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Remarks : ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(patient.remarks ?? "NA"),
                  ],
                ),
              ),
              // Container(
              //   margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              //   child: Row(
              //     children: <Widget>[
              //       Container(
              //         child: Text(
              //           "Signature : ",
              //           style: TextStyle(
              //             fontSize: 20,
              //             fontWeight: FontWeight.bold,
              //           ),
              //         ),
              //       ),
              //       Padding(
              //         padding: EdgeInsets.fromLTRB(100, 0, 0, 0),
              //         child: Container(
              //           child: Text(
              //             "Date",
              //             style: TextStyle(
              //               fontSize: 15,
              //               fontWeight: FontWeight.bold,
              //             ),
              //           ),
              //         ),
              //       ),
              //       Padding(
              //         padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              //         child: Container(
              //           child: Text(
              //             "date\here",
              //             style: TextStyle(
              //               fontSize: 15,
              //               //  fontWeight: FontWeight.bold,
              //             ),
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // Container(
              //   margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              //   child: Row(
              //     children: <Widget>[
              //       Container(
              //         child: Text(
              //           "Factory Medical Officer : ",
              //           style: TextStyle(
              //             fontSize: 15,
              //             fontWeight: FontWeight.bold,
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // Container(
              //   margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              //   child: Row(
              //     children: <Widget>[
              //       Container(
              //         child: Text(
              //           "Form No : formno/here",
              //           style: TextStyle(
              //             fontSize: 15,
              //             fontWeight: FontWeight.bold,
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // Container(
              //   margin: const EdgeInsets.fromLTRB(0, 8, 0, 20),
              //   child: Row(
              //     children: <Widget>[
              //       Container(
              //         child: Text(
              //           "Rev : rev/here",
              //           style: TextStyle(
              //             fontSize: 15,
              //             fontWeight: FontWeight.bold,
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
          ),
        ),
      ),
    );
  }
}
