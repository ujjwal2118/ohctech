// ignore_for_file: prefer_const_constructors, sort_child_properties_last, unused_import, depend_on_referenced_packages, prefer_typing_uninitialized_variables, avoid_print, unnecessary_string_interpolations, annotate_overrides, avoid_unnecessary_containers, deprecated_member_use

import 'package:day_night_time_picker/lib/constants.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:convert';
import 'package:mysql1/mysql1.dart';
import 'package:ohctech/models/patient.dart';
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

// void main() {
//   runApp(const OpdForm());

// }

class OpdForm extends StatelessWidget {
  final Patient patient;
  
// Future<List> fetchData() async {
//   var teacher_id = await AppUtils.getStringFromPref("teacher_id");
//   final data = await http
//       .post(AppUtils.teacherHomeLink, body: {"teacher_id": teacher_id});
//   var responseBody = data.body;
//   print(responseBody);
//   final parsed = json.decode(data.body).cast<Map<String, dynamic>>();

//   List<TeacherHomeData> parentSigninList = parsed
//       .map<TeacherHomeData>((json) => TeacherHomeData.fromJson(json))
//       .toList();

//   for (int i = 0; i < parentSigninList.length; i++) {
//     courseNameList.add(parentSigninList[i].course_name);
//     batchNameList.add(parentSigninList[i].batch_name);
//   }
//   return courseNameList;
// }
  const OpdForm({Key key, @required this.patient})
      : assert(patient != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Opd Form'),
          backgroundColor: Colors.lightBlue,
        ),
        body: Builder(
          builder: (BuildContext context) {
            // ignore: missing_required_param
            return MyStatefulWidget();
          },
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key key, @required this.patient}) : super(key: key);

  final String patient;
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String gender;
  var iteams = [
    "Dushant Mali",
    "Dipak Mali",
    "Rohit Jadhav",
  ];
  List<Widget> _buildItems1() {
    return iteams
        .map((val) => MySelectionItem(
              title: val,
            ))
        .toList();
  }

  int selectedIndex1 = 0;
  var currectselect;
  String dropdownValue = 'Dushant';

  TimeOfDay _time = TimeOfDay.now();
  bool iosStyle = true;

  void onTimeChanged(TimeOfDay newTime) {
    setState(() {
      _time = newTime;
    });
  }

  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: Container(
        child: ListView(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
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
                  icon: const Icon(Icons.man),
                  labelText: "PATIENT",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(
                "\n\nDISEASE TYPE",
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
              ),
            ),
            DirectSelect(
                itemExtent: 50.0,
                selectedIndex: selectedIndex1,
                backgroundColor: Color.fromARGB(255, 255, 255, 255),
                child: MySelectionItem(
                  isForList: false,
                  title: iteams[selectedIndex1],
                ),
                onSelectedItemChanged: (index) {
                  setState(() {
                    selectedIndex1 = index;
                  });
                },
                items: _buildItems1()),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(
                "\n\nCase TYPE",
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
              ),
            ),
            DirectSelect(
                itemExtent: 50.0,
                selectedIndex: selectedIndex1,
                backgroundColor: Color.fromARGB(255, 255, 255, 255),
                child: MySelectionItem(
                  isForList: false,
                  title: iteams[selectedIndex1],
                ),
                onSelectedItemChanged: (index) {
                  setState(() {
                    selectedIndex1 = index;
                  });
                },
                items: _buildItems1()),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(
                "\n\n BODY SYSTEM",
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
              ),
            ),
            DirectSelect(
                itemExtent: 50.0,
                selectedIndex: selectedIndex1,
                backgroundColor: Color.fromARGB(255, 255, 255, 255),
                child: MySelectionItem(
                  isForList: false,
                  title: iteams[selectedIndex1],
                ),
                onSelectedItemChanged: (index) {
                  setState(() {
                    selectedIndex1 = index;
                  });
                },
                items: _buildItems1()),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
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
                  icon: const Icon(Icons.comment_rounded),
                  labelText: 'COMPLAINTS',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
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
                  icon: const Icon(Icons.numbers),
                  labelText: 'DIAGNOSIS',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
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
                  icon: const Icon(Icons.health_and_safety),
                  labelText: 'EXAMINATION FINDINGS',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
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
                  icon: const Icon(Icons.history),
                  labelText: 'HISTORY OF DRUG ALLERIES:',
                ),
              ),
            ),
            Text(
              "\nVisit Date\n",
              style: Theme.of(context).textTheme.headline6,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: DateTimePicker(
                initialValue: '',
                firstDate: DateTime(2000),
                lastDate: DateTime(2100),
                dateLabelText: 'Click to Select Date',
                onChanged: (val) => print(val),
                validator: (val) {
                  print(val);
                  return null;
                },
                onSaved: (val) => print(val),
              ),
            ),
            Text(
              "\nTiming\n",
              style: Theme.of(context).textTheme.headline6,
            ),
            Text(
              _time.format(context),
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline4,
            ),
            const SizedBox(height: 10),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.secondary,
              ),
              onPressed: () {
                Navigator.of(context).push(
                  showPicker(
                    context: context,
                    value: _time,
                    onChange: onTimeChanged,
                    minuteInterval: MinuteInterval.FIVE,
                    // Optional onChange to receive value as DateTime
                    onChangeDateTime: (DateTime dateTime) {
                      // print(dateTime);
                      debugPrint("[debug datetime]:  $dateTime");
                    },
                  ),
                );
              },
              child: const Text(
                "Click to Select Time",
                style: TextStyle(color: Colors.white),
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
                  // ignore: prefer_adjacent_string_concatenation
                  print("PATIENT NAME::" + '${widget.patient}');
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
              padding: EdgeInsets.all(10.0),
            )
          : Card(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              child: Stack(
                children: <Widget>[
                  _buildItem(context),
                  Align(
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
