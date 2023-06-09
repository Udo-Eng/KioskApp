import "package:flutter/material.dart";
import "../modals/payment_option.dart";
import "package:kiosk_desktop_app/models/invoice_details.dart";
import 'package:intl/intl.dart';
import "package:kiosk_desktop_app/models/invoice_item.dart";

class InvoiceTable extends StatefulWidget {
  final InvoiceDetailsModel invoiceItem;
  const InvoiceTable({required this.invoiceItem, super.key});

  @override
  State<InvoiceTable> createState() => _InvoiceTableState();
}

class _InvoiceTableState extends State<InvoiceTable> {
  int counter = 0;
  String totalValue = "";
  final numberFormatter = NumberFormat("#,##0.00", "en_US");

  void closePaymentOptionsModal(BuildContext context) {
    Navigator.of(context).pop();
  }

  void displayPaymentOptionsModal(BuildContext context, String amount) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: PaymentOption(
            cancelModal: () => closePaymentOptionsModal(context),
            amount: amount,
          ),
        );
      },
    );
  }

  final tableHeader = ['Item', 'Amount', 'Qty', 'Total'];

  List<InvoiceItem> lists = [];

// Initialize the state of Invoicedetails Table
  @override
  void initState() {
    super.initState();

    lists = widget.invoiceItem.items;

    totalValue =
        "${String.fromCharCode(0x20A6)}${numberFormatter.format(widget.invoiceItem.grandTotal)}";
  }

  @override
  Widget build(BuildContext context) {
    const BorderSide headerBorder = BorderSide(
      width: 1.77812,
      color: Color.fromRGBO(228, 234, 240, 1),
    );

    return SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 66, horizontal: 22),
      child: SizedBox(
          width: 1000,
          child: Column(
            children: [
              const Center(
                child: Text(
                  "Payment Items",
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(52, 52, 52, 1),
                  ),
                ),
              ),
              const SizedBox(
                height: 17,
              ),
              Container(
                width: 987,
                color: Colors.white,
                child: Column(
                  children: [
                    // TABLE HEADER ROW
                    Table(
                        columnWidths: const <int, TableColumnWidth>{
                          // 0: IntrinsicColumnWidth(),
                          // 1: FlexColumnWidth(),
                          1: FixedColumnWidth(300),
                        },
                        border: const TableBorder(
                          top: headerBorder,
                          right: headerBorder,
                          bottom: headerBorder,
                          left: headerBorder,
                        ),
                        children: [
                          TableRow(
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(18),
                                child: Text(
                                  "S/N",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Avenir",
                                  ),
                                ),
                              ),
                              ...tableHeader
                                  .map((header) => Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 15),
                                        child: Text(
                                          header,
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.0,
                                            fontFamily: "Avenir",
                                          ),
                                        ),
                                      ))
                                  .toList(),
                            ],
                          ),
                        ]),

                    // TABLE BODY

                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Table(
                        columnWidths: const <int, TableColumnWidth>{
                          // 0: IntrinsicColumnWidth(),
                          // 1: FlexColumnWidth(),
                          1: FixedColumnWidth(300),
                        },
                        border: const TableBorder(
                          horizontalInside: BorderSide(
                            width: 0.5,
                            color: Color.fromRGBO(
                              187,
                              191,
                              204,
                              1,
                            ),
                          ),
                          bottom: BorderSide(
                            width: 0.5,
                            color: Color.fromRGBO(
                              187,
                              191,
                              204,
                              1,
                            ),
                          ),
                        ),
                        children: [
                          for (var item in lists)
                            TableRow(children: [
                              Padding(
                                padding: const EdgeInsets.all(18),
                                child: Text(
                                  "${++counter}",
                                  style: const TextStyle(
                                    color: Color.fromRGBO(84, 87, 102, 1),
                                    fontSize: 20,
                                    fontFamily: "Avenir",
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 25),
                                child: Text(
                                  item.itemName,
                                  style: const TextStyle(
                                    color: Color.fromRGBO(84, 87, 102, 1),
                                    fontSize: 20,
                                    fontFamily: "Avenir",
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 25),
                                child: Text(
                                  "${String.fromCharCode(0x20A6)}${numberFormatter.format(item.amount)}",
                                  style: const TextStyle(
                                      fontFamily: "Avenir",
                                      color: Color.fromRGBO(84, 87, 102, 1),
                                      fontSize: 20),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 25),
                                child: Text(
                                  (item.quantity ~/ 1).toString(),
                                  style: const TextStyle(
                                      fontFamily: "Avenir",
                                      color: Color.fromRGBO(84, 87, 102, 1),
                                      fontSize: 20),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 25),
                                child: Text(
                                  "${String.fromCharCode(0x20A6)}${numberFormatter.format(item.total)}",
                                  style: const TextStyle(
                                      fontFamily: "Avenir",
                                      color: Color.fromRGBO(84, 87, 102, 1),
                                      fontSize: 20),
                                ),
                              ),
                            ]),
                        ],
                      ),
                    ),

                    // SUBTOTAL CONTAINER
                    const SizedBox(
                      height: 95,
                    ),
                    Container(
                      width: 987,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromRGBO(228, 234, 240, 1),
                          width: 1.77812,
                        ),
                      ),
                      padding: const EdgeInsets.fromLTRB(18, 15, 24, 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          const Text(
                            'Subtotal: ',
                            style: TextStyle(
                              fontFamily: "Avenir",
                              fontSize: 28,
                              color: Color.fromRGBO(84, 87, 102, 1),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "${String.fromCharCode(0x20A6)}${numberFormatter.format(widget.invoiceItem.total)}",
                            style: const TextStyle(
                              fontFamily: "Avenir",
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),

              const SizedBox(
                height: 40,
              ),

              // TOTAL CONTAINER
              SizedBox(
                width: 987,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 18),
                          child: Text(
                            'Discount Amount:',
                            style: TextStyle(
                                fontFamily: "Avenir",
                                color: Color.fromRGBO(84, 87, 102, 1),
                                fontSize: 24),
                          ),
                        ),
                        SizedBox(
                          height: 22.0,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 18),
                          child: Text(
                            'Grand Total:',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: "Avenir",
                                color: Color.fromRGBO(41, 43, 51, 1),
                                fontSize: 28),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "${String.fromCharCode(0x20A6)}${numberFormatter.format(widget.invoiceItem.discountAmount)}",
                          style: const TextStyle(
                              color: Color.fromRGBO(254, 25, 25, 1),
                              fontSize: 24,
                              fontFamily: "Avenir",
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 22.0,
                        ),
                        Text(
                          totalValue,
                          style: const TextStyle(
                              fontFamily: "Avenir",
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(41, 43, 51, 1),
                              fontSize: 34),
                        ),
                      ],
                    )
                  ],
                ),
              ),

              const SizedBox(
                height: 272,
              ),

              // ACTION BUTTON

              Center(
                child: TextButton(
                  style: TextButton.styleFrom(
                      fixedSize: const Size(539, 72),
                      foregroundColor: Colors.white,
                      backgroundColor: const Color.fromRGBO(27, 136, 223, 1)),
                  onPressed: () {
                    displayPaymentOptionsModal(context, totalValue);
                  },
                  child: const Text(
                    'Make payment',
                    style: TextStyle(
                      fontSize: 28,
                      fontStyle: FontStyle.normal,
                      fontFamily: 'Avenir',
                      letterSpacing: -0.25,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              )
            ],
          )),
    ));
  }
}
