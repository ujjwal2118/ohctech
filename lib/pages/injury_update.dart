// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:ohctech/models/patient.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:day_night_time_picker/day_night_time_picker.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:convert';
import 'package:awesome_dialog/awesome_dialog.dart';

// import 'package:intl/intl.dart';

void main() {
  runApp(injuryForm(
    patient: null,
  ));
}

class injuryForm extends StatefulWidget {
  final Patient patient;

  const injuryForm({Key key, @required this.patient})
      : assert(patient != null),
        super(key: key);

  @override
  State<injuryForm> createState() => _injuryFormState();
}

class injury_type {
  final int id;
  final String name;

  injury_type({
    this.id,
    this.name,
  });
}

class injury_part {
  final int id;
  final String name;

  injury_part({
    this.id,
    this.name,
  });
}

class injury_class {
  final int id;
  final String name;

  injury_class({
    this.id,
    this.name,
  });
}

class _injuryFormState extends State<injuryForm> {
  TextEditingController patientName = TextEditingController();
  TextEditingController ticket_no = TextEditingController();
  TextEditingController complaints = TextEditingController();
  TextEditingController ailments_new = TextEditingController();
  TextEditingController examination_remarks = TextEditingController();
  TextEditingController remarks_rece = TextEditingController();
  TextEditingController appointment_date = TextEditingController();
  TextEditingController injury_time = TextEditingController();
  TextEditingController incident_location = TextEditingController();
  TextEditingController injury_cause = TextEditingController();
  TextEditingController injury_procedure = TextEditingController();
  TextEditingController branch_area = TextEditingController();
  // TextEditingController dept = TextEditingController();

  @override
  void initState() {
    super.initState();
    Patient dm;
    dm = widget.patient;
    var visitDate;
    var injuryTime;
    ticket_no.text = dm.ticket_no;
    patientName.text = dm.patient_name;
    complaints.text = dm.complaints;
    ailments_new.text = dm.ailments_new;
    examination_remarks.text = dm.examination_remarks;
    remarks_rece.text = dm.remarks_rece;
    visitDate = dm.appointment_date;
    appointment_date.text = visitDate;
    injuryTime = dm.injury_time;
    injury_time.text = injuryTime;
    incident_location.text = dm.incident_location;
    injury_cause.text = dm.injury_cause;
    injury_procedure.text = dm.injury_procedure;
    branch_area.text = dm.branch_area;
  }

  static final List<injury_type> _injury_type = [
    injury_type(id: 1, name: "Blunt"),
    injury_type(id: 2, name: "Cut"),
    injury_type(id: 3, name: "Sprain"),
    injury_type(id: 4, name: "Fracture"),
    injury_type(id: 5, name: "Abrasion"),
    injury_type(id: 6, name: "Burn"),
    injury_type(id: 7, name: "Electric burn"),
    injury_type(id: 8, name: "Crush"),
    injury_type(id: 9, name: "Bite"),
    injury_type(id: 10, name: "Incision"),
    injury_type(id: 11, name: "Contusion"),
    injury_type(id: 12, name: "Puncture"),
    injury_type(id: 13, name: "Amputation"),
    injury_type(id: 14, name: "Avulsion"),
    injury_type(id: 15, name: "Foreign body"),
    injury_type(id: 16, name: "Polytrauma"),
    injury_type(id: 17, name: "Chemical contact"),
    injury_type(id: 18, name: "Laceration"),
    injury_type(id: 19, name: "Gas inhalation"),
    injury_type(id: 20, name: "Hypoxia"),
  ];
  final _items_injury_type = _injury_type
      .map((type) => MultiSelectItem<injury_type>(type, type.name))
      .toList();
  //List<Animal> _selectedAnimals = [];
  List<injury_type> _selectedinjury_type2 = [];
  List<injury_type> _selectedinjury_type3 = [];
  //List<Animal> _selectedAnimals4 = [];
  List<injury_type> _selectedinjury_type5 = [];

