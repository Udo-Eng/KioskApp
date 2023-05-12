import "package:flutter/material.dart";
import "../../../constants/routes.dart";
import '../../../widgets/payment/invoice/invoice_form.dart';

class RetrieveBillsScreen extends StatelessWidget {
  const RetrieveBillsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const String title = " Patient Number";
    double width = MediaQuery.of(context).size.width;
    const String description =
        "Enter the patient number to view all bill invoice under the patient’s name and make payments too ";

    void onSubmitHandler(BuildContext context) {
       Navigator.of(context).pushNamed(PAYMENT_RETRIEVE_BILLS_ALL);
    }

    return Container(
      width: width,
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
          hintText: 'Enter Patient number',
        ),
    );
  }
}
