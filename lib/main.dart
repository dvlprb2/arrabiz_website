import 'package:arrabiz_website/AppTheme.dart';
import 'package:arrabiz_website/pages/landing.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Arrabiz',
      theme: AppTheme.themeData,
      home: LandingPage(),
    );
  }
}
