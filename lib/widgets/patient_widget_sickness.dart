// ignore_for_file: prefer_const_constructors, sort_child_properties_last, use_build_context_synchronously, unused_import, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:ohctech/models/patient.dart';
import 'package:ohctech/pages/opd_form.dart';
import 'package:ohctech/utils/routes.dart';
import 'package:day_night_time_picker/lib/constants.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:convert';
import 'package:mysql1/mysql1.dart';
import 'package:tap_debouncer/tap_debouncer.dart';
import 'package:flutter_offline/flutter_offline.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:show_up_animation/show_up_animation.dart';
import 'dart:async';
import 'dart:io';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:direct_select/direct_select.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:calendar_appbar/calendar_appbar.dart';
import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:day_night_time_picker/day_night_time_picker.dart';

class PatientWidget extends StatelessWidget {
  final Patient patient;

  // moveToOpdForm(BuildContext context) async {
  //   await Future.delayed(Duration(seconds: 1));
  //   print("Patient Name::" + patient.patient_name);
  //   await Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //       builder: (context) => OpdForm(patientName: patient.patient_name),
  //     ),
  //   );
  // }

  const PatientWidget({Key key, @required this.patient})
      // ignore: unnecessary_null_comparison
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        // onTap: () => moveToOpdForm(context),
        leading: Image.asset("assets/images/user.png"),
        title: Text(
          patient.patient_name ?? "NA",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
          textAlign: TextAlign.justify,
        ),
        subtitle: Text("Sickness Date:${patient.sickness_date}",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
        trailing: Text(
          patient.emp_code ?? "NA",
          textScaleFactor: 1,
          style: TextStyle(
            color: Color.fromARGB(255, 19, 18, 20),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      color: Color.fromARGB(255, 148, 204, 242),
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}

// class MyWidget extends StatelessWidget {
//   final String patientName;
//   const MyWidget({Key key, @required this.patientName}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(dsxgf
//       child: Text(patientName),
//     );
//   }
// }

