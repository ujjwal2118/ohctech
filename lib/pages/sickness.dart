// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;
import 'package:ohctech/models/patient.dart';
import 'package:ohctech/pages/opd_form.dart';
import 'package:ohctech/pages/patient_details_injury.dart';
import 'package:ohctech/pages/patient_details_opd.dart';
import 'package:ohctech/pages/patient_details_sickness.dart';
import 'package:ohctech/widgets/drawer.dart';
import 'package:ohctech/widgets/patient_widget.dart';
import 'package:ohctech/widgets/patient_widget_sickness.dart';

class SicknessPage extends StatefulWidget {
  @override
  _SicknessPageState createState() => _SicknessPageState();
}

class _SicknessPageState extends State<SicknessPage> {
  final url = "https://ohctech.000webhostapp.com/index.php/user/listSickness";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    var response = await http.get(Uri.parse(url));

    var patientJson = response.body;

    var decodedData = jsonDecode(patientJson);
    var patientsData = decodedData;

    print(patientsData);

    PatientModel.patients = List.from(patientsData)
        .map<Patient>((patient) => Patient.fromMap(patient))
        .toList();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SICKNESS LIST"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (PatientModel.patients != null &&
                PatientModel.patients.isNotEmpty)
            ? ListView.builder(
                itemCount: PatientModel.patients.length,
                itemBuilder: (context, index) {
                  final patient = PatientModel.patients[index];
                  return InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  PatientDetailsSickness(patient: patient))),
                      child: PatientWidgetSickness(
                        patient: patient,
                      ));
                },
              )
            // ignore: prefer_const_constructors
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(
        text: '',
      ),
    );
  }
}
