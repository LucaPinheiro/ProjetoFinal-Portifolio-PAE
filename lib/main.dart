import 'package:flutter/material.dart';
import 'package:projeto_final/pages/home_page.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.blue,
        hintColor: Colors.blueAccent,
      ),
      home: HomePage(),
    );
  }
}
