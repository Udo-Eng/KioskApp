import 'package:flutter/material.dart';
import '../../shared/header_widget.dart';



class InvoiceLayout extends StatelessWidget {
  final Widget childWidget;
  final String title;
  final String navText;
  final VoidCallback onBackButtonPress;

  const InvoiceLayout({required this.childWidget,required this.title,required this.navText,required this.onBackButtonPress,super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xFFFAFDFE),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // AppHeader(title: title, navText: navText,),
            HeaderWidget(headerTitle : title,onBackButtonPress: onBackButtonPress,navText: navText,),
            SingleChildScrollView(
              child: childWidget,
            ),
          ],
        ),
      ),
    );
  }
}
