import 'package:flutter/material.dart';
import '../../icons/svg.dart';

class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          margin: const EdgeInsets.fromLTRB(44, 0, 20, 35),
          child: const Text(
            'What would like to do today?',
            style: TextStyle(
              fontFamily: 'Avenir',
              fontSize: 36,
              fontWeight: FontWeight.w800,
              fontStyle: FontStyle.normal,
              letterSpacing: -0.5,
            ),
          ),
        ),
      ],
    );
  }
}
