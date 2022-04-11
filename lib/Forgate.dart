import 'package:flutter/material.dart';

class Forgot extends StatefulWidget {
  const Forgot({Key key}) : super(key: key);

  @override
  _ForgotState createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("Forgot Password"),
      ),
    ));
  }
}
