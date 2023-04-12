import 'package:flutter/material.dart';
import '../../../widgets/payment/retrieve_bills/bills_description.dart';
import '../../../widgets/payment/retrieve_bills/bills_table.dart';

class RetrieveBillsAllScreen extends StatelessWidget {
  const RetrieveBillsAllScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          BillsDescription(),
          BillsTable(tableTitle: "All Invoices",),
        ],
      ),
    );
  }
}