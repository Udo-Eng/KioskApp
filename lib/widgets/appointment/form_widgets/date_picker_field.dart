import 'package:flutter/material.dart';
import '../../../icons/svg.dart';

class DatePickerField extends StatefulWidget {
  final String? selectedDate;
  final VoidCallback showDatePicker;

  const DatePickerField(
      {this.selectedDate, required this.showDatePicker, super.key});

  @override
  State<DatePickerField> createState() => _DatePickerFieldState();
}

class _DatePickerFieldState extends State<DatePickerField> {
  @override
  Widget build(BuildContext context) {
    String displayText = widget.selectedDate ?? "Select date";

    return GestureDetector(
      child: Container(
        width: 673,
        height: 60,
        padding: const EdgeInsets.fromLTRB(15, 21, 20, 15),
        decoration: BoxDecoration(
          border: Border.all(
            width: 0.5,
            color: const Color.fromRGBO(89, 165, 223, 0.4),
          ),
          borderRadius: BorderRadius.circular(2),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              displayText,
              style: const TextStyle(
                fontSize: 18,
                fontFamily: 'Avenir',
                fontWeight: FontWeight.w400,
                color: Color(0xff6B6F80),
                fontStyle: FontStyle.normal,
                letterSpacing: -0.25,
              ),
            ),
            DatePickerIcon(
                width: 20,
                height: 20,
                color: const Color.fromRGBO(169, 169, 169, 1))
          ],
        ),
      ),
    );
  }
}
