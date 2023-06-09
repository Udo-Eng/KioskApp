import 'package:flutter/material.dart';

class ScheduleSuccess extends StatelessWidget {

  final String amount;
  final Function cancelModal;

  const ScheduleSuccess({required this.amount, required this.cancelModal ,super.key});



  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(37),
      width: 700,
      height: 500,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.symmetric(vertical: 10),
            width: 630,
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Color.fromRGBO(208, 212, 217, 1),
                  width: 0.7,
                ),
              ),
            ),
            child: const Center(
              child: Text(
                "Do you wish to continue?",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(7, 27, 43, 1),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 45,
          ),
          RichText(
            text:  TextSpan(
              style: const TextStyle(
                color: Color.fromRGBO(52, 52, 52, 1),
                fontFamily: "Avenir",
              ), //style for all textspan
              children: [
                TextSpan(
                  text: " $amount ",
                  style: const TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const TextSpan(
                  text: "will be deducted from your E-wallet balance.",
                  style: TextStyle(fontSize: 22),
                ),
              ],
            ),
          ),
          const Text(
            "  Do you still wish to continue?",
            style: TextStyle(
              color: Color.fromRGBO(52, 52, 52, 1),
              fontSize: 22,
              fontFamily: "Avenir",
            ),
          ),
          const SizedBox(height: 100),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OutlinedButton(
                style: TextButton.styleFrom(
                  fixedSize: const Size(146, 60),
                  foregroundColor: const Color.fromRGBO(189, 189, 189, 1),
                  textStyle: const TextStyle(
                      fontSize: 22,
                      fontFamily: "Avenir",
                      fontWeight: FontWeight.w800),
                ),
                onPressed: () { cancelModal(); },
                child: const Text("Cancel"),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  fixedSize: const Size(189, 60),
                  foregroundColor: const Color.fromRGBO(255, 255, 255, 1),
                  backgroundColor: const Color.fromRGBO(27, 136, 223, 1),
                  textStyle: const TextStyle(
                      fontSize: 22,
                      fontFamily: "Avenir",
                      fontWeight: FontWeight.w800),
                ),
                onPressed: () {},
                child: const Text('Yes, contiune'),
              )
            ],
          )
        ],
      ),
    );
  }
}
