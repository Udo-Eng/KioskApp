import 'package:flutter/material.dart';
import '../shared/header_widget.dart';
import '../../constants/routes.dart';

class AppointmentLayout extends StatelessWidget {
  Widget childWidget;
  AppointmentLayout({super.key, required this.childWidget});

  @override
  Widget build(BuildContext context) {
    goBackToHomePage() {
      Navigator.pushNamed(context, HOME_SCREEN_ROUTE);
    }

    return Scaffold(
        backgroundColor: Color(0xFFFAFDFE),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: HeaderWidget(
                  headerTitle: "Patient Profile",
                  onBackButtonPress: goBackToHomePage,
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
