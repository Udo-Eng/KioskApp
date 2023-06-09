import "package:flutter/material.dart";
import '../../../widgets/payment/invoice/invoice_header.dart';
import '../../../widgets/payment/invoice/invoice_table.dart';
import "package:intl/intl.dart";
import "package:kiosk_desktop_app/models/invoice_details.dart";


class InvoiceDetails extends StatelessWidget {
  const InvoiceDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final invoice = ModalRoute.of(context)!.settings.arguments as InvoiceDetailsModel;

  
    var headerData = {
      "patientName": invoice.patientName,
      "patientID": invoice.patientID,
      "invoiceNumber": invoice.invoiceNumber,
      "physicianName": invoice.physicianName,
      "tel": invoice.tel,
      "date": DateFormat.yMMMd().format(invoice.date),
    };


    return Container(
      color: const Color.fromRGBO(247, 249, 250, 1),
      padding: const EdgeInsets.all(22),
      width: 1000,
      child: Column(
        children:  [
          InvoiceHeader(invoiceItem: headerData),
          InvoiceTable(invoiceItem: invoice ),
        ],
      ),
    );
  }
}
