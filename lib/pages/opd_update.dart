// ignore_for_file: use_build_context_synchronously, unused_import
import 'package:flutter/material.dart';
import 'package:ohctech/models/medicine.dart';
import 'package:ohctech/models/patient.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:day_night_time_picker/day_night_time_picker.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:convert';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:ohctech/pages/home.dart';
// import 'package:intl/intl.dart';

void main() {
  runApp(opdForm(
    patient: null,
  ));
}

class opdForm extends StatefulWidget {
  final Patient patient;
  final Medicine medicine;

  const opdForm({Key key, @required this.patient, @required this.medicine})
      : assert(patient != null),
        super(key: key);

  @override
  State<opdForm> createState() => _opdFormState();
}

class _opdFormState extends State<opdForm> {
  TextEditingController patientName = TextEditingController();
  TextEditingController ticket_no = TextEditingController();
  TextEditingController complaints = TextEditingController();
  TextEditingController ailment_systems_new = TextEditingController();
  TextEditingController examination_remarks = TextEditingController();
  TextEditingController remarks_rece = TextEditingController();
  TextEditingController appointment_date = TextEditingController();
  TextEditingController duration = TextEditingController();
  TextEditingController dose_qty = TextEditingController();

  bool error = false, dataloaded = false;
  var data;

  String dataurl = "http://103.196.222.49:85/jsw/pending_opd_list.php";

  @override
  void initState() {
    loaddata();
    getAllCategory();
    getAllMedicines();
    getAllFrequency();
    getAllTimings();
    getAllAdminroute();
    super.initState();
    Patient dm;
    dm = widget.patient;
    var visitDate;
    ticket_no.text = dm.ticket_no;
    patientName.text = dm.patient_name;
    complaints.text = dm.complaints;
    ailment_systems_new.text = dm.ailment_systems_new;
    examination_remarks.text = dm.examination_remarks;
    remarks_rece.text = dm.remarks_rece;
    visitDate = dm.appointment_date;
    appointment_date.text = visitDate;
  }

  void loaddata() {
    Future.delayed(Duration.zero, () async {
      var res;
      try {
        res = await http.post(Uri.parse(dataurl));
        if (res.statusCode == 200) {
          setState(() {
            data = json.decode(res.body);
            dataloaded = true;
          });
        } else {
          //there is error
          setState(() {
            error = true;
          });
        }
      } catch (e) {
        print(e);
      }
   
    });
    // we use Future.delayed becuase there is
    // async function inside it.
  }

  String gender;
  var iteams = [
    "Select Disease Type",
    "COMMUNICABLE",
    "NON-COUMMINCABLE",
  ];
  List<Widget> _buildItems1() {
    return iteams
        .map((val) => MySelectionItem(
              title: val,
            ))
        .toList();
  }

  var caseType = [
    "Select Case Type",
    "New Case",
    "Repeat",
    "Follow Up",
    "Medication",
  ];

  List<Widget> _buildItems2() {
    return caseType
        .map((val) => MySelectionItem(
              title: val,
            ))
        .toList();
  }

  var bodySystem = [
    "Select Body System",
    "New Case",
    "Dushant",
    "Follow Up",
    "Medication",
  ];
  List<Widget> _buildItems3() {
    return bodySystem
        .map((val) => MySelectionItem(
              title: val,
            ))
        .toList();
  }

  List categoryItemlist = [];

