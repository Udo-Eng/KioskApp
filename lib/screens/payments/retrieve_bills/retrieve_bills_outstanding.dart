import 'package:flutter/material.dart';
import '../../../widgets/payment/retrieve_bills/bills_description.dart';
import '../../../widgets/payment/retrieve_bills/bills_table.dart';

class RetrieveBillsOutStandingScreen extends StatelessWidget {
  const RetrieveBillsOutStandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          BillsDescription(),
          BillsTable(),
        ],
      ),
    );
  }
}