  static final List<injury_part> _injury_part = [
    injury_part(id: 1, name: "Head"),
    injury_part(id: 2, name: "Face"),
    injury_part(id: 3, name: "Ear"),
    injury_part(id: 4, name: "Neck"),
    injury_part(id: 5, name: "Shoulder"),
    injury_part(id: 6, name: "Arm"),
    injury_part(id: 7, name: "Forearm"),
    injury_part(id: 8, name: "Hand"),
    injury_part(id: 9, name: "Chest"),
    injury_part(id: 10, name: "Abdomen"),
    injury_part(id: 11, name: "Finger"),
    injury_part(id: 12, name: "Back"),
    injury_part(id: 13, name: "Thigh"),
    injury_part(id: 14, name: "Neck"),
    injury_part(id: 15, name: "Hand"),
    injury_part(id: 16, name: "nose"),
    injury_part(id: 17, name: "general"),
    injury_part(id: 18, name: "tooth"),
    injury_part(id: 19, name: "left ear"),
    injury_part(id: 20, name: "left eye"),
    injury_part(id: 21, name: "left ankle"),
    injury_part(id: 22, name: "left hand"),
    injury_part(id: 23, name: "LEFT INDEX FINGER"),
    injury_part(id: 24, name: "STOMACH"),
    injury_part(id: 25, name: "rt elbow"),
    injury_part(id: 26, name: "ankle"),
    injury_part(id: 27, name: "left knee"),
    injury_part(id: 28, name: "LEFT SHOULDER"),
    injury_part(id: 29, name: "PALM"),
    injury_part(id: 30, name: "RT HAND"),
    injury_part(id: 31, name: "LEFT LITTLE FINGER"),
    injury_part(id: 32, name: "GSD"),
    injury_part(id: 33, name: "SHOULDER"),
    injury_part(id: 34, name: "FINGER"),
    injury_part(id: 35, name: "TOE"),
  ];
  final _items_injury_part = _injury_part
      .map((part) => MultiSelectItem<injury_part>(part, part.name))
      .toList();
  List<injury_part> _selectedinjury_part2 = [];
  List<injury_part> _selectedinjury_part3 = [];
  List<injury_part> _selectedinjury_part5 = [];

  static final List<injury_class> _injury_class = [
    injury_class(id: 1, name: "MTC"),
    injury_class(id: 2, name: "RWC"),
    injury_class(id: 3, name: "FIRST AID"),
    injury_class(id: 4, name: "LTI"),
    injury_class(id: 5, name: "MINOR"),
  ];
  final _items_injury_class = _injury_class
      .map((inj_class) =>
          MultiSelectItem<injury_class>(inj_class, inj_class.name))
      .toList();
  //List<Animal> _selectedAnimals = [];
  List<injury_class> _selectedinjury_class2 = [];
  List<injury_class> _selectedinjury_class3 = [];
  //List<Animal> _selectedAnimals4 = [];
  List<injury_class> _selectedinjury_class5 = [];

  final _multiSelectKey = GlobalKey<FormFieldState>();

  Future<dynamic> updateInjury(BuildContext context) async {
    var url = 'https://ohctech.000webhostapp.com/injury_update.php';
    http.Response response = await http.post(Uri.parse(url), body: {
      "ticket_no": ticket_no.text,
      "complaints": complaints.text,
      "ailments_new": ailments_new.text,
      "examination_remarks": examination_remarks.text,
      "remarks_rece": remarks_rece.text,
      "appointment_date": appointment_date.text,
      "injury_time": injury_time.text,
      "injury_cause": injury_cause.text,
      "branch_area": branch_area.text
    });
    var map;
    try {
      map = json.decode(response.body);
    } catch (e) {
      print(e);
    }
    if (map == 0) {
      print(map);
      AwesomeDialog(
        context: context,
        dialogType: DialogType.success,
        animType: AnimType.rightSlide,
        title: 'Updated Successfully',
        btnOkOnPress: () {},
      ).show();
    } else {
      AwesomeDialog(
        context: context,
        dialogType: DialogType.error,
        animType: AnimType.rightSlide,
        title: 'Something Went Wrong',
        btnCancelOnPress: () {},
      ).show();
    }
  }

