import 'package:flutter/material.dart';
import 'home screen.dart';
import 'firstScreen.dart';

void main() => runApp(MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => homepage(),
        "/home": (context) => firstpage(),
      },
    ));
