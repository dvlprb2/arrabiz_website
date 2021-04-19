import 'package:arrabiz_website/components/Features.dart';
import 'package:arrabiz_website/components/Footer.dart';
import 'package:arrabiz_website/components/Header.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: VStack(
            [
              Header(),
              SizedBox(height:  context.isMobile ? 50.0 : 200.0),
              Features(),
              SizedBox(height: context.isMobile ? 50.0 : 100.0),
              Footer()
            ],
            alignment: MainAxisAlignment.spaceBetween,
        ),
      ),
    );
  }
}
