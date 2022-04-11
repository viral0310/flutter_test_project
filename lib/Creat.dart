import 'package:flutter/material.dart';

class Creat extends StatefulWidget {
  const Creat({Key key}) : super(key: key);

  @override
  _CreatState createState() => _CreatState();
}

class _CreatState extends State<Creat> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text(
            "Create A New Account"
        ),
      ),
    ));
  }
}
