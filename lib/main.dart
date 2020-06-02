import 'package:flutter/material.dart';
import 'package:xylophone/Homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xylophone',
       debugShowCheckedModeBanner: false,
      home: XylophonePlayer(),
      theme: ThemeData(
        brightness: Brightness.dark,
      
    )
    );
  }
}
