import 'package:flutter/material.dart';

class ConfigurationLayout extends StatelessWidget {
  Widget childWidget;
  ConfigurationLayout({required this.childWidget});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFAFDFE),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.fromLTRB(0, 83, 0, 200),
                child: Image.asset(
                  "assets/logo/logo.png",
                  width: 181,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 200),
                child: childWidget,
              ),
            ],
          ),
        ));
  }
}
