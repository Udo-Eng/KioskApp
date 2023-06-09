import "./invoice_item.dart";


// Request Url https://switch.healthstation.ng/api/Lookup/IN20270/invoice?application=HmisPay&hospitalId=D8D8538E-4911-4748-A93B-FC427F316CF3

// Sample responds from server 
// {
//   "InvoiceDate": "2023-04-28T10:13:00.44+01:00",
//   "Id": "83d73cb7-4582-496f-a001-3deb2fb23c6d",
//   "Number": "IN20270",
//   "PatientName": "John Doe",
//   "Gender": "Male",
//   "HospitalNumber": null,
//   "TotalAmount": 14000,
//   "Items": [
//     {
//       "Id": "dbb0457c-74b6-4db5-a0bb-96e6285ce74d",
//       "InvoiceNumber": null,
//       "TransactionDate": "0001-01-01T00:00:00+01:00",
//       "Name": "Consultancy CYTOLOGY (Path/C/01)",
//       "NetAmount": 9000,
//       "Quantity": 1,
//       "Price": 9000,
//       "GrossAmount": 0,
//       "DiscountAmount": 0,
//       "WaivedAmount": 0
//     },
//     {
//       "Id": "560014af-5ffe-44ac-a516-d7326ea088e4",
//       "InvoiceNumber": null,
//       "TransactionDate": "0001-01-01T00:00:00+01:00",
//       "Name": "FNAC/FNAB (CYTOLOGY) (CONSULTANCY)",
//       "NetAmount": 5000,
//       "Quantity": 1,
//       "Price": 5000,
//       "GrossAmount": 0,
//       "DiscountAmount": 0,
//       "WaivedAmount": 0
//     }
//   ]
// }


enum Status {
  outstanding,
  paid,
  all,
}

class InvoiceDetailsModel {
  final String patientName;
  final String  patientID;
  final String invoiceNumber;
  final String  physicianName;
  final double total;
  final double  grandTotal;
  final double discountAmount;
  final String   tel;
  final DateTime date;
  final DateTime time;
  final List<InvoiceItem>  items; 
 

  InvoiceDetailsModel({
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



