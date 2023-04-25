enum Status {
  outstanding,
  paid,
  all,
}

class Invoice {

  final DateTime date;
  final DateTime time;
  final String invoiceNumber;
  final int items;
  final double amount;
  final Status status;


  Invoice({
    required this.date,
    required this.time,
    required this.invoiceNumber,
    required this.items,
    required this.amount,
    required this.status,
  });
}
