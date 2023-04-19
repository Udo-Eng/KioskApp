import "package:flutter/material.dart";
import '../../../widgets/payment/invoice/invoice_form.dart';

class InvoiceScreen extends StatelessWidget {

  const InvoiceScreen({super.key});

  

  @override
  Widget build(BuildContext context) {
    const String title = "Invoice Number";
    const String description =
        "Enter the invoice number to view the invoice and make payments";

    void onSubmitHandler() {
      // print("Form submitted");
    }

    // Added the  Border color to the screen 


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
