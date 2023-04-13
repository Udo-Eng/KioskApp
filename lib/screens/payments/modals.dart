import 'package:flutter/material.dart';
import "../../widgets/payment/modals/success_page.dart";

class ModalScreen extends StatelessWidget {
  const ModalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Modal Screen"),),
      body: const SuccessPage(),
    );
  }
}