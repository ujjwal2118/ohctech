// ignore_for_file: unnecessary_new, prefer_const_constructors, prefer_interpolation_to_compose_strings

import 'dart:typed_data';
import 'package:ohctech/models/patient.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'package:flutter/services.dart' show Color, rootBundle;

Future<Uint8List> Sickpdf(Patient patient) async {
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
                        child: Text("JSW CEMENT LIMITED Sickness",
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
                  child: Text("FITNESS CERTIFICATE",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          decoration: TextDecoration.underline))),
            ]),
            SizedBox(height: 20),
            Column(children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  child: Text(
                    patient.ticket_no,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SizedBox(height: 30),

              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 12.5,
                    height: 2,
                  ),
                  children: <TextSpan>[
                    new TextSpan(
                      text: 'Certified that Mr/Mrs: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    new TextSpan(
                      text: patient.patient_name + ' ',
                    ),
                    new TextSpan(
                      text: 'P.No: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    new TextSpan(
                      text: patient.emp_code + ' ',
                    ),
                    new TextSpan(
                      text: 'Design: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // new TextSpan(text: patient.designation_name + ' ',),
                    new TextSpan(
                      text: 'Dept: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const TextSpan(
                      text: 'Department ',
                    ),
                    new TextSpan(
                      text: 'was unfit for duty from : ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    new TextSpan(
                      text: patient.date_absent + " To " + patient.date_absent,
                    ),
                    new TextSpan(
                      text:
                          'He/She is now fit to resume his/her normal duties from : ',
                    ),
                    new TextSpan(text: patient.approval_date + " "),
                    new TextSpan(
                      text: 'onwards. \n',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    new TextSpan(
                      text: 'Remark : ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    new TextSpan(text: " remark/here "),
                  ],
                ),
              ),
//             SizedBox(height:2),
// Align(
//    alignment: Alignment.centerLeft,
// child : Container(
// child :Flexible(
//   child: Text('Remark : ',
//   style: TextStyle(
//     fontWeight: FontWeight.bold,
//   ),
//   ),
// ),
// ),
// ),

              SizedBox(height: 60),

              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  child: Text(
                    "Signature of Medical Officer ",
                    textAlign: TextAlign.left,
                  ),
                ),
              ),

              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  child: Text(
                    "Date : " + patient.approval_date,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              // SizedBox(height:6),

              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  child: Text(
                    "Form No. : ",
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SizedBox(height: 6),

              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  child: Text(
                    "Rev. : ",
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
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
