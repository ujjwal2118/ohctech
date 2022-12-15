// ignore_for_file: use_build_context_synchronously, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:ohctech/models/patient.dart';
import 'package:ohctech/models/injury_model.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:day_night_time_picker/day_night_time_picker.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:convert';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:ohctech/pages/home.dart';
import 'package:intl/intl.dart';
import 'package:get/get.dart';
import 'package:multi_select_flutter/dialog/multi_select_dialog_field.dart';

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
  TextEditingController diagnosis = TextEditingController();
  TextEditingController examination_remarks = TextEditingController();
  TextEditingController remarks_rece = TextEditingController();
  TextEditingController appointment_date = TextEditingController();
  TextEditingController injury_time = TextEditingController();
  TextEditingController incident_location = TextEditingController();
  TextEditingController injury_cause = TextEditingController();
  TextEditingController injury_procedure = TextEditingController();
  TextEditingController branch_area = TextEditingController();
  // TextEditingController dept = TextEditingController();

  final AppDataController controllerPart = Get.put(AppDataController());
  final AppDataController controllerType = Get.put(AppDataController());
  final AppDataController controllerClass = Get.put(AppDataController());

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
    diagnosis.text = dm.diagnosis;
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

  // List injuryClasslist = [];

  // Future getAllFrequency() async {
  //   var baseUrl = "http://103.196.222.49:85/jsw/injury_class_api.php";

  //   http.Response response = await http.get(Uri.parse(baseUrl));

  //   if (response.statusCode == 200) {
  //     var jsonData = json.decode(response.body);
  //     setState(() {
  //       injuryClasslist = jsonData;
  //     });
  //   }
  // }

  // List injuryPartlist = [];

  // Future getAllTimings() async {
  //   var baseUrl = "http://103.196.222.49:85/jsw/injury_part_api.php";

  //   http.Response response = await http.get(Uri.parse(baseUrl));

  //   if (response.statusCode == 200) {
  //     var jsonData = json.decode(response.body);
  //     setState(() {
  //       injuryPartlist = jsonData;
  //     });
  //   }
  // }

  // List injuryTypelist = [];

  // Future getAllAdminroute() async {
  //   var baseUrl = "http://103.196.222.49:85/jsw/injury_type_api.php";

  //   http.Response response = await http.get(Uri.parse(baseUrl));

  //   if (response.statusCode == 200) {
  //     var jsonData = json.decode(response.body);
  //     setState(() {
  //       injuryTypelist = jsonData;
  //     });
  //   }
  // }

  var dropdownValueInjuryPart;
  var dropdownValueInjuryClass;
  var dropdownValueInjuryType;
  List injuryPartData = [];
  List injuryClassData = [];
  List injuryTypeData = [];
  String injury_parts;
  String injury_types;
  String injury_classes;

  final _multiSelectKey = GlobalKey<FormFieldState>();

  Future<dynamic> updateInjury(BuildContext context) async {
    var url = 'http://103.196.222.49:85/jsw/injury_update.php';
    http.Response response = await http.post(Uri.parse(url), body: {
      "ticket_no": ticket_no.text,
      "complaints": complaints.text,
      "diagnosis": diagnosis.text,
      "examination_remarks": examination_remarks.text,
      "injury_type": injury_types,
      "injury_part": injury_parts,
      "injury_class": injury_classes,
      "injury_procedure": injury_procedure.text,
      "remarks_rece": remarks_rece.text,
      "appointment_date": appointment_date.text,
      "injury_time": injury_time.text,
      "injury_cause": injury_cause.text,
      "branch_area": branch_area.text,
      "incident_location": incident_location.text,
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
        btnOkOnPress: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => HomePage()))
              .then((_) {
            // This block runs when you have come back to the 1st Page from 2nd.
            setState(() {
              // Call setState to refresh the page.
            });
          });
        },
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
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      controllerPart.getinjuryPartData();
    });
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      controllerClass.getinjuryClassData();
    });
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      controllerType.getinjuryTypeData();
    });
    var vdate;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios),
          ),
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
              Container(
                  padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
                  child: TextField(
                    controller:
                        appointment_date, //editing controller of this TextField
                    decoration: InputDecoration(
                      icon: Icon(Icons.calendar_today), //icon of text field
                      // labelText: "Date of Return" //label text of field
                    ),
                    // readOnly:
                    //     true, //set it true, so that user will not able to edit text
                    onTap: () async {
                      DateTime pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(
                              2000), //DateTime.now() - not to allow to choose before today.
                          lastDate: DateTime(2101));

                      if (pickedDate != null) {
                        print(
                            pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                        String formattedDate =
                            DateFormat('yyyy-MM-dd').format(pickedDate);
                        print(
                            formattedDate); //formatted date output using intl package =>  2021-03-16
                        //you can implement different kind of Date Format here according to your requirement

                        setState(() {
                          appointment_date.text =
                              formattedDate; //set output date to TextField value.
                        });
                      } else {
                        print("Date is not selected");
                      }
                    },
                  )),
              // Text(
              //   "\nInjury Time\n",
              //   style: Theme.of(context).textTheme.headline6,
              // ),
              // DateTimePicker(
              //   enableSuggestions: true, cursorColor: Colors.redAccent,
              //   controller: injury_time,
              //   type: DateTimePickerType.dateTimeSeparate,
              //   dateMask: 'd MMM, yyyy',
              //   firstDate: DateTime(2000),
              //   lastDate: DateTime(2500),
              //   // use24HourFormat: false,
              //   icon: Icon(Icons.event),
              //   dateLabelText: 'Date',
              //   timeLabelText: "Time",
              //   selectableDayPredicate: (date) {
              //     // Disable weekend days to select from the calendar
              //     if (date.weekday == 6 || date.weekday == 7) {
              //       return false;
              //     }

              //     return true;
              //   },

              //   validator: (val) {
              //     return null;
              //   },
              // ),
              const SizedBox(height: 10),
              const Divider(),
              const SizedBox(height: 10),
              GetBuilder<AppDataController>(builder: (controller) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: MultiSelectDialogField(
                    dialogHeight: 200,
                    items: controllerPart.dropDownData,
                    title: const Text(
                      "Select Injury Part",
                      style: TextStyle(color: Colors.black),
                    ),
                    selectedColor: Colors.black,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(Radius.circular(30)),
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                    buttonIcon: const Icon(
                      Icons.arrow_drop_down,
                      color: Colors.blue,
                    ),
                    buttonText: const Text(
                      "Select Injury parts",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    onConfirm: (results) {
                      // injuryPartData = [];
                      injuryPartData.clear();
                      for (var i = 0; i < results.length; i++) {
                        Injury data = results[i] as Injury;
                        print(data.injuryPartId);
                        print(data.injuryPartName);

                        injuryPartData.add(data.injuryPartId);
                        injury_parts = injuryPartData
                            .toString()
                            .replaceAll('[', '')
                            .replaceAll(']', '');
                        // injuryPartData.clear();
                      }

                      print("data $injury_parts");

                      //_selectedAnimals = results;
                    },
                  ),
                );
              }),
              GetBuilder<AppDataController>(builder: (controller) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: MultiSelectDialogField(
                    dialogHeight: 200,
                    items: controllerType.dropDownDataType,
                    title: const Text(
                      "Select Injury Type",
                      style: TextStyle(color: Colors.black),
                    ),
                    selectedColor: Colors.black,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(Radius.circular(30)),
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                    buttonIcon: const Icon(
                      Icons.arrow_drop_down,
                      color: Colors.blue,
                    ),
                    buttonText: const Text(
                      "Select Injury type",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    onConfirm: (results) {
                      // injuryTypeData = [];
                      injuryTypeData.clear();
                      for (var i = 0; i < results.length; i++) {
                        Injury data = results[i] as Injury;
                        print(data.injuryTypeId);
                        print(data.injuryTypeName);

                        injuryTypeData.add(data.injuryTypeId);

                        injury_types = injuryTypeData
                            .toString()
                            .replaceAll('[', '')
                            .replaceAll(']', '');
                      }
                      print("data $injury_types");

                      //_selectedAnimals = results;
                    },
                  ),
                );
              }),
              GetBuilder<AppDataController>(builder: (controller) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: MultiSelectDialogField(
                    dialogHeight: 200,
                    items: controllerClass.dropDownDataClass,
                    title: const Text(
                      "Select Injury Class",
                      style: TextStyle(color: Colors.black),
                    ),
                    selectedColor: Colors.black,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(Radius.circular(30)),
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                    buttonIcon: const Icon(
                      Icons.arrow_drop_down,
                      color: Colors.blue,
                    ),
                    buttonText: const Text(
                      "Select Injury class",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    onConfirm: (results) {
                      // injuryClassData = [];
                      injuryClassData.clear();
                      for (var i = 0; i < results.length; i++) {
                        Injury data = results[i] as Injury;
                        print(data.injuryClassId);
                        print(data.injuryClassName);

                        injuryClassData.add(data.injuryClassId);
                        injury_classes = injuryClassData
                            .toString()
                            .replaceAll('[', '')
                            .replaceAll(']', '');
                      }
                      print("data $injury_classes");

                      //_selectedAnimals = results;
                    },
                  ),
                );
              }),
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
                  controller: injury_procedure,
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
                    icon: Icon(Icons.medical_services),
                    labelText: 'INJURY PROCEDURE',
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
                    icon: Icon(Icons.medical_information),
                    labelText: 'INJURY DESCRIPTION',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  controller: diagnosis,
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

