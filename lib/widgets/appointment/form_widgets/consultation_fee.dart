import 'package:flutter/material.dart';

class ConsultationFee extends StatelessWidget {
  const ConsultationFee({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 672,
      height: 88,
      padding: const EdgeInsets.fromLTRB(16, 15, 44, 15),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(122, 188, 240, 0.12),
        border: Border.all(
          color: const Color.fromRGBO(8, 105, 182, 1),
        ),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const <Widget>[
          Text(
            "Consultation Fee",
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'Avenir',
              fontWeight: FontWeight.w500,
              color: Color.fromRGBO(8, 105, 182, 1),
              fontStyle: FontStyle.normal,
              letterSpacing: -0.25,
            ),
          ),
          Text(
            "₦1,500",
            style: TextStyle(
              fontSize: 24,
              fontFamily: 'Avenir',
              fontWeight: FontWeight.w800,
              color: Color.fromRGBO(8, 105, 182, 1),
              fontStyle: FontStyle.normal,
              letterSpacing: -0.25,
            ),
          )
        ],
      ),
    );
  }
}
