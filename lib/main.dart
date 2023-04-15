import 'package:flutter/material.dart';
import 'package:urban_clean/select_location.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Urban Clean',
      theme: ThemeData(

        primarySwatch: Colors.green,
      ),
      home: const SelectLocation()
    );
  }
}
