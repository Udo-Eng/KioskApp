import 'package:flutter/material.dart';
import '../../screens/configuration/configuration.dart';

class ConfigurationLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFAFDFE),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Image.asset(
                  "assets/logo/logo.png",
                  width: 181,
                ),
                alignment: Alignment.center,
                padding: EdgeInsets.fromLTRB(0, 83, 0, 200),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 200),
                child: ConfigurationScreen(),
              ),
            ],
          ),
        ));
  }
}
