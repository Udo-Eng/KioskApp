import 'package:flutter/material.dart';
import './available_time_btn.dart';

class AvailableTime extends StatefulWidget {
  const AvailableTime({super.key});

  @override
  State<AvailableTime> createState() => _AvailableTimeState();
}

class _AvailableTimeState extends State<AvailableTime> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
          width: 650,
          height: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const Text(
                "Available  Time",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Avenir',
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  fontStyle: FontStyle.normal,
                  letterSpacing: -0.25,
                ),
              ),
             const SizedBox(height: 18),
              // Top Time  BUTTONS
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  AvailableTimeButton(displayTime: "9:00 AM"),
                  AvailableTimeButton(displayTime: "9:30 AM"),
                  AvailableTimeButton(displayTime: "10:00 AM"),
                  AvailableTimeButton(displayTime: "10:30 AM"),
                  AvailableTimeButton(displayTime: "11:00 AM"),
                  AvailableTimeButton(displayTime: "11:30 AM"),
                ],
              ),
             const SizedBox(height: 27),
              // Buttom  Time  BUTTONS
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  AvailableTimeButton(displayTime: "12:00 PM"),
                  AvailableTimeButton(displayTime: "12:30 PM"),
                  AvailableTimeButton(displayTime: "1:00 PM"),
                  AvailableTimeButton(displayTime: "1:30 PM"),
                  AvailableTimeButton(displayTime: "2:00 PM"),
                  AvailableTimeButton(displayTime: "2:30 PM"),
                ],
              ),
            ],
          )),
    );
  }
}
