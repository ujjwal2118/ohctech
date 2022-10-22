import 'dart:typed_data';
import 'package:ohctech/models/patient.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'dart:io';
import 'package:flutter/services.dart' show Color, rootBundle;

Future<Uint8List> makePdfMedical(Patient patient) async {
  final pdf = Document();
  final imageLogo = MemoryImage(
      (await rootBundle.load('assets/images/jsw.png')).buffer.asUint8List());
  pdf.addPage(
    MultiPage(
      pageFormat: PdfPageFormat.a4,
      build: (Context context) => <Widget>[
        Column(
          children: [
            Row(
              children: [
                SizedBox(
                  height: 150,
                  width: 100,
                  child: Image(imageLogo),
                ),
                SizedBox(width: 50),
                SizedBox(
                  child: Column(
                    children: [
                      Center(
                        child: Text("JSW CEMENT LIMITED",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: PdfColor.fromHex("#0f0d0f"))),
                      ),
                      Center(
                        child: Text("MEDICAL DEPARTMENT",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: PdfColor.fromHex("#0f0d0f"))),
                      ),
                      Center(
                          child: Text("Vijaynagar Works",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: PdfColor.fromHex("#0f0d0f")))),
                    ],
                    // crossAxisAlignment: CrossAxisAlignment.center,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Column(children: [
              Center(
                  child: Text("PEME CARD",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          decoration: TextDecoration.underline))),

              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Name : ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Container(
                        child: Text("Name",
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
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
                        "Father Name : ",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Container(
                        child: Text("Father Name",  style: TextStyle(
                          fontSize: 17,
                        ),),
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
                        "Age : ",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Container(
                        child: Text("Age",  style: TextStyle(
                          fontSize: 17,
                        ),),
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
                        "Sex : ",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Container(
                        child: Text("Sex",  style: TextStyle(
                          fontSize: 17,
                        ),),
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
                        "Blood Group : ",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Container(
                        child: Text("Blood Group",  style: TextStyle(
                          fontSize: 17,
                        ),),
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
                        "Appointed for the Post of : ",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Container(
                        child: Text(
                          "NaN",
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
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
                        "E-mail ID : ",
                        style: TextStyle(fontWeight: FontWeight.bold ,  fontSize: 17,),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Container(
                        child: Text("E-mail ID",  style: TextStyle(
                          fontSize: 17,
                        ),),
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
                        "Mobile No : ",
                        style: TextStyle(fontWeight: FontWeight.bold ,  fontSize: 17,),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Container(
                        child: Text("Mobile No" ,   style: TextStyle(
                          fontSize: 17,
                        ),),
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
                        "Identification Mark. : ",
                        style: TextStyle(fontWeight: FontWeight.bold ,  fontSize: 17,),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Container(
                        child: Text("Identification Mark." ,  style: TextStyle(
                          fontSize: 17,
                        ),),
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
                        style: TextStyle(fontWeight: FontWeight.bold ,  fontSize: 17,),
                      ),
                    ),
                    Text("Permanent Address",   style: TextStyle(
  fontSize: 17,
  ),),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
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
              SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Marital Status : ",
                        style: TextStyle(fontWeight: FontWeight.bold,  fontSize: 17,),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Container(
                        child: Text("Marital Status",  style: TextStyle(
  fontSize: 17,
  ),),
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
                        "No. Of Children : ",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                      child: Container(
                        child: Text("No. Of Children",  style: TextStyle(
  fontSize: 17,
  ),),
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
                        "Addiction : ",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Container(
                        child: Text("Addiction",  style: TextStyle(
  fontSize: 17,
  ),),
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
                        "Habits : ",
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Container(
                        child: Text("Habits",  style: TextStyle(
  fontSize: 17,
  ),),
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
                        "Drug allergy : ",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Container(
                        child: Text("Drug allergy",  style: TextStyle(
                          fontSize: 17,
                        ),),
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
                        "Take Any Medication : ",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                      child: Container(
                        child: Text("Take Any Medication",  style: TextStyle(
                          fontSize: 17,
                        ),),
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
                        "Whether Adopting Any Method of Family Planning : ",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
                      ),
                    ),

                  ],
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
              //   child: Container(
              //     child: Text("Whether Adopting Any Method of Family Planning",  style: TextStyle(
              //       fontSize: 17,
              //     ),),
              //   ),
              // ),
              SizedBox(
                height: 10,
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
              SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Asthma : ",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(70, 0, 0, 0),
                      child: Container(
                        child: Text("✔"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(45, 0, 0, 0),
                      child: Container(
                        child: Text(
                          "Diabetes Mellitus",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
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
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(110, 0, 0, 0),
                      child: Container(
                        child: Text("✔"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(45, 0, 0, 0),
                      child: Container(
                        child: Text(
                          "Hypertension",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
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
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(38, 0, 0, 0),
                      child: Container(
                        child: Text("✔"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(45, 0, 0, 0),
                      child: Container(
                        child: Text(
                          "Epilepsy",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
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
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Container(
                        child: Text("✔"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(45, 0, 0, 0),
                      child: Container(
                        child: Text(
                          "sychiatric Illness",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
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
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
                      ),
                    ),
                    Container(
                      child: Text(
                        "❌",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                      child: Container(
                        child: Text(
                          "Heart Disease",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                      child: Container(
                        child: Text("✔"),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ],
        ),
      ],
    ),
  );
  pdf.addPage(MultiPage(
    pageFormat: PdfPageFormat.a4,
    build: (Context context) => <Widget>[

      Container(
        margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
        child: Row(
          children: <Widget>[
            Container(
              child: Text(
                "Typhoid : ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
              child: Container(
                child: Text("✔"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
              child: Container(
                child: Text(
                  "Night Blindness",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
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
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
              child: Container(
                child: Text("✔"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
              child: Container(
                child: Text(
                  "Thyroid",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
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
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(80, 0, 0, 0),
              child: Container(
                child: Text("✔"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Container(
                child: Text(
                  "Any other disease",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
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
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("✔"),
              ),
            ),
          ],
        ),
      ),

      SizedBox(
        height: 10,
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
      SizedBox(
        height: 10,
      ),
      Container(
        margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
        child: Row(
          children: <Widget>[
            Container(
              child: Text(
                "Asthma : ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
              child: Container(
                child: Text("✔"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
              child: Container(
                child: Text(
                  "Diabetes Mellitus:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
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
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
              child: Container(
                child: Text("✔"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
              child: Container(
                child: Text(
                  "Hypertension:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
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
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("tick"),
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 15,
      ),
      Table(
        defaultColumnWidth: const FixedColumnWidth(85),
        border: TableBorder.all(style: BorderStyle.solid, width: 2),
        children: [

          TableRow(children: [
            Column(children: [
              Text('Trade during last employment',
                  style: const TextStyle(fontSize: 15.0))
            ]),
            Column(children: [
              Text('Organization', style: const TextStyle(fontSize: 15.0))
            ]),
            Column(children: [
              Text('Period of service', style: const TextStyle(fontSize: 15.0))
            ]),
            Column(children: [
              Text('Past occupational illness if any',
                  style: const TextStyle(fontSize: 15.0))
            ]),
          ]),
          TableRow(children: [
            Column(children: [
              Text('NaN', style: const TextStyle(fontSize: 15.0))
            ]),
            Column(children: [
              Text('NaN', style: const TextStyle(fontSize: 15.0))
            ]),
            Column(children: [
              Text('NaN', style: const TextStyle(fontSize: 15.0))
            ]),
            Column(children: [
              Text('NaN', style: const TextStyle(fontSize: 15.0))
            ]),
          ]),
        ],
      ),
      Text(
        "\nI hereby declared that the particulars given by me in the foregoing are true, complete and correct to the best of my knowledge and belief, and if any of these information are found to be false/ incomplete/ incorrect, the organization is free to take appropriate action",
      ),
      SizedBox(
        height: 10,
      ),
      Container(
        margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: Row(
          children: <Widget>[
            Container(
              child: Text(
                "E) CLINICAL EXAMINATION : ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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
                "Height : ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Container(
                child: Text("NaN",  style: TextStyle(
                  fontSize: 17,
                ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
              child: Container(
                child: Text(
                  "Weight:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",  style: TextStyle(
                  fontSize: 17,
                ),),
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
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",  style: TextStyle(
                  fontSize: 17,
                ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
              child: Container(
                child: Text(
                  "Built & Nutrition:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",  style: TextStyle(
                  fontSize: 17,
                ),),
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
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",  style: TextStyle(
                  fontSize: 17,
                ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
              child: Container(
                child: Text(
                  "CY:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",  style: TextStyle(
                  fontSize: 17,
                ),),
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
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",  style: TextStyle(
                  fontSize: 17,
                ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(45, 0, 0, 0),
              child: Container(
                child: Text(
                  "CI:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",  style: TextStyle(
                  fontSize: 17,
                ),),
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
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",  style: TextStyle(
                  fontSize: 17,
                ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
              child: Container(
                child: Text(
                  "BP:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",  style: TextStyle(
                  fontSize: 17,
                ),),
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
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",  style: TextStyle(
                  fontSize: 17,
                ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
              child: Container(
                child: Text(
                  "Chest:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",  style: TextStyle(
                  fontSize: 17,
                ),),
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
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",  style: TextStyle(
                  fontSize: 17,
                ),),
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
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",  style: TextStyle(
                  fontSize: 17,
                ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
              child: Container(
                child: Text(
                  "Weight:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",  style: TextStyle(
                  fontSize: 17,
                ),),
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
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",  style: TextStyle(
                  fontSize: 17,
                ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
              child: Container(
                child: Text(
                  "Muscular Skeletal:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",  style: TextStyle(
                  fontSize: 17,
                ),),
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
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",  style: TextStyle(
                  fontSize: 17,
                ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
              child: Container(
                child: Text(
                  "Temp:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",  style: TextStyle(
                  fontSize: 17,
                ),),
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
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",  style: TextStyle(
                  fontSize: 17,
                ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
              child: Container(
                child: Text(
                  "Cold & Cough:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",  style: TextStyle(
                  fontSize: 17,
                ),),
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
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",  style: TextStyle(
                  fontSize: 17,
                ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
              child: Container(
                child: Text(
                  "Smell:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",  style: TextStyle(
                  fontSize: 17,
                ),),
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
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",  style: TextStyle(
                  fontSize: 17,
                ),),
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 10,
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
      SizedBox(
        height: 10,
      ),
      Container(
        margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
        child: Row(
          children: <Widget>[
            Container(
              child: Text(
                "Hemoglobin : ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
              child: Container(
                child: Text("NaN",  style: TextStyle(
                  fontSize: 17,
                ),),
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
                "Total Leucocyte : ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
              child: Container(
                child: Text("NaN",  style: TextStyle(
                  fontSize: 17,
                ),),
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
                "Count : ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",  style: TextStyle(
                  fontSize: 17,
                ),),
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
                "Differential Leucocyte Count : ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",  style: TextStyle(
                  fontSize: 17,
                ),),
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
                "FBS : ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",  style: TextStyle(
                  fontSize: 17,
                ),),
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
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",  style: TextStyle(
                  fontSize: 17,
                ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
              child: Container(
                child: Text(
                  "RBS :",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",  style: TextStyle(
                  fontSize: 17,
                ),),
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
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
              child: Container(
                child: Text("NaN",  style: TextStyle(
                  fontSize: 17,
                ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
              child: Container(
                child: Text(
                  "PPBS :",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",  style: TextStyle(
                  fontSize: 17,
                ),),
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
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",  style: TextStyle(
                  fontSize: 17,
                ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
              child: Container(
                child: Text(
                  "HIV :",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",  style: TextStyle(
                  fontSize: 17,
                ),),
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
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",  style: TextStyle(
                  fontSize: 17,
                ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
              child: Container(
                child: Text(
                  "HCV :",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",  style: TextStyle(
                  fontSize: 17,
                ),),
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
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",  style: TextStyle(
                  fontSize: 17,
                ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
              child: Container(
                child: Text(
                  "HbsAg :",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",  style: TextStyle(
                  fontSize: 17,
                ),),
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
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",  style: TextStyle(
                  fontSize: 17,
                ),),
              ),
            ),
          ],
        ),
      ),   SizedBox(
        height: 10,
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
      ),   SizedBox(
        height: 10,
      ),
      Container(
        margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: Row(
          children: <Widget>[
            Container(
              child: Text(
                "Uric Acid",
                style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 17,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
              child: Container(
                child: Text("NaN",  style: TextStyle(
                  fontSize: 17,
                ),),
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
                "Urea",
                style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 17,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(75, 0, 0, 0),
              child: Container(
                child: Text("NaN",  style: TextStyle(
                  fontSize: 17,
                ),),
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
                "Creatinine",
                style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 17,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
              child: Container(
                child: Text("NaN",  style: TextStyle(
                  fontSize: 17,
                ),),
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
                "Sodium (Na+)",
                style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 17,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",  style: TextStyle(
                  fontSize: 17,
                ),),
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
                "Potassium (K+):",
                style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 17,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",  style: TextStyle(
                  fontSize: 17,
                ),),
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
                "Phosphate",
                style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 17,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
              child: Container(
                child: Text("NaN",  style: TextStyle(
                  fontSize: 17,
                ),),
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
                "Bi-Carbonate (Hco3)",
                style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 17,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",  style: TextStyle(
                  fontSize: 17,
                ),),
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 10,
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
      SizedBox(
        height: 10,
      ),
      Container(
        margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: Row(
          children: <Widget>[
            Container(
              child: Text(
                "Total Bilirubin",
                style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 17,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",  style: TextStyle(
                  fontSize: 17,
                ),),
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
                "Conj",
                style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 17,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),),
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
                "Unconj",
                style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 17,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),),
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
                "SGOT",
                style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 17,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),
                ),
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
                "SGPT",
                style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 17,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),
                ),
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
                "Alkaline Phosphatase",
                style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 17,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),),
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
                "Total Protein",
                style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 17,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),
                ),
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
                "Albumin",
                style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 17,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),),
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
                "Globulin",
                style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 17,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),),
              ),
            ),
          ],
        ),
      ),SizedBox(height: 10,),
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
      ),SizedBox(height: 10,),
      Container(
        margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: Row(
          children: <Widget>[
            Container(
              child: Text(
                "Total cholesterol",
                style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 17,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),),
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
                "(LDL) cholesterol",
                style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 17,

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),
                ),
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
                "(VLDL) cholesterol",
                style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 17,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),),
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
                "(HDL) cholesterol",
                style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 17,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),),
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
                "Triglycerides",
                style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 17,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),),
              ),
            ),
          ],
        ),
      ),SizedBox(height: 10,),
      Container(
        margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: Row(
          children: <Widget>[
            Container(
              child: Text(
                "J) EXAMINATION OF URINE ROUTINE ANALYSIS",
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
          ],
        ),
      ),SizedBox(height: 10,),
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
                "Quantity",
                style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 17,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),),
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
                "Colour",
                style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 17,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),),
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
                "Specific Gravity",
                style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 17,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),),
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
                "Appearance",
                style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 17,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),),
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
        margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
        child: Row(
          children: <Widget>[
            Container(
              child: Text(
                "Ph : ",
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
              child: Container(
                child: Text(
                  "Blood :",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),),
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
                "Protein : ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
              child: Container(
                child: Text(
                  "Chyle :",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),),
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
                "Glucose : ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
              child: Container(
                child: Text(
                  "Phosphates :",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),),
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
                "Ketone Body  : ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
              child: Container(
                child: Text(
                  "Leucocytes :",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),),
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
                "Bile Salt  : ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
              child: Container(
                child: Text(
                  "Nitrite :",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),),
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
                "Bile Pigment  : ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
              child: Container(
                child: Text(
                  "Urobilinogen :",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),),
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
                  fontWeight: FontWeight.bold,fontSize: 17,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),),
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
                  fontWeight: FontWeight.bold,fontSize: 17,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),),
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
                  fontWeight: FontWeight.bold,fontSize: 17,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),),
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
                  fontWeight: FontWeight.bold,fontSize: 17,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),),
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
                  fontWeight: FontWeight.bold,fontSize: 17,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),),
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
                  fontWeight: FontWeight.bold,fontSize: 17,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),
                ),
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
                  fontWeight: FontWeight.bold,fontSize: 17,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),),
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
                  fontWeight: FontWeight.bold,fontSize: 17,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),),
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
                  fontWeight: FontWeight.bold,fontSize: 17,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),),
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
                  fontWeight: FontWeight.bold,fontSize: 17,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),),
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
                  fontWeight: FontWeight.bold,fontSize: 17,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),),
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
                  fontWeight: FontWeight.bold,fontSize: 17,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),),
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
                  fontWeight: FontWeight.bold,fontSize: 17,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),),
              ),
            ),
          ],
        ),
      ),SizedBox(height: 10,),
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
      ),SizedBox(height: 10,),
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
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
              child: Container(
                child: Text(
                  "L.E: 6/ :",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),),
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
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
              child: Container(
                child: Text(
                  "LE: 6/ :",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),
                ),
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
        defaultColumnWidth: const FixedColumnWidth(85),
        border: TableBorder.all(style: BorderStyle.solid, width: 2),
        children: [
          TableRow(children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 2,
                      bottom: 5,
                      right: 2,
                      top: 5), //apply padding to some sides only
                  child: Center(
                    child: Text(
                      "Right eye",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 17,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 2,
                    bottom: 5,
                    right: 2,
                    top: 5), //apply padding to some sides only
                child: Text(
                  "Distance",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,fontSize: 17,
                  ),
                ),
              ),
            ]),
            Column(children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 2,
                    bottom: 5,
                    right: 2,
                    top: 5), //apply padding to some sides only
                child: Text(
                  "Near(reading)",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,fontSize: 17,
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
                  style: const TextStyle(
                    fontSize: 15.0,
                  ))
            ]),
            Column(children: [
              Text('NaN', style: const TextStyle(fontSize: 15.0))
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
              Text('NaN', style: const TextStyle(fontSize: 15.0))
            ]),
            Column(children: [
              Text('NaN', style: const TextStyle(fontSize: 15.0))
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
              Text('NaN', style: const TextStyle(fontSize: 15.0))
            ]),
            Column(children: [
              Text('NaN', style: const TextStyle(fontSize: 15.0))
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
              Text('NaN', style: const TextStyle(fontSize: 15.0))
            ]),
            Column(children: [
              Text('NaN', style: const TextStyle(fontSize: 15.0))
            ]),
          ]),
        ],
      ),
      Container(
        margin: const EdgeInsets.fromLTRB(0, 70, 0, 0),
      ),
      Table(
        defaultColumnWidth: const FixedColumnWidth(85),
        border: TableBorder.all(style: BorderStyle.solid, width: 2),
        children: [
          TableRow(children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 2,
                      bottom: 5,
                      right: 2,
                      top: 5), //apply padding to some sides only
                  child: Center(
                    child: Text(
                      "Left eye",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 17,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 2,
                    bottom: 5,
                    right: 2,
                    top: 5), //apply padding to some sides only
                child: Text(
                  "Distance",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,fontSize: 17,
                  ),
                ),
              ),
            ]),
            Column(children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 2,
                    bottom: 5,
                    right: 2,
                    top: 5), //apply padding to some sides only
                child: Text(
                  "Near(reading)",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,fontSize: 17,
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
                  style: const TextStyle(
                    fontSize: 15.0,
                  ))
            ]),
            Column(children: [
              Text('NaN', style: const TextStyle(fontSize: 15.0))
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
              Text('NaN', style: const TextStyle(fontSize: 15.0))
            ]),
            Column(children: [
              Text('NaN', style: const TextStyle(fontSize: 15.0))
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
              Text('NaN', style: const TextStyle(fontSize: 15.0))
            ]),
            Column(children: [
              Text('NaN', style: const TextStyle(fontSize: 15.0))
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
              Text('NaN', style: const TextStyle(fontSize: 15.0))
            ]),
            Column(children: [
              Text('NaN', style: const TextStyle(fontSize: 15.0))
            ]),
          ]),
        ],
      ),SizedBox(height: 10,),
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
      Container(
        margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
        child: Row(
          children: <Widget>[
            Container(
              child: Text(
                "Speech : ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
              child: Container(
                child: Text(
                  "Higher Function :",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),),
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
                "Motor Function : ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
              child: Container(
                child: Text(
                  "Vertigo :",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),),
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
                "Reflexes (Superficial & Deep) : ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),),
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
                "Vibration Syndrome : ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),),
              ),
            ),
          ],
        ),
      ),SizedBox(height: 10,),
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
      ),SizedBox(height: 10,),
      Container(
        margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
        child: Row(
          children: <Widget>[
            Container(
              child: Text(
                "Conversational Hearing : ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),),
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
                "Nose : ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
              child: Container(
                child: Text(
                  "Throat :",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),),
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
                "Audiometry : ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),
                ),
              ),
            ),
          ],
        ),
      ),SizedBox(height: 10,),
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
      ),SizedBox(height: 10,),
      Container(
        margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
        child: Row(
          children: <Widget>[
            Container(
              child: Text(
                "Teeth & Gum : ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),),
              ),
            ),
          ],
        ),
      ),SizedBox(height: 10,),
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
      ),SizedBox(height: 10,),
      Container(
        margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
        child: Row(
          children: <Widget>[
            Container(
              child: Text(
                "S1 & S2 : ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
              child: Container(
                child: Text(
                  "any other sound :",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),),
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
                "ECG Finding : ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),),
              ),
            ),
          ],
        ),
      ),SizedBox(height: 10,),
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
      ),SizedBox(height: 10,),
      Container(
        margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
        child: Row(
          children: <Widget>[
            Container(
              child: Text(
                "Spirometry Findings : ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),),
              ),
            ),
          ],
        ),
      ),SizedBox(height: 10,),
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
      ),SizedBox(height: 10,),
      Container(
        margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
        child: Row(
          children: <Widget>[
            Container(
              child: Text(
                "Liver : ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
              child: Container(
                child: Text(
                  "Spleen :",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),),
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
                "Tenderness : ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),),
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
                "Any Other Abnormality : ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),),
              ),
            ),
          ],
        ),
      ),
      SizedBox(height: 10,),
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
      SizedBox(height: 10,),
      Container(
        margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
        child: Row(
          children: <Widget>[
            Container(
              child: Text(
                "Hernia : ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
              child: Container(
                child: Text(
                  "Hydrocele :",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),
                ),
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
                "Phimosis : ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
              child: Container(
                child: Text(
                  "Piles :",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),),
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
                "Fistula : ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),),
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
                "Chest X-Ray (PA view) : ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),),
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
                "Any Other Findings : ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),),
              ),
            ),
          ],
        ),
      ),SizedBox(height: 10,),
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
      ),SizedBox(height: 10,),
      Container(
        margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
        child: Row(
          children: <Widget>[
            Container(
              child: Text(
                "Health advices : ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),),
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
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Container(
                child: Text("NaN",style: TextStyle(fontSize: 17,),),
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
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
              ),
            ),
            Text("NaN",style: TextStyle(fontSize: 17,),),
          ],
        ),
      ),
      Container(
        margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
        child: Row(
          children: <Widget>[
            Container(
              child: Text(
                "Signature : ",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(270, 0, 0, 0),
              child: Container(
                child: Text(
                  "Date",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Container(
                child: Text(
                  "date here",
                  style: const TextStyle(
                    fontSize: 15,
                    //  fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
        child: Row(
          children: <Widget>[
            Container(
              child: Text(
                "Factory Medical Officer : ",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        margin: const EdgeInsets.fromLTRB(0, 70, 0, 0),
        child: Row(
          children: <Widget>[
            Container(
              child: Text(
                "Form No : formno/here",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        margin: const EdgeInsets.fromLTRB(0, 8, 0, 20),
        child: Row(children: <Widget>[
          Container(
            child: Text(
              "Rev : rev/here",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ]),
      ),
    ],
  ));
  return pdf.save();
}

Widget PaddedText(
  final String text, {
  final TextAlign align = TextAlign.left,
}) =>
    Padding(
      padding: const EdgeInsets.all(10),
      child: Text(
        text,
        textAlign: align,
      ),
    );
