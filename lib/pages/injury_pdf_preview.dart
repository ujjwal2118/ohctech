import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ohctech/models/patient.dart';
import 'package:ohctech/pages/injury_pdf.dart';

import 'package:printing/printing.dart';

class InjurypdfPreview extends StatelessWidget {
  final Patient patient;
  const InjurypdfPreview({Key key, @required this.patient}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PDF Preview'),
      ),
      body: PdfPreview(
        build: (context) => makeInjuryPDF(patient),
      ),
    );
  }
}