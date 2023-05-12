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

