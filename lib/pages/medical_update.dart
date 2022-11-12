// ignore_for_file: prefer_const_constructors, camel_case_types, unused_field
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ohctech/models/patient.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:day_night_time_picker/day_night_time_picker.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';

void main() {
  runApp(medicalUpdate());
}

class medicalUpdate extends StatefulWidget {
  final Patient patient;
  const medicalUpdate({Key key, @required this.patient})
      : assert(patient != null),
        super(key: key);
  @override
  State<medicalUpdate> createState() => _medicalUpdateState();
}

class health_risk {
  final int id;
  final String name;

  health_risk({
    this.id,
    this.name,
  });
}

class health_advice {
  final int id;
  final String name;

  health_advice({
    this.id,
    this.name,
  });
}

class past {
  final int id;
  final String name;

  past({
    this.id,
    this.name,
  });
}

class _medicalUpdateState extends State<medicalUpdate> {
  TextEditingController patientName = TextEditingController();
  TextEditingController ticketNo = TextEditingController();
  TextEditingController checkupdate = TextEditingController();

  @override
  var map;
  Future<dynamic> viewRisk(BuildContext context) async {
    var url = 'http://dushant-mali.great-site.net/mobile/health_risk_api.php';
    http.Response response = await http.post(Uri.parse(url), body: {});
    // print(map);
    try {
      map = json.decode(response.body);
      // print(map);
    } catch (e) {
      print(e);
    }
  }

  void initState() {
    super.initState();
    viewRisk(context);
    Patient me;
    me = widget.patient;
    print(me);
    patientName.text = me.patient_name;
    ticketNo.text = me.ticket_no;
    checkupdate.text = me.appointment_date;
  }

  static final List<health_risk> _health_risk = [
    health_risk(id: 1, name: "STROKE"),
    health_risk(id: 2, name: "RAISED EOSINOPHILS LEVEL"),
    health_risk(id: 3, name: "RAISED RBS"),
    health_risk(id: 4, name: "RAISED COLESTEROL"),
    health_risk(id: 5, name: "OBSTRUCTIVE IN PFT"),
    health_risk(id: 6, name: "RAISED CHOLETEROL"),
    health_risk(id: 7, name: "RESRTRICTIVE IN PFT"),
    health_risk(id: 8, name: "LOW BP"),
  ];
  final _items = _health_risk
      .map((risk) => MultiSelectItem<health_risk>(risk, risk.name))
      .toList();
  //List<Animal> _selectedAnimals = [];
  List<health_risk> _selectedhealth_risk2 = [];
  List<health_risk> _selectedhealth_risk3 = [];
  //List<Animal> _selectedAnimals4 = [];
  List<health_risk> _selectedhealth_risk5 = [];

  static final List<health_advice> _health_advice = [
    health_advice(id: 1, name: "STROKE"),
    health_advice(id: 2, name: "RAISED EOSINOPHILS LEVEL"),
    health_advice(id: 3, name: "RAISED RBS"),
    health_advice(id: 4, name: "RAISED COLESTEROL"),
    health_advice(id: 5, name: "OBSTRUCTIVE IN PFT"),
    health_advice(id: 6, name: "RAISED CHOLETEROL"),
    health_advice(id: 7, name: "RESRTRICTIVE IN PFT"),
    health_advice(id: 8, name: "LOW BP"),
  ];
  final _items_advice = _health_advice
      .map((advice) => MultiSelectItem<health_advice>(advice, advice.name))
      .toList();
  List<health_advice> _selectedhealth_advice2 = [];
  List<health_advice> _selectedhealth_advice3 = [];
  List<health_advice> _selectedhealth_advice5 = [];

  static final List<past> _past = [
    past(id: 1, name: "STROKE"),
    past(id: 2, name: "RAISED EOSINOPHILS LEVEL"),
    past(id: 3, name: "RAISED RBS"),
    past(id: 4, name: "RAISED COLESTEROL"),
    past(id: 5, name: "OBSTRUCTIVE IN PFT"),
    past(id: 6, name: "RAISED CHOLETEROL"),
    past(id: 7, name: "RESRTRICTIVE IN PFT"),
    past(id: 8, name: "LOW BP"),
  ];
  final _items_past = _past
      .map((past_list) => MultiSelectItem<past>(past_list, past_list.name))
      .toList();
  //List<Animal> _selectedAnimals = [];
  List<past> _selectedpast2 = [];
  List<past> _selectedpast3 = [];
  //List<Animal> _selectedAnimals4 = [];
  List<past> _selectedpast5 = [];

