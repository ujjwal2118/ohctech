import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:ohctech/models/patient.dart';
// import 'package:ohctech/pages/medical_pdf.dart';
// import 'package:ohctech/pages/opd_pdf.dart';
import 'package:ohctech/pages/unfit_certificate.dart';

import 'package:printing/printing.dart';

class SicknessPreviewUnfit extends StatelessWidget {
  final Patient patient;
  const SicknessPreviewUnfit({Key key, @required this.patient})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PDF Preview'),
      ),
      body: PdfPreview(
        build: (context) => Unfitpdf(patient),
      ),
    );
  }
}
