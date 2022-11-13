// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;
import 'package:ohctech/models/patient.dart';
import 'package:ohctech/pages/medical_details.dart';
import 'package:ohctech/pages/opd_form.dart';
import 'package:ohctech/pages/patient_details_opd.dart';
import 'package:ohctech/widgets/drawer.dart';
import 'package:ohctech/widgets/patient_widget_opd.dart';
import 'package:ohctech/widgets/patient_widget_medical.dart';

class MedicalPage extends StatefulWidget {
  @override
  _MedicalPageState createState() => _MedicalPageState();
}

class _MedicalPageState extends State<MedicalPage> {
  final url = "https://ohctech.000webhostapp.com/index.php/user/listMedical/10";

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
        title: Text("MEDICAL EXAMINATION LIST"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child:
            (PatientModel.patients != null && PatientModel.patients.isNotEmpty)
                ? ListView.builder(
                    itemCount: PatientModel.patients.length,
                    itemBuilder: (context, index) {
                      final patient = PatientModel.patients[index];
                      return InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      MedicalExam(patient: patient))),
                          child: PatientWidgetMedical(
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
