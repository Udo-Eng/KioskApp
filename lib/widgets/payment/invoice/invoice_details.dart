import "package:flutter/material.dart";
import "package:kiosk_desktop_app/widgets/payment/invoice/description_data.dart";

class InvoiceDetails extends StatelessWidget {
  final Map invoiceDetails;
  const InvoiceDetails({required this.invoiceDetails, super.key});


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DescriptionData(
              description: "Patient’s Name:",
              value: invoiceDetails["patientName"],
            ),
            const DescriptionData(
              description: "Patient's ID:",
              value: "F8734508453",
            ),
            const DescriptionData(
              description: "Tel:",
              value: "08023451876",
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DescriptionData(
              description: "Invoice Number:",
              value: invoiceDetails["invoiceNumber"],
            ),
            const DescriptionData(
              description: "Physician’s name:",
              value: "Dr Eudy",
            ),
            DescriptionData(
              description: "Date:",
              value: invoiceDetails["date"],
            ),
          ],
        ),
      ],
    );
  }
}
