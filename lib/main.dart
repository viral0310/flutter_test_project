import 'dart:js';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:kartik/Data.dart';
import 'package:kartik/Forgate.dart';
import 'package:kartik/Home.dart';
import 'package:kartik/Login.dart';
import 'package:kartik/Spalsh.dart';

import 'Creat.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {

        '/':(context)=>Splash(),
        '/Login':(context)=>Login(),
        '/Forgot': (context)=>Forgot(),
        '/Creat': (context)=>Creat(),
        '/Home': (context)=>Home(),
        '/Data': (context)=>Data(),

      },
    ),
  );
}