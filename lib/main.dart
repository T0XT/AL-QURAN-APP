import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'firstScreen.dart';
import 'routemap.dart';

void main() {
  runApp(const Myapp());
}

//root my app th AL-Qruan
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return MaterialApp(
      home: firstpage(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
