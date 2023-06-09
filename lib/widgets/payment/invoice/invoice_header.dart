import 'package:flutter/material.dart';
import './invoice_details.dart';


class InvoiceHeader extends StatelessWidget {

 
  final Map<String,dynamic> invoiceItem;
 

  const InvoiceHeader({required this.invoiceItem, super.key});


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 987,
      child: Column(
        children:  [
         const SizedBox(
            height: 66,
          ),
           Center(
            child: Text(
              invoiceItem["invoiceNumber"],
              style: const TextStyle(
                fontFamily: "Avenir",
                fontSize: 44,
                fontWeight: FontWeight.w800,
                fontStyle: FontStyle.normal,
                color: Color.fromRGBO(220, 222, 230, 1),
              ),
            ),
          ),
          const SizedBox(height: 67),
          InvoiceDetails(invoiceDetails : invoiceItem),
           const SizedBox(height: 130)
        ],
      ),
    );
  }
}





