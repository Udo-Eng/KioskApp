import 'package:flutter/material.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 687,
      height: 665,
      child: Column(
        children: [
          const SizedBox(
            width: 253,
            height: 214,
          ),
          const Text(
            "Payment Successful!",
            style: TextStyle(
              color: Color.fromRGBO(7, 27, 43, 1),
              fontSize: 34,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: const TextSpan(
                  style: TextStyle(
                    fontFamily: "Avenir",
                    color: Color.fromRGBO(84, 87, 102, 1),
                    fontSize: 23,
                    fontWeight: FontWeight.w500,
                  ),
                  children: [
                    TextSpan(text: "You have successfully paid the sum of"),
                    TextSpan(
                      text: " ₦16,640.00 ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(41, 43, 51, 1)),
                    ),
                    TextSpan(text: "from ")
                  ],
                ),
              ),
              const Text(
                "your Wallet. Please check your mail for your receipt.",
                style: TextStyle(
                  fontFamily: "Avenir",
                  color: Color.fromRGBO(84, 87, 102, 1),
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(height: 130),
          GestureDetector(
            onTap: () {},
            child: const Center(
              child: Text(
                'Go back',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  decorationColor: Color(0xff1B88DF),
                  color: Color(0xff1B88DF),
                  fontFamily: 'Avenir',
                  fontStyle: FontStyle.normal,
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
