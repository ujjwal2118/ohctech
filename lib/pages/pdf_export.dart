import 'dart:typed_data';

import 'package:ohctech/models/patient.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'dart:io';
import 'package:flutter/services.dart' show rootBundle;

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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 150,
                  width: 100,
                  child: Image(imageLogo),
                ),
                SizedBox(
                  child: Column(
                    children: [
                      Text("JSW CEMENT LIMITED",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: PdfColor.fromHex("#0f0d0f"))),
                      Text("MEDICAL DEPARTMENT",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: PdfColor.fromHex("#0f0d0f"))),
                      Text("Vijaynagar Works",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: PdfColor.fromHex("#0f0d0f")))
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
