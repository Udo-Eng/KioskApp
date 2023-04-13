import 'package:flutter/material.dart';
import '../shared/header_widget.dart';
import '../../constants/routes.dart';

class WalletLayout extends StatelessWidget {
  Widget childWidget;
  WalletLayout({super.key, required this.childWidget});

  @override
  Widget build(BuildContext context) {
    goBackToHomePage() {
      Navigator.pushNamed(context, HOME_SCREEN_ROUTE);
    }

    return Scaffold(
      backgroundColor: const Color(0xFFFAFDFE),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: HeaderWidget(
                headerTitle: "E-Wallet",
                onBackButtonPress: goBackToHomePage,
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 200),
              child: childWidget,
            ),
          ],
        ),
      ),
    );
  }
}
