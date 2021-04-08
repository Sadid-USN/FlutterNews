import 'package:flutter/material.dart';
import 'package:flutter_news/views/home.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        textTheme: GoogleFonts.ptSerifCaptionTextTheme(
        Theme.of(context).textTheme),
      ),
      home: Home(),
    );
  }
}
