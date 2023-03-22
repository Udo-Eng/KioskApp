import 'package:flutter/material.dart';
import '../../constants/routes.dart';

class ConfigurationSuccessScreen extends StatelessWidget {
  const ConfigurationSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    _handleGoBackToHomePage() {
      Navigator.pushNamed(context, HOME_SCREEN_ROUTE);
    }

    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 26),
            child: const Text(
              "Successful!",
              style: TextStyle(
                fontFamily: 'Avenir',
                fontSize: 34,
                fontWeight: FontWeight.w800,
                fontStyle: FontStyle.normal,
                color: Color(0xff071B2B),
              ),
            ),
          ),
          Container(
            child: const Text(
              "Your kiosk configuration set-up was done successfully",
              style: TextStyle(
                fontFamily: 'Avenir',
                fontSize: 24,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal,
                color: Color(0xff3E414C),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 177, 0, 26),
            child: TextButton(
              onPressed: _handleGoBackToHomePage,
              child: const Text(
                'Go back to Home',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  decorationColor: Color(0xff1B88DF),
                  fontFamily: 'Avenir',
                  fontStyle: FontStyle.normal,
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                  letterSpacing: -0.25,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
