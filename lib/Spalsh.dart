import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kartik/Login.dart';

class Splash extends StatefulWidget {
  const Splash({Key key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 5),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Login(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white24,
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Icon(
              Icons.thumb_up,
              size: 150,
              color: Colors.black,
            ),
            SizedBox(
              height: 70,
            ),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