class AppDataController extends GetxController {
  List<Injury> injuryPartData = [];
  List<Injury> injuryClassData = [];
  List<Injury> injuryTypeData = [];
  List<MultiSelectItem> dropDownData = [];
  List<MultiSelectItem> dropDownDataClass = [];
  List<MultiSelectItem> dropDownDataType = [];

  getinjuryPartData() async {
    injuryPartData.clear();
    dropDownData.clear();

    var baseUrl = "http://103.196.222.49:85/jsw/injury_part_api.php";

    http.Response response = await http.get(Uri.parse(baseUrl));

    // if (response.statusCode == 200) {
    var jsonData = json.decode(response.body);
    // }

    print(jsonData);

    Map<String, dynamic> apiResponse = jsonData;

    List<Injury> tempinjuryPartData = [];
    apiResponse['data'].forEach(
      (data) {
        tempinjuryPartData.add(
          Injury(
            injuryPartId: data['part_id'],
            injuryPartName: data['part_name'],
          ),
        );
      },
    );
    print(tempinjuryPartData);
    injuryPartData.addAll(tempinjuryPartData);

    dropDownData = injuryPartData.map((injuryPartData) {
      return MultiSelectItem(injuryPartData, injuryPartData.injuryPartName);
    }).toList();

    update();
  }

