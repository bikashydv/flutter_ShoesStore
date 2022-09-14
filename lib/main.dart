import 'package:flutter/material.dart';
import 'package:uifirst/screens/button_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FLutter Showes sale app',
      theme: ThemeData(primarySwatch: Colors.blue),
    home: const Button(),
       
    );
  }
}
