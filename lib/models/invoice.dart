// {
//   "InvoiceDate": "2023-04-28T10:13:00.44+01:00",
//   "Id": "83d73cb7-4582-496f-a001-3deb2fb23c6d",
//   "Number": "IN20270",
//   "PatientName": "John Doe",
//   "Gender": "Male",
//   "HospitalNumber": null,
//   "TotalAmount": 14000,
//   "Items": []
// }

enum Status{
  outstanding,
  paid,
  all,
}


// ignore: non_constant_identifier_names
Map<Status,String> StatusMap = {
   Status.outstanding : "outstanding",
   Status.all : "all",
   Status.paid : "paid",
};


class Invoice {

  final DateTime date;
  final DateTime time;
  final String invoiceNumber;
  final int items;
  final String amount;
  final String status;


  Invoice({
    required this.date,
    required this.time,
    required this.invoiceNumber,
    required this.items,
    required this.amount,
    required this.status,
  });
}