  Widget build(BuildContext context) {
    var vdate;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Update Injury Details",
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.lightBlue,
        ),
        body: Padding(
            padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
            child: ListView(children: <Widget>[
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  controller: ticket_no,
                  decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 3,
                        color: Colors.blue,
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 3, color: Color.fromARGB(255, 66, 125, 145)),
                    ),
                    icon: Icon(Icons.airplane_ticket_rounded),
                    labelText: "INJURY REGD NO.",
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  controller: patientName,
                  decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 3,
                        color: Colors.blue,
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 3, color: Color.fromARGB(255, 66, 125, 145)),
                    ),
                    icon: Icon(Icons.man),
                    labelText: "PATIENT",
                  ),
                ),
              ),
              Text(
                "\nAppointment Date\n",
                style: Theme.of(context).textTheme.headline6,
              ),
              DateTimePicker(
                enableSuggestions: true, cursorColor: Colors.redAccent,
                controller: appointment_date,
                type: DateTimePickerType.dateTimeSeparate,
                dateMask: 'd MMM, yyyy',
                firstDate: DateTime(2000),
                lastDate: DateTime(2500),
                // use24HourFormat: false,
                icon: Icon(Icons.event),
                dateLabelText: 'Date',
                timeLabelText: "Time",
                selectableDayPredicate: (date) {
                  // Disable weekend days to select from the calendar
                  if (date.weekday == 6 || date.weekday == 7) {
                    return false;
                  }

                  return true;
                },

                validator: (val) {
                  return null;
                },
              ),
              Text(
                "\nInjury Time\n",
                style: Theme.of(context).textTheme.headline6,
              ),
              DateTimePicker(
                enableSuggestions: true, cursorColor: Colors.redAccent,
                controller: injury_time,
                type: DateTimePickerType.dateTimeSeparate,
                dateMask: 'd MMM, yyyy',
                firstDate: DateTime(2000),
                lastDate: DateTime(2500),
                // use24HourFormat: false,
                icon: Icon(Icons.event),
                dateLabelText: 'Date',
                timeLabelText: "Time",
                selectableDayPredicate: (date) {
                  // Disable weekend days to select from the calendar
                  if (date.weekday == 6 || date.weekday == 7) {
                    return false;
                  }

                  return true;
                },

                validator: (val) {
                  return null;
                },
              ),
              const SizedBox(height: 10),
              const Divider(),
              const SizedBox(height: 10),
              MultiSelectBottomSheetField(
                items: _items_injury_type,
                searchable: true,
                title: Text("Select Injury Type"),
                selectedColor: Color.fromARGB(255, 42, 139, 218),
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.1),
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  border: Border.all(
                    color: Colors.blue,
                    width: 2,
                  ),
                ),
                buttonIcon: Icon(
                  Icons.dangerous_sharp,
                  color: Colors.blue,
                ),
                buttonText: Text(
                  "Injury Type",
                  style: TextStyle(
                    color: Colors.blue[800],
                    fontSize: 16,
                  ),
                ),
                onConfirm: (results) {
                  //_selectedAnimals = results;
                },
              ),
              SizedBox(height: 30),
              MultiSelectBottomSheetField(
                items: _items_injury_part,
                searchable: true,
                title: Text("Select Injury Part"),
                selectedColor: Color.fromARGB(255, 42, 139, 218),
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.1),
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  border: Border.all(
                    color: Colors.blue,
                    width: 2,
                  ),
                ),
                buttonIcon: Icon(
                  Icons.dangerous_sharp,
                  color: Colors.blue,
                ),
                buttonText: Text(
                  "Injury Part",
                  style: TextStyle(
                    color: Colors.blue[800],
                    fontSize: 16,
                  ),
                ),
                onConfirm: (results) {
                  //_selectedAnimals = results;
                },
              ),
              SizedBox(height: 30),
              MultiSelectBottomSheetField(
                items: _items_injury_class,
                searchable: true,
                title: Text("Select Injury Class"),
                selectedColor: Color.fromARGB(255, 42, 139, 218),
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.1),
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  border: Border.all(
                    color: Colors.blue,
                    width: 2,
                  ),
                ),
                buttonIcon: Icon(
                  Icons.dangerous_sharp,
                  color: Colors.blue,
                ),
                buttonText: Text(
                  "Injury Class",
                  style: TextStyle(
                    color: Colors.blue[800],
                    fontSize: 16,
                  ),
                ),
                onConfirm: (results) {
                  //_selectedAnimals = results;
                },
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  controller: incident_location,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 3,
                        color: Colors.blue,
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 3, color: Color.fromARGB(255, 66, 125, 145)),
                    ),
                    icon: Icon(Icons.location_city),
                    labelText: 'INCIDENT LOCATION',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  controller: complaints,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 3,
                        color: Colors.blue,
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 3, color: Color.fromARGB(255, 66, 125, 145)),
                    ),
                    icon: Icon(Icons.comment_rounded),
                    labelText: 'INJURY DESCRIPTION',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  controller: branch_area,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 3,
                        color: Colors.blue,
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 3, color: Color.fromARGB(255, 66, 125, 145)),
                    ),
                    icon: Icon(Icons.location_city_sharp),
                    labelText: 'BRANCH AREA OF ACCIDENT',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  controller: injury_cause,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 3,
                        color: Colors.blue,
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 3, color: Color.fromARGB(255, 66, 125, 145)),
                    ),
                    icon: Icon(Icons.personal_injury),
                    labelText: 'CAUSE OF INJURY',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  controller: ailments_new,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 3,
                        color: Colors.blue,
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 3, color: Color.fromARGB(255, 66, 125, 145)),
                    ),
                    icon: Icon(Icons.medical_information),
                    labelText: 'DIAGNOSIS',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  controller: examination_remarks,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 3,
                        color: Colors.blue,
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 3, color: Color.fromARGB(255, 66, 125, 145)),
                    ),
                    icon: Icon(Icons.health_and_safety),
                    labelText: 'EXAMINATION FINDINGS',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  controller: remarks_rece,
                  // ignore: prefer_const_constructors
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 3,
                        color: Colors.blue,
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 3, color: Color.fromARGB(255, 66, 125, 145)),
                    ),
                    icon: Icon(Icons.read_more),
                    labelText: 'REMARKS:',
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Divider(),
              const SizedBox(height: 10),
              Container(
                margin: const EdgeInsets.fromLTRB(10, 0, 10, 25),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 15,
                      offset: Offset(5, 10), // changes position of shadow
                    ),
                  ],
                ),
                height: 50,
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: ElevatedButton(
                  child: const Text("SAVE"),
                  onPressed: () {
                    updateInjury(context);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.lightBlue,

                    // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                  ),
                ),
              ),
            ])),
      ),
    );
  }
}

class MySelectionItem extends StatelessWidget {
  final String title;
  final bool isForList;

  const MySelectionItem({Key key, this.title, this.isForList = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.0,
      child: isForList
          ? Padding(
              child: _buildItem(context),
              padding: const EdgeInsets.all(10.0),
            )
          : Card(
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Stack(
                children: <Widget>[
                  _buildItem(context),
                  const Align(
                    alignment: Alignment.centerRight,
                    child: Icon(Icons.arrow_drop_down),
                  )
                ],
              ),
            ),
    );
  }

  _buildItem(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      child: Text(title),
    );
  }
}
