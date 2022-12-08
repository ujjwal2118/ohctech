// ignore_for_file: prefer_const_constructors, duplicate_import, unnecessary_import, use_build_context_synchronously, sort_child_properties_last, unused_import

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';
import 'package:internet_popup/internet_popup.dart';
import 'dart:convert';
import 'package:mysql1/mysql1.dart';
import 'package:ohctech/widgets/drawer.dart';
import 'package:tap_debouncer/tap_debouncer.dart';
import 'package:flutter_offline/flutter_offline.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:show_up_animation/show_up_animation.dart';
import 'dart:async';
import 'dart:io';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import '../utils/routes.dart';

// ignore: use_key_in_widget_constructors
class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();

  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController code = TextEditingController();

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
      } else {
        _isOnline = false;
      }

    });
  }



  Future<dynamic> login(BuildContext context) async {

    if (username.text == "" && password.text == "" && code.text == "") {
      Fluttertoast.showToast(
        msg: 'Please Enter Username And Password',
        backgroundColor: Colors.black,
      );
      return "enter";
    }

    var url = 'http://103.196.222.49:85/jsw/login.php';
    http.Response response = await http.post(Uri.parse(url), body: {
      "username": username.text,
      "password": password.text,
      "code": code.text,
    });
    var map;
    try {
      map = json.decode(response.body);
    } catch (e) {
      print(e);
    }
    if (map == "success") {
      Fluttertoast.showToast(
        msg: 'Login Successfully',
        backgroundColor: Colors.black,
      );
      if (_formKey.currentState.validate()) {
        setState(() {
          changeButton = true;
        });

        await Future.delayed(Duration(seconds: 1));
        await Navigator.pushNamed(context, MyRoutes.homeRoute);

        setState(() {
          changeButton = false;
        });
      }

      String userName = username.text;
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MyDrawer(
              text: userName,
            ),
          ));
    } else {
      print(map);
      username.text = "";
      password.text = "";
      code.text = "";
      Fluttertoast.showToast(
        msg: 'Invalid Credentials',
        backgroundColor: Colors.black,
      );
      print("invalid username password");
      return;
    }
  }

  moveToHome(BuildContext context) async {}

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/logo.jpeg",
                  fit: BoxFit.contain,
                  height: 200,
                  width: 300,
                ),
                Text(
                  "Welcome",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0),
                  child: Column(children: [
                    TextFormField(
                      controller: username,
                      decoration: InputDecoration(
                        hintText: "Enter Username",
                        labelText: "Username",
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Username cannot be empty!";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      controller: password,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Password cannot be empty!";
                        } else if (value.length < 6) {
                          return "Password length should be atleast 6 characters!";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      controller: code,
                      decoration: InputDecoration(
                        hintText: "Enter code",
                        labelText: "Company Code",
                      ),
                    ),
                    SizedBox(
                      height: 60.0,
                    ),
                    InkWell(
                      onTap: () => login(context),
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: changeButton ? 50 : 150,
                        height: 50,
                        alignment: Alignment.center,
                        child: changeButton
                            ? Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                        decoration: BoxDecoration(
                            color: Colors.lightBlue,
                            borderRadius:
                                BorderRadius.circular(changeButton ? 50 : 8)),
                      ),
                    ),
                  ]),
                )
              ],
            )),
      ),
    );
  }
}
