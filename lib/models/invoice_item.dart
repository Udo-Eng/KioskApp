
class InvoiceItem {
  final String itemName;
  final double total;
  final double amount;
  final int  quantity; 
 

  InvoiceItem({
    required this.total,
    required this.amount,
    required this.itemName,
    required this.quantity,
  });
}
