import 'package:flutter/material.dart';
import 'package:projeto_final/pages/home_page.dart';
import 'package:projeto_final/widgets/custom_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