  getinjuryClassData() async {
    injuryClassData.clear();
    dropDownDataClass.clear();

    var baseUrl = "http://103.196.222.49:85/jsw/injury_class_api.php";

    http.Response response = await http.get(Uri.parse(baseUrl));

    // if (response.statusCode == 200) {
    var jsonData = json.decode(response.body);
    // }

    print(jsonData);

    Map<String, dynamic> apiResponse = jsonData;

    List<Injury> tempinjuryClassData = [];
    apiResponse['data'].forEach(
      (data) {
        tempinjuryClassData.add(
          Injury(
            injuryClassId: data['class_id'],
            injuryClassName: data['class_name'],
          ),
        );
      },
    );
    print(tempinjuryClassData);
    injuryClassData.addAll(tempinjuryClassData);

    dropDownDataClass = injuryClassData.map((injuryClassData) {
      return MultiSelectItem(injuryClassData, injuryClassData.injuryClassName);
    }).toList();

    update();
  }

  getinjuryTypeData() async {
    injuryTypeData.clear();
    dropDownDataType.clear();

    var baseUrl = "http://103.196.222.49:85/jsw/injury_type_api.php";

    http.Response response = await http.get(Uri.parse(baseUrl));

    // if (response.statusCode == 200) {
    var jsonData = json.decode(response.body);
    // }

    print(jsonData);

    Map<String, dynamic> apiResponse = jsonData;

    List<Injury> tempinjuryTypeData = [];
    apiResponse['data'].forEach(
      (data) {
        tempinjuryTypeData.add(
          Injury(
            injuryTypeId: data['type_id'],
            injuryTypeName: data['type_name'],
          ),
        );
      },
    );
    print(tempinjuryTypeData);
    injuryTypeData.addAll(tempinjuryTypeData);

    dropDownDataType = injuryTypeData.map((injuryTypeData) {
      return MultiSelectItem(injuryTypeData, injuryTypeData.injuryTypeName);
    }).toList();

    update();
  }
}
