// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
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
  runApp(sicknessEdit(
    patient: null,
  ));
}

class sicknessEdit extends StatefulWidget {
  final Patient patient;

  const sicknessEdit({Key key, @required this.patient})
      : assert(patient != null),
        super(key: key);

  @override
  State<sicknessEdit> createState() => _sicknessEditState();
}

class _sicknessEditState extends State<sicknessEdit> {
  TextEditingController patientName = TextEditingController();
  TextEditingController sickDate = TextEditingController();
  TextEditingController absentDate = TextEditingController();
  TextEditingController absentToDate = TextEditingController();
  TextEditingController returnDate = TextEditingController();
  TextEditingController ticketNo = TextEditingController();
  TextEditingController des = TextEditingController();
  TextEditingController agency = TextEditingController();
  TextEditingController ailment_name = TextEditingController();
  // TextEditingController approval_remarks = TextEditingController();
  TextEditingController visitdate = TextEditingController();

  @override
  void initState() {
    super.initState();
    Patient dm;
    getAllCategory();
    dm = widget.patient;
    print(dm);
    // var visitDate;
//     DateTime now = new DateTime.now();
// DateTime date = new DateTime(now.year, now.month, now.day , now.hour , now.minute);
    patientName.text = dm.patient_name;
    String todaydate = DateFormat("yyyy-MM-dd hh:mm:ss").format(DateTime.now());
    String sicd = dm.sickness_date;
    // if (sicd == '0000-00-00 00:00:00' || sicd == '0000-00-00') {
    //   print('if');
    //   sickDate.text = todaydate;
    // } else {
    //   print('else');
    sickDate.text = dm.sickness_date;
    //}

    // if (ad == '0000-00-00' || ad == '0000-00-00 00:00:00') {
    //   print('if');
    //   absentDate.text = todaydate;
    // } else {
    //print('else');
    absentDate.text = dm.date_absent;
    //}
    // String abt = dm.date_absent_to;
    // if (abt == '0000-00-00 00:00:00' || abt == '0000-00-00') {
    //   print('if');
    //   absenttoDate.text = todaydate;
    // } else {
    //   print('else');
    absentToDate.text = dm.date_absent_to;
    // }
    // String dr = dm.date_return;
    // if (dr == '0000-00-00 00:00:00' || dr == '0000-00-00') {
    //   print('if');
    //   returnDate.text = todaydate;
    // } else {
    //   print('else');
    returnDate.text = dm.date_return;
    // }
    ticketNo.text = dm.ticket_no;
    des.text = dm.des;
    ailment_name.text = dm.ailment_name;
    agency.text = dm.agency;
    // ExaminationFind.text = dm.examination_remarks;
    // HistoryDrug.text = dm.drug_allergy;
    // visitDate = dm.appointment_date;
    // visitdate.text = visitDate;
  }

  var bodySystem = [
    "Select Ailment System",
    "New Case",
    "Dushant",
    "Follow Up",
    "Medication",
  ];

  var approvalStatusValue = [
    "Select an option",
    "FIT",
    "UNFIT",
  ];
  List<Widget> _buildItems3() {
    return bodySystem
        .map((val) => MySelectionItem(
              title: val,
            ))
        .toList();
  }

  List<Widget> _buildItems4() {
    return approvalStatusValue
        .map((val) => MySelectionItem(
              title: val,
            ))
        .toList();
  }

  String bodySystemValue = 'Select Ailment System';
  String approvalStatus = "Select an option";

  Future<dynamic> insertOPD(BuildContext context) async {
    var url = 'http://103.196.222.49:85/jsw/sickness_update.php';
    http.Response response = await http.post(Uri.parse(url), body: {
      "ticket_no": ticketNo.text,
      "name": patientName.text,
      "des": des.text,
      "ailment_name": ailment_name.text,
      "ailment_name": bodySystemValue,
      "approval_status": approvalStatus,
      "agency": agency.text,
      // "approval_remarks": approval_remarks.text,
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

  var dropdownvalue;
  Widget build(BuildContext context) {
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
            "Update Fitness Details",
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.lightBlue,
        ),
        body: Padding(
            padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
            child: ListView(children: <Widget>[
              Container(
                padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
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
              Container(
                  padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
                  child: TextField(
                    controller: sickDate, //editing controller of this TextField
                    decoration: InputDecoration(
                        icon: Icon(Icons.calendar_today), //icon of text field
                        labelText: "Sickness Date" //label text of field
                        ),
                    //set it true, so that user will not able to edit text
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
                          sickDate.text =
                              formattedDate; //set output date to TextField value.
                        });
                      } else {
                        print("Date is not selected");
                      }
                    },
                  )),
              Container(
                  padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
                  child: TextField(
                    controller:
                        absentDate, //editing controller of this TextField
                    decoration: InputDecoration(
                        icon: Icon(Icons.calendar_today), //icon of text field
                        labelText: "Absent From Date" //label text of field
                        ),
                    //set it true, so that user will not able to edit text
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
                          absentDate.text =
                              formattedDate; //set output date to TextField value.
                        });
                      } else {
                        print("Date is not selected");
                      }
                    },
                  )),
              Container(
                  padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
                  child: TextField(
                    controller:
                        absentToDate, //editing controller of this TextField
                    decoration: InputDecoration(
                        icon: Icon(Icons.calendar_today), //icon of text field
                        labelText: "Absent To Date" //label text of field
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
                          absentToDate.text =
                              formattedDate; //set output date to TextField value.
                        });
                      } else {
                        print("Date is not selected");
                      }
                    },
                  )),
              Container(
                  padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
                  child: TextField(
                    controller:
                        returnDate, //editing controller of this TextField
                    decoration: InputDecoration(
                        icon: Icon(Icons.calendar_today), //icon of text field
                        labelText: "Date of Return" //label text of field
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
                          returnDate.text =
                              formattedDate; //set output date to TextField value.
                        });
                      } else {
                        print("Date is not selected");
                      }
                    },
                  )),
              Container(
                padding: const EdgeInsets.fromLTRB(0, 20, 10, 0),
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: 2,
                  controller: des,
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
                    labelText: "Description",
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
                child: TextField(
                  controller: agency,
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
                    icon: Icon(Icons.hotel),
                    labelText: "Treatment Agency",
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  controller: ailment_name,
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
                    labelText: 'Diagnosis',
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  "\n\n AILMENT SYSTEM \n",
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
                        color: Colors.white,
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
                            color: Colors.white,
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
              const Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  "\n\n APPROVAL STATUS \n",
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
                            color: Colors.white,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  items: approvalStatusValue
                      .map((items) => DropdownMenuItem<String>(
                            value: items,
                            child: Text(
                              items,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ))
                      .toList(),
                  value: approvalStatus,
                  onChanged: (value) {
                    setState(() {
                      approvalStatus = value as String;
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
                    insertOPD(context);
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
