// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;
import 'package:ohctech/models/patient.dart';
import 'package:ohctech/pages/opd_form.dart';
import 'package:ohctech/pages/patient_details_opd.dart';
import 'package:ohctech/widgets/drawer.dart';
import 'package:ohctech/widgets/patient_widget_opd.dart';

import 'package:internet_popup/internet_popup.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:internet_popup/src/custom_dialog.dart';

class OpdPage extends StatefulWidget {
  @override
  _OpdPageState createState() => _OpdPageState();
}

class _OpdPageState extends State<OpdPage> {
  final url = "https://tatametaliks.techsyneric.com/opd_list.php";

  @override
  void initState() {
    bool _isOnline = false;
    bool _isDialogOn = false;
    // TODO: implement initState
    super.initState();
    final Connectivity _connectivity = Connectivity();
    InternetPopup().initialize(context: context);
    final navigator = Navigator.of(context);
    _connectivity.checkConnectivity().then((result) async {
      if (result != ConnectivityResult.none) {
        _isOnline = await InternetConnectionChecker().hasConnection;
        loadData();
      } else {
        _isOnline = false;
      }
    });
  }

  loadData() async {
    try {
      var response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        var patientJson = response.body.toString();

        var decodedData = jsonDecode(patientJson);
        var patientsData = decodedData;
        print(patientsData);
        PatientModel.patients = List.from(patientsData)
            .map<Patient>((patient) => Patient.fromMap(patient))
            .toList();

        if (!mounted) return;
        setState(() {});
      } else {
        throw Exception('Failed to load Data');
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OPD LIST"),
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
                          // onTap: () => Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) =>
                          //             PatientDetailsOpd(patient: patient))),
                          child: PatientWidget(
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
