import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_01/screens/home.dart';
import 'package:flutter_01/screens/news.dart';
//import 'package:flutter_01/screens/weather.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter',
      theme: ThemeData(textTheme: GoogleFonts.openSansTextTheme()),
      home: HomePage(),
    );
  }
}
