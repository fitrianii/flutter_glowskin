import 'dart:async';

import 'package:flutter/material.dart';
import 'package:glowskin_project/constans.dart';
import 'package:glowskin_project/users/landingpage2.dart' as users;

class LauncherPage2 extends StatefulWidget {
  @override
  State<LauncherPage2> createState() => _LauncherPage2State();
}

class _LauncherPage2State extends State<LauncherPage2> {
  @override
  void initState() {
    super.initState();
    startLaunching();
  }

  @override
  void dispose() {
    super.dispose();
  }

  startLaunching() async {
    var duration = const Duration(seconds: 2);
    return new Timer(duration, () {
      Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (_) {
        return new users.LandingPage2();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(0)),
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.grey.shade200,
              offset: Offset(2, 4),
              blurRadius: 5,
              spreadRadius: 2)
        ],
        color: Palette.bg1,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Center(
            child: new Image.asset(
              "assets/logo.png",
              height: 390,
              width: 390,
            ),
          )
        ],
      ),
    ));
  }
}
