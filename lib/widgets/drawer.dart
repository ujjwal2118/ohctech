// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ohctech/pages/login.dart';
import 'package:ohctech/utils/routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyDrawer extends StatelessWidget {
  final String text;

  // receive data from the FirstScreen as a parameter
  MyDrawer({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_declarations
    logout(BuildContext context) async {
      SharedPreferences pref = await SharedPreferences.getInstance();
      pref.remove("username");
      pref.remove("password");
      pref.remove("code");
      // ignore: use_build_context_synchronously
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) {
        return LoginPage();
      }));

      Fluttertoast.showToast(
        msg: 'You are logged out!!',
        backgroundColor: Colors.black,
      );

      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.loginRoute);
    }

    moveToHome(BuildContext context) async {
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
    }

    return Drawer(
      child: Container(
        color: Colors.lightBlue,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: Text(
                    text,
                    style: TextStyle(color: Colors.white),
                  ),
                  // ignore: prefer_const_constructors
                  accountEmail: Text(
                    "",
                    style: TextStyle(color: Colors.white),
                  ),
                  currentAccountPicture: Image.asset("assets/images/user.png"),
                )),
            ListTile(
              onTap: () => moveToHome(context),
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            // ListTile(
            //   leading: Icon(
            //     CupertinoIcons.profile_circled,
            //     color: Colors.white,
            //   ),
            //   title: Text(
            //     "Account",
            //     textScaleFactor: 1.2,
            //     style: TextStyle(color: Colors.white),
            //   ),
            // ),
            ListTile(
              onTap: () => logout(context),
              leading: Icon(
                CupertinoIcons.escape,
                color: Colors.white,
              ),
              title: Text(
                "Logout",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
