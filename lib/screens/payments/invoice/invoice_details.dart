import "package:flutter/material.dart";
import '../../../widgets/payment/invoice/invoice_header.dart';
import '../../../widgets/payment/invoice/invoice_table.dart';

class InvoiceDetails extends StatelessWidget {
  const InvoiceDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(247, 249, 250, 1),
      padding: const EdgeInsets.all(22),
      width: 1000,
      child: Column(
        children: [
          const InvoiceHeader(),
          InvoiceTable(),
        ],
      ),
    );
  }
}
