// ignore_for_file: prefer_const_constructors
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;
import 'package:ohctech/models/patient.dart';
import 'package:ohctech/pages/patient_details_opd.dart';
import 'package:ohctech/widgets/drawer.dart';
import 'package:ohctech/widgets/patient_widget_injury.dart';

import 'package:shimmer/shimmer.dart';

class ApprovedInjury extends StatefulWidget {
  @override
  _ApprovedInjuryState createState() => _ApprovedInjuryState();
}

class _ApprovedInjuryState extends State<ApprovedInjury> {
  Patient patient;
  final _baseUrl = 'http://103.196.222.49:85/jsw/approved_injury_list_new.php';
  int _page = 0;

  final int _limit = 10;

  bool _hasNextPage = true;

  bool _isFirstLoadRunning = false;

  bool _isLoadMoreRunning = false;

  List _posts = [];
  void _firstLoad() async {
    setState(() {
      _isFirstLoadRunning = true;
    });
    try {
      final res =
          await http.get(Uri.parse("$_baseUrl?_page=$_page&_limit=$_limit"));
      setState(() {
        _posts = json.decode(res.body);
        print(_posts);
      });
    } catch (err) {
      if (kDebugMode) {
        print('Something went wrong');
      }
    }
    setState(() {
      _isFirstLoadRunning = false;
    });
    PatientModel.patients = List.from(_posts)
        .map<Patient>((patient) => Patient.fromMap(patient))
        .toList();
  }

  // This function will be triggered whenver the user scroll
  // to near the bottom of the list view
  void _loadMore() async {
    if (_hasNextPage == true &&
        _isFirstLoadRunning == false &&
        _isLoadMoreRunning == false &&
        _controller.position.extentAfter < 300) {
      setState(() {
        _isLoadMoreRunning = true; // Display a progress indicator at the bottom
      });
      _page += 10; // Increase _page by 1
      try {
        final res =
            await http.get(Uri.parse("$_baseUrl?_page=$_page&_limit=$_limit"));

        final List fetchedPosts = json.decode(res.body);
        if (fetchedPosts.isNotEmpty) {
          setState(() {
            _posts.addAll(fetchedPosts);
            print(_posts);
          });
        } else {
          // This means there is no more data
          // and therefore, we will not send another GET request
          setState(() {
            _hasNextPage = false;
          });
        }
      } catch (err) {
        if (kDebugMode) {
          print('Something went wrong! + No DATA');
          // _isLoadMoreRunning = true;
        }
      }
      PatientModel.patients = List.from(_posts)
          .map<Patient>((patient) => Patient.fromMap(patient))
          .toList();
      setState(() {
        _isLoadMoreRunning = false;
      });
    }
  }

  // The controller for the ListView
  ScrollController _controller;

  @override
  void initState() {
    super.initState();
    _firstLoad();
    _controller = ScrollController()..addListener(_loadMore);
  }

  @override
  void dispose() {
    _controller.removeListener(_loadMore);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("APPROVED INJURY LIST"),
      ),

      // body: _isFirstLoadRunning
      //     ? const Center(
      //         child: CircularProgressIndicator(),
      //       )
      //     : Column(
      //         children: [
      //           Expanded(
      //             child: InkWell(
      //               onTap: () => Navigator.push(
      //                   context,
      //                   MaterialPageRoute(
      //                       builder: (context) =>
      //                           PatientDetailsOpd(patient: patient))),
      //               child: ListView.builder(
      //                 controller: _controller,
      //                 itemCount: _posts.length,
      //                 itemBuilder: (_, index) => Card(
      //                   margin: const EdgeInsets.symmetric(
      //                       vertical: 8, horizontal: 10),
      //                   child: ListTile(
      //                     title: Text(_posts[index]['patient_name']),
      //                     subtitle: Text(_posts[index]['emp_code']),
      //                   ),
      //                 ),
      //               ),
      //             ),
      //           ),

      //           // when the _loadMore function is running
      //           if (_isLoadMoreRunning == true)
      //             const Padding(
      //               padding: EdgeInsets.only(top: 10, bottom: 40),
      //               child: Center(
      //                 child: CircularProgressIndicator(),
      //               ),
      //             ),

      //           // When nothing else to load
      //           if (_hasNextPage == false)
      //             Container(
      //               padding: const EdgeInsets.only(top: 30, bottom: 40),
      //               color: Colors.amber,
      //               child: const Center(
      //                 child: Text('You have fetched all of the content'),
      //               ),
      //             ),
      //         ],
      //       ),

      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: _isFirstLoadRunning
              ? Center(
                  child: Shimmer.fromColors(
                    baseColor: Color.fromARGB(255, 148, 204, 242),
                    highlightColor: Colors.grey[100],
                    direction: ShimmerDirection.ltr,
                    child: ListView.builder(
                      itemBuilder: (_, __) => Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              width: 48.0,
                              height: 50.0,
                              color: Colors.white,
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    width: double.infinity,
                                    height: 8.0,
                                    color: Colors.white,
                                  ),
                                  const Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 2.0),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    height: 8.0,
                                    color: Colors.white,
                                  ),
                                  const Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 2.0),
                                  ),
                                  Container(
                                    width: 40.0,
                                    height: 10.0,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      itemCount: 20,
                    ),
                  ),
                )
              : Column(children: [
                  Expanded(
                      child: ListView.builder(
                    controller: _controller,
                    itemCount: PatientModel.patients.length,
                    itemBuilder: (context, index) {
                      final patient = PatientModel.patients[index];
                      return InkWell(
                          child: PatientWidget(
                        patient: patient,
                      ));
                    },
                  )),
                  if (_isLoadMoreRunning == true)
                    SizedBox(
                      width: 200.0,
                      height: 100.0,
                      child: Shimmer.fromColors(
                        baseColor: Colors.red,
                        highlightColor: Colors.yellow,
                        child: Center(child:Text(
                          'Loading...',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        ),
                      ),
                    ),


                  // When nothing else to load
                  if (_hasNextPage == false)
                    Container(
                      padding: const EdgeInsets.only(top: 30, bottom: 40),
                      color: Colors.amber,
                      child: const Center(
                        child: Text('You have fetched all of the content'),
                      ),
                    ),
                ])
          // ignore: prefer_const_constructors

          ),
      drawer: MyDrawer(
        text: '',
      ),
    );
  }
}
