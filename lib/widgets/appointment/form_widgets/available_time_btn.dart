import 'package:flutter/material.dart';

class AvailableTimeButton extends StatelessWidget {
  final String displayTime;
  const AvailableTimeButton({required this.displayTime, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(242, 246, 252, 0.93),
      width: 87,
      height: 40,
      child: Center(
        child: Text(
          displayTime,
          style: const TextStyle(
            fontSize: 16,
            fontFamily: 'Avenir',
            fontWeight: FontWeight.w500,
            color: Color.fromRGBO(29, 53, 72, 0.87),
            fontStyle: FontStyle.normal,
            letterSpacing: -0.25,
          ),
        ),
      ),
    );
  }
}