  final _multiSelectKey = GlobalKey<FormFieldState>();

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Update Medical Examination Details",
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.lightBlue,
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
          child: ListView(
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
                child: TextField(
                  controller: patientName,
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
                    icon: Icon(Icons.man),
                    labelText: "Patient Name",
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
                child: TextField(
                  readOnly: true,
                  controller: ticketNo,
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
                    labelText: "Ticket No",
                  ),
                ),
              ),
              Text(
                "\n Checkup Date",
                style: Theme.of(context).textTheme.headline6,
              ),
              DateTimePicker(
                enableSuggestions: true, cursorColor: Colors.redAccent,
                controller: checkupdate,
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
                items: _items,
                searchable: true,
                title: Text("Select Health Risk"),
                selectedColor: Colors.deepPurple,
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
                  "Health Risk",
                  style: TextStyle(
                    color: Colors.blue[800],
                    fontSize: 16,
                  ),
                ),
                onConfirm: (results) {
                  //_selectedAnimals = results;
                },
              ),
              SizedBox(height: 50),
              MultiSelectBottomSheetField(
                items: _items_advice,
                searchable: true,
                title: Text("Select Health Advice"),
                selectedColor: Colors.deepPurple,
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
                  "Health Advice",
                  style: TextStyle(
                    color: Colors.blue[800],
                    fontSize: 16,
                  ),
                ),
                onConfirm: (results) {
                  //_selectedAnimals = results;
                },
              ),
              Text(
                "\n Program Status \n",
                style: Theme.of(context).textTheme.headline6,
              ),
              CustomRadioButton(
                elevation: 0,
                absoluteZeroSpacing: false,
                unSelectedColor: Theme.of(context).canvasColor,
                width: 150,
                height: 40,
                buttonLables: [
                  'Complete',
                  'In-Complete',
                ],
                buttonValues: [
                  "Complete",
                  "in-Complete",
                ],
                buttonTextStyle: ButtonTextStyle(
                    selectedColor: Colors.white,
                    unSelectedColor: Colors.black,
                    textStyle: TextStyle(fontSize: 16)),
                radioButtonValue: (value) {
                  print(value);
                },
                selectedColor: Theme.of(context).accentColor,
              ),
              SizedBox(height: 20),
              MultiSelectBottomSheetField(
                chipDisplay: MultiSelectChipDisplay(
                  onTap: (value) {
                    setState(() {
                      print(value);
                      _selectedpast3.remove(value);
                    });
                  },
                ),
                items: _items_past,
                searchable: true,
                title: Text("PAST PRESENT ILLNESS"),
                selectedColor: Colors.deepPurple,
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
                  "PAST PRESENT ILLNESS",
                  style: TextStyle(
                    color: Colors.blue[800],
                    fontSize: 16,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(0, 20, 10, 0),
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: 2,
                  // controller: ,
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
                    icon: Icon(Icons.list),
                    labelText: "CRITICAL FINDINGS",
                  ),
                ),
              ),


Container(
                padding: const EdgeInsets.fromLTRB(0, 20, 10, 0),
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: 2,
                  // controller: ,
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
                    icon: Icon(Icons.list),
                    labelText: "LAB TECHNICIAN COMMENTS",
                  ),
                ),
              ),

              Text(
                "\n Valid Upto",
                style: Theme.of(context).textTheme.headline6,
              ),
              DateTimePicker(
                enableSuggestions: true, cursorColor: Colors.redAccent,
                controller: checkupdate,
                dateMask: 'd MMM, yyyy',
                firstDate: DateTime(2000),
                lastDate: DateTime(2500),
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
                    print("pressed");
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.lightBlue,

                    // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                  ),
                ),
              ),




            ],
          ),
        ),
      ),
    );
  }
}