  Future getAllCategory() async {
    var baseUrl = "http://103.196.222.49:85/jsw/bodysystemapi.php";

    http.Response response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      var jsonData = json.decode(response.body);
      setState(() {
        categoryItemlist = jsonData;
      });
    }
  }

  List medicinelist = [];

  Future getAllMedicines() async {
    var baseUrl = "http://103.196.222.49:85/jsw/medicines_api.php";

    http.Response response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      var jsonData = json.decode(response.body);
      setState(() {
        medicinelist = jsonData;
      });
    }
  }

  List frequencylist = [];

  Future getAllFrequency() async {
    var baseUrl = "http://103.196.222.49:85/jsw/frequency_api.php";

    http.Response response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      var jsonData = json.decode(response.body);
      setState(() {
        frequencylist = jsonData;
      });
    }
  }

  List timingslist = [];

  Future getAllTimings() async {
    var baseUrl = "http://103.196.222.49:85/jsw/timings_api.php";

    http.Response response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      var jsonData = json.decode(response.body);
      setState(() {
        timingslist = jsonData;
      });
    }
  }

  List adminRoutelist = [];

  Future getAllAdminroute() async {
    var baseUrl = "http://103.196.222.49:85/jsw/adminroute_api.php";

    http.Response response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      var jsonData = json.decode(response.body);
      setState(() {
        adminRoutelist = jsonData;
      });
    }
  }

  var dropdownvalue;
  var dropdownValueMedicine;
  var dropdownValueFrequency;
  var dropdownValueTiming;
  var dropdownValueAdminroute;

  String dropdownValue = 'Select Disease Type';
  // String dropdownValueMedicine = 'Select Medicine';
  // String dropdownValueFrequency = 'Select Frequency';
  // String dropdownValueTiming = 'Select Timing';
  // String dropdownValueAdminroute = 'Select Admin. Route';
  String caseTypeValue = 'Select Case Type';
  String bodySystemValue = 'Select Body System';

  Future<dynamic> updateOPD(BuildContext context) async {
    var url = 'http://103.196.222.49:85/jsw/opd_update.php';
    http.Response response = await http.post(Uri.parse(url), body: {
      "ticket_no": ticket_no.text,
      "ailments_new": bodySystemValue,
      "complaints": complaints.text,
      "ailment_systems_new": ailment_systems_new.text,
      "examination_remarks": examination_remarks.text,
      "remarks_rece": remarks_rece.text,
      "appointment_date": appointment_date.text
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
    var vdate;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Update Opd Details",
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
                    labelText: "TICKET NO",
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
                "\nVisit Date\n",
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
                // selectableDayPredicate: (date) {
                //   // Disable weekend days to select from the calendar
                //   if (date.weekday == 6 || date.weekday == 7) {
                //     return false;
                //   }
                //   return true;
                // },
                validator: (val) {
                  return null;
                },
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  "\n\n AILMENT SYSTEM",
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w500),
                ),
              ),
              DropdownButtonHideUnderline(
                child: DropdownButton2(
                  isExpanded: true,
                  hint: Row(
                    children: const [
                      Icon(
                        Icons.list,
                        size: 16,
                        color: Colors.yellow,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Expanded(
                        child: Text(
                          'Select Item',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.yellow,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  items: categoryItemlist.map((item) {
                    return DropdownMenuItem(
                      value: item['ailment_sys_name'].toString(),
                      child: Text(item['ailment_sys_name'].toString()),
                    );
                  }).toList(),
                  value: dropdownvalue,
                  onChanged: (newVal) {
                    setState(() {
                      dropdownvalue = newVal;
                    });
                  },
                  icon: const Icon(
                    Icons.arrow_circle_down_outlined,
                  ),
                  iconSize: 14,
                  iconEnabledColor: Colors.black,
                  iconDisabledColor: Colors.grey,
                  buttonHeight: 50,
                  buttonWidth: 160,
                  buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                  buttonDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(
                      color: Colors.black26,
                    ),
                    color: Colors.lightBlue,
                  ),
                  buttonElevation: 2,
                  itemHeight: 40,
                  itemPadding: const EdgeInsets.only(left: 30, right: 14),
                  dropdownMaxHeight: 200,
                  dropdownWidth: 300,
                  dropdownPadding: null,
                  dropdownDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.lightBlueAccent,
                  ),
                  dropdownElevation: 8,
                  scrollbarRadius: const Radius.circular(40),
                  scrollbarThickness: 6,
                  scrollbarAlwaysShow: true,
                  offset: const Offset(20, 0),
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
                    labelText: 'COMPLAINTS',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  controller: ailment_systems_new,
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
                    icon: Icon(Icons.numbers),
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
                    icon: Icon(Icons.history),
                    labelText: 'REMARKS:',
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ExpansionTile(
                // backgroundColor: Color.fromARGB(255, 17, 171, 222),
                title: Text(
                  "\nMEDICINE\n",
                  style: Theme.of(context).textTheme.headline6,
                ), //header title
                children: [
                  DropdownButtonHideUnderline(
                    child: DropdownButton2(
                      isExpanded: true,
                      hint: Row(
                        children: const [
                          Icon(
                            Icons.list,
                            size: 16,
                            color: Color.fromARGB(255, 249, 248, 244),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Expanded(
                            child: Text(
                              'Select Medicine',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 240, 240, 238),
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      items: medicinelist.map((item) {
                        return DropdownMenuItem(
                          value: item['item_name'].toString(),
                          child: Text(
                            item['item_name'].toString(),
                            style: TextStyle(
                                color: Color.fromARGB(255, 240, 240, 238)),
                          ),
                        );
                      }).toList(),
                      value: dropdownValueMedicine,
                      onChanged: (newVal) {
                        setState(() {
                          dropdownValueMedicine = newVal;
                        });
                      },
                      icon: const Icon(
                        Icons.arrow_circle_down_outlined,
                      ),
                      iconSize: 14,
                      iconEnabledColor: Colors.black,
                      iconDisabledColor: Colors.grey,
                      buttonHeight: 50,
                      buttonWidth: 350,
                      buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                      buttonDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(
                          color: Colors.black26,
                        ),
                        color: Colors.lightBlue,
                      ),
                      buttonElevation: 2,
                      itemHeight: 40,
                      itemPadding: const EdgeInsets.only(left: 15, right: 14),
                      dropdownMaxHeight: 100,
                      dropdownWidth: 200,
                      dropdownPadding: null,
                      dropdownDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Colors.lightBlueAccent,
                      ),
                      dropdownElevation: 8,
                      scrollbarRadius: const Radius.circular(40),
                      scrollbarThickness: 6,
                      scrollbarAlwaysShow: true,
                      offset: const Offset(10, 0),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  DropdownButtonHideUnderline(
                    child: DropdownButton2(
                      isExpanded: true,
                      hint: Row(
                        children: const [
                          Icon(
                            Icons.list,
                            size: 16,
                            color: Color.fromARGB(255, 249, 248, 244),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Expanded(
                            child: Text(
                              'Select Frequency',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 240, 240, 238),
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      items: frequencylist.map((item) {
                        return DropdownMenuItem(
                          value: item['medicine_frequency'].toString(),
                          child: Text(
                            item['medicine_frequency'].toString(),
                            style: TextStyle(
                                color: Color.fromARGB(255, 240, 240, 238)),
                          ),
                        );
                      }).toList(),
                      value: dropdownValueFrequency,
                      onChanged: (newVal) {
                        setState(() {
                          dropdownValueFrequency = newVal;
                        });
                      },
                      icon: const Icon(
                        Icons.arrow_circle_down_outlined,
                      ),
                      iconSize: 14,
                      iconEnabledColor: Colors.black,
                      iconDisabledColor: Colors.grey,
                      buttonHeight: 50,
                      buttonWidth: 350,
                      buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                      buttonDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(
                          color: Color.fromARGB(220, 233, 231, 231),
                        ),
                        color: Colors.lightBlue,
                      ),
                      buttonElevation: 2,
                      itemHeight: 40,
                      itemPadding: const EdgeInsets.only(left: 15, right: 14),
                      dropdownMaxHeight: 100,
                      dropdownWidth: 200,
                      dropdownPadding: null,
                      dropdownDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Colors.lightBlueAccent,
                      ),
                      dropdownElevation: 8,
                      scrollbarRadius: const Radius.circular(40),
                      scrollbarThickness: 6,
                      scrollbarAlwaysShow: true,
                      offset: const Offset(10, 0),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  DropdownButtonHideUnderline(
                    child: DropdownButton2(
                      isExpanded: true,
                      hint: Row(
                        children: const [
                          Icon(
                            Icons.list,
                            size: 16,
                            color: Color.fromARGB(255, 249, 248, 244),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Expanded(
                            child: Text(
                              'Select Timings',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 240, 240, 238),
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      items: timingslist.map((item) {
                        return DropdownMenuItem(
                          value: item['medicine_timing'].toString(),
                          child: Text(
                            item['medicine_timing'].toString(),
                            style: TextStyle(
                                color: Color.fromARGB(255, 240, 240, 238)),
                          ),
                        );
                      }).toList(),
                      value: dropdownValueTiming,
                      onChanged: (newVal) {
                        setState(() {
                          dropdownValueTiming = newVal;
                        });
                      },
                      icon: const Icon(
                        Icons.arrow_circle_down_outlined,
                      ),
                      iconSize: 14,
                      iconEnabledColor: Colors.black,
                      iconDisabledColor: Colors.grey,
                      buttonHeight: 50,
                      buttonWidth: 350,
                      buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                      buttonDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(
                          color: Colors.black26,
                        ),
                        color: Colors.lightBlue,
                      ),
                      buttonElevation: 2,
                      itemHeight: 40,
                      itemPadding: const EdgeInsets.only(left: 15, right: 14),
                      dropdownMaxHeight: 100,
                      dropdownWidth: 200,
                      dropdownPadding: null,
                      dropdownDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Colors.lightBlueAccent,
                      ),
                      dropdownElevation: 8,
                      scrollbarRadius: const Radius.circular(40),
                      scrollbarThickness: 6,
                      scrollbarAlwaysShow: true,
                      offset: const Offset(10, 0),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  DropdownButtonHideUnderline(
                    child: DropdownButton2(
                      isExpanded: true,
                      hint: Row(
                        children: const [
                          Icon(
                            Icons.list,
                            size: 16,
                            color: Color.fromARGB(255, 249, 248, 244),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Expanded(
                            child: Text(
                              'Select Admin. Route',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 240, 240, 238),
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      items: adminRoutelist.map((item) {
                        return DropdownMenuItem(
                          value: item['dosage_category'].toString(),
                          child: Text(
                            item['dosage_category'].toString(),
                            style: TextStyle(
                                color: Color.fromARGB(255, 240, 240, 238)),
                          ),
                        );
                      }).toList(),
                      value: dropdownValueAdminroute,
                      onChanged: (newVal) {
                        setState(() {
                          dropdownValueAdminroute = newVal;
                        });
                      },
                      icon: const Icon(
                        Icons.arrow_circle_down_outlined,
                      ),
                      iconSize: 14,
                      iconEnabledColor: Colors.black,
                      iconDisabledColor: Colors.grey,
                      buttonHeight: 50,
                      buttonWidth: 350,
                      buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                      buttonDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(
                          color: Colors.black26,
                        ),
                        color: Colors.lightBlue,
                      ),
                      buttonElevation: 2,
                      itemHeight: 40,
                      itemPadding: const EdgeInsets.only(left: 15, right: 14),
                      dropdownMaxHeight: 100,
                      dropdownWidth: 200,
                      dropdownPadding: null,
                      dropdownDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Colors.lightBlueAccent,
                      ),
                      dropdownElevation: 8,
                      scrollbarRadius: const Radius.circular(40),
                      scrollbarThickness: 6,
                      scrollbarAlwaysShow: true,
                      offset: const Offset(10, 0),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: TextField(
                      controller: duration,
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
                              width: 3,
                              color: Color.fromARGB(255, 66, 125, 145)),
                        ),
                        icon: Icon(Icons.timelapse),
                        labelText: 'DURATION:',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: TextField(
                      controller: dose_qty,
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
                              width: 3,
                              color: Color.fromARGB(255, 66, 125, 145)),
                        ),
                        icon: Icon(Icons.production_quantity_limits),
                        labelText: 'DOSE QTY.:',
                      ),
                    ),
                  ),
                ],
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
                    updateOPD(context);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.lightBlue,

                    // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                  ),
                ),
              ),
              // Container(
              //   padding: EdgeInsets.all(15),
              //   //check if data is loaded, if loaded then show datalist on child
              //   child: dataloaded
              //       ? datalist()
              //       : Center(
              //           //if data is not loaded then show progress
              //           child: CircularProgressIndicator()),
              // ),
            ])),
      ),
    );
  }

  // Widget datalist() {
  //   var list = List<Medicine>.from(data['medicines'].map((i) {
  //     return Medicine.fromJSON(i);
  //   }));
  //   List<Medicine> namelist = list; //prasing data list to model

  //   return Table(
  //     //if data is loaded then show table
  //     border: TableBorder.all(width: 1, color: Colors.black45),
  //     children: namelist.map((medicine) {
  //       return TableRow(//return table row in every loop
  //           children: [
  //         //table cells inside table row
  //         TableCell(
  //             child: Padding(
  //                 padding: EdgeInsets.all(5),
  //                 child: Text(medicine.medicineName))),
  //         TableCell(
  //             child: Padding(
  //                 padding: EdgeInsets.all(5),
  //                 child: Text(medicine.medicineFrequency))),
  //         TableCell(
  //             child: Padding(
  //                 padding: EdgeInsets.all(5),
  //                 child: Text(medicine.medicineFordays))),
  //         TableCell(
  //             child: Padding(
  //                 padding: EdgeInsets.all(5),
  //                 child: Text(medicine.medicineAdminroute))),
  //         TableCell(
  //             child: Padding(
  //                 padding: EdgeInsets.all(5),
  //                 child: Text(medicine.medicineDosage))),
  //         TableCell(
  //             child: Padding(
  //                 padding: EdgeInsets.all(5),
  //                 child: Text(medicine.medicineQty))),
  //         TableCell(
  //             child: Padding(
  //                 padding: EdgeInsets.all(5),
  //                 child: Text(medicine.medicineIssuedqty))),
  //         TableCell(
  //             child: Padding(
  //                 padding: EdgeInsets.all(5),
  //                 child: Text(medicine.medicineTiming))),
  //       ]);
  //     }).toList(),
  //   );
  // }
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
