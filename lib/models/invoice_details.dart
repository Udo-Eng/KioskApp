import "./invoice_item.dart";

enum Status {
  outstanding,
  paid,
  all,
}

class InvoiceDetails {
  final String patientName;
  final String  patientID;
  final String invoiceNumber;
  final String  physicianName;
  final String total;
  final String  grandTotal;
  final double discountAmount;
  final String   tel;
  final DateTime date;
  final DateTime time;
  final List<InvoiceItem>  items; 
 

  InvoiceDetails({
    required this.patientName,
    required this.patientID,
    required this.invoiceNumber,
    required this.physicianName,
    required this.tel,
    required this.date,
    required this.time,
    required this.items,
    required this.grandTotal,
    required this.discountAmount,
    required this.total,
  });
}
