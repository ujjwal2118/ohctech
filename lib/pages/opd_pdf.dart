import 'dart:typed_data';
import 'package:ohctech/models/patient.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'dart:io';
import 'package:flutter/services.dart' show Color, rootBundle;

Future<Uint8List> makePdf(Patient patient) async {
  final pdf = Document();
  final imageLogo = MemoryImage(
      (await rootBundle.load('assets/images/jsw.png')).buffer.asUint8List());
  pdf.addPage(
    Page(
      build: (context) {
        return Column(
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
                Container(
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: [],
                    // crossAxisAlignment: CrossAxisAlignment.center,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Column(children: [
              SizedBox(
                height: 20,
              ),
              Center(
                  child: Text("PRESCRIPTION",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          decoration: TextDecoration.underline))),
            ]),
            SizedBox(height: 20),
            Column(children: [
              Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  border:
                      Border.all(width: 2, color: PdfColor.fromHex("#0f0d0f")),
                  borderRadius: BorderRadius.all(Radius.circular(0)),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 2.0, 8.0, 2.0),
                      child: Row(
                        children: [
                          Text(patient.ticket_no,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Spacer(
                            flex: 1,
                          ),
                          Text("EMP CODE:" + patient.emp_code,
                              style: TextStyle(fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 2.0, 8.0, 2.0),
                      child: Row(
                        children: [
                          Text("PATIENT NAME:" + patient.patient_name,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Spacer(
                            flex: 1,
                          ),
                          Text("FATHER'S NAME:" + patient.father_name,
                              style: TextStyle(fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 2.0, 8.0, 2.0),
                      child: Row(
                        children: [
                          Text("AGE:",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Spacer(
                            flex: 1,
                          ),
                          Text("GENDER:" + patient.gender,
                              style: TextStyle(fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 2.0, 8.0, 2.0),
                      child: Row(
                        children: [
                          Text("EMPLOYER/CONTRACTOR:",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Spacer(
                            flex: 1,
                          ),
                          Text("DEPARTMENT:",
                              style: TextStyle(fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 2.0, 8.0, 2.0),
                      child: Row(
                        children: [
                          Text("IS EMERGENCY?:",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Spacer(
                            flex: 1,
                          ),
                          Text("OHC REPORTING TIME:" + patient.appointment_date,
                              style: TextStyle(fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ]),
            SizedBox(height: 10),
            Row(
              children: [
                SizedBox(
                    height: 10,
                    width: 50,
                    child: Text("BP: +${patient.bp_sbp}/${patient.bp_dbp}",
                        style: TextStyle(fontWeight: FontWeight.bold))),
                SizedBox(width: 20),
                SizedBox(
                    height: 10,
                    width: 50,
                    child: Text("PULSE:" + patient.pulse,
                        style: TextStyle(fontWeight: FontWeight.bold))),
                SizedBox(width: 20),
                SizedBox(
                    height: 10,
                    width: 50,
                    child: Text("TEMP:" + patient.temperature,
                        style: TextStyle(fontWeight: FontWeight.bold))),
                SizedBox(width: 20),
                SizedBox(
                    height: 10,
                    width: 50,
                    child: Text("SPO2%:" + patient.spo2_percent,
                        style: TextStyle(fontWeight: FontWeight.bold))),
                SizedBox(width: 20),
                SizedBox(
                    height: 10,
                    width: 50,
                    child: Text("RBS:" + patient.blood_sugar_rbs,
                        style: TextStyle(fontWeight: FontWeight.bold))),
                SizedBox(width: 20),
                SizedBox(
                    height: 10,
                    width: 50,
                    child: Text("FBS:" + patient.blood_sugar_fbs,
                        style: TextStyle(fontWeight: FontWeight.bold))),
                SizedBox(width: 20),
                SizedBox(
                    height: 10,
                    width: 50,
                    child: Text("PPBS:" + patient.blood_sugar_ppbs,
                        style: TextStyle(fontWeight: FontWeight.bold))),
                SizedBox(height: 20),
              ],
            ),
            Column(children: [
              Container(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 2.0, 8.0, 2.0),
                      child: Row(
                        children: [
                          Text("Follow-up to OPD",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 2.0, 8.0, 2.0),
                      child: Row(
                        children: [
                          Text("Complaints:" + patient.complaints,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Spacer(
                            flex: 1,
                          ),
                          Text(
                              "Examination Findings:" +
                                  patient.examination_remarks,
                              style: TextStyle(fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 2.0, 8.0, 2.0),
                      child: Row(
                        children: [
                          Text(
                              "Remarks/Follow-up Investigation Details:" +
                                  patient.remarks_rece,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 2.0, 8.0, 2.0),
                      child: Row(
                        children: [
                          Text("Diagnosis:" + patient.ailment_systems_new,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Spacer(
                            flex: 1,
                          ),
                          Text("Ailment System:" + patient.ailment_system,
                              style: TextStyle(fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.fromLTRB(8.0, 2.0, 8.0, 2.0),
                    //   child: Row(
                    //     children: [
                    //       Text("IS EMERGENCY?:",
                    //           style: TextStyle(fontWeight: FontWeight.bold)),
                    //       Spacer(
                    //         flex: 1,
                    //       ),
                    //       Text("OHC REPORTING TIME:" +patient.appointment_date,
                    //           style: TextStyle(fontWeight: FontWeight.bold))
                    //     ],
                    //   ),
                    // ),
                  ],
                ),
              )
            ]),
            Column(children: [
              Container(
                margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Row(
                  children: <Widget>[
                    Table(
                      defaultColumnWidth: FixedColumnWidth(70),
                      border: TableBorder.all(
                          color: PdfColor.fromHex("#0f0d0f"),
                          style: BorderStyle.solid,
                          width: 2),
                      children: [
                        TableRow(children: [
                          Column(children: [
                            Text('Medicine', style: TextStyle(fontSize: 15.0))
                          ]),
                          Column(children: [
                            Text('Dose Qty', style: TextStyle(fontSize: 15.0))
                          ]),
                          Column(children: [
                            Text('Frequency', style: TextStyle(fontSize: 15.0))
                          ]),
                          Column(children: [
                            Text('Timing', style: TextStyle(fontSize: 15.0))
                          ]),
                          Column(children: [
                            Text('Admin. Route',
                                style: TextStyle(fontSize: 15.0))
                          ]),
                          Column(children: [
                            Text('Duration', style: TextStyle(fontSize: 15.0))
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
            ]),
            SizedBox(height: 20),
            Column(children: [
              Container(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 2.0, 8.0, 2.0),
                      child: Row(
                        children: [
                          Text("Additional Treatment Recommendations(if Any)",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 2.0, 8.0, 2.0),
                      child: Row(
                        children: [
                          Text("Follow-up:",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Spacer(
                            flex: 1,
                          ),
                          Text("Referral:",
                              style: TextStyle(fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 2.0, 8.0, 2.0),
                      child: Row(
                        children: [
                          Text("Precautions:",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ]),
            SizedBox(height: 20),
            Row(children: [
              SizedBox(),
              Spacer(flex: 1),
              SizedBox(
                  width: 80,
                  child: Text("REGD. NO:",
                      style: TextStyle(fontWeight: FontWeight.bold)))
            ]),
            SizedBox(height: 20),
            Column(children: [Divider(color: PdfColor.fromHex("#0f0d0f"))]),
            Row(children: [
              SizedBox(
                  width: 500,
                  child: Center(
                      child: Text("PREVENTION IS BETTER THAN CURE",
                          style: TextStyle(fontWeight: FontWeight.bold))))
            ]),
            Row(children: [
              SizedBox(
                  width: 500,
                  child: Center(
                      child: Text("NOTE: NOT FOR USE MEDICO LEGAL PURPOSES",
                          style: TextStyle(fontWeight: FontWeight.bold))))
            ]),
          ],
        );
      },
    ),
  );
  return pdf.save();
}

Widget PaddedText(
  final String text, {
  final TextAlign align = TextAlign.left,
}) =>
    Padding(
      padding: EdgeInsets.all(10),
      child: Text(
        text,
        textAlign: align,
      ),
    );
