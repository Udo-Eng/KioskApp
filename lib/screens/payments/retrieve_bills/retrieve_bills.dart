import "package:flutter/material.dart";
import '../../../widgets/payment/invoice/invoice_form.dart';

class RetrieveBillsScreen extends StatelessWidget {
  const RetrieveBillsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const String title = " Patient Number";
    const String description =
        "Enter the patient number to view all bill invoice under the patient’s name and make payments too ";

    void onSubmitHandler() {
      // print("Form submitted");
    }

    return Container(
      width: 1075,
      height: 1700,
      decoration: const BoxDecoration(
          border: Border.symmetric(
        horizontal: BorderSide.none,
        vertical: BorderSide(
          color: Color.fromRGBO(90, 200, 250, 0.4),
          width: 20,
        ),
      )),
      margin: const EdgeInsets.all(10),
      child: InvoiceForm(
          title: title,
          description: description,
          onSubmit: onSubmitHandler,
        ),
    );
  }
}
