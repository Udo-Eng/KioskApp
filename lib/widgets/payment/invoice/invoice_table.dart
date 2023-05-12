import "package:flutter/material.dart";
import "../modals/payment_option.dart";

class InvoiceTable extends StatefulWidget {

  const InvoiceTable({super.key});

  @override
  State<InvoiceTable> createState() => _InvoiceTableState();
}

class _InvoiceTableState extends State<InvoiceTable> {


     void closePaymentOptionsModal(BuildContext context){
    Navigator.of(context).pop();
  }

  void displayPaymentOptionsModal(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: PaymentOption(cancelModal: () => closePaymentOptionsModal(context) ,),
        );
      },
    );
  }

  final tableHeader = ['Item', 'Amount', 'Qty', 'Total'];

  final lists = [
    {
      'id': '1',
      'item': 'Chloroquine Phosphate',
      'amount': '4,000',
      'qty': '1',
      'total': '4,000'
    },
    {
      'id': '2',
      'item': 'Full Blood Count (FBC) (RBC, WBC, Platelet count',
      'amount': '4,000',
      'qty': '1',
      'total': '4,000'
    },
    {
      'id': '3',
      'item': 'HIV Screening',
      'amount': '1,500',
      'qty': '1',
      'total': '1,500'
    },
    {
      'id': '4',
      'item': 'Chloroquine Phosphate',
      'amount': '4,000',
      'qty': '1',
      'total': '4,000'
    },
  ];

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
                          for (var list in lists)
                            TableRow(children: [
                              Padding(
                                padding: const EdgeInsets.all(18),
                                child: Text(
                                  list['id'] as String,
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
                                  list['item'] as String,
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
                                  list['amount'] as String,
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
                                  list['qty'] as String,
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
                                  list['total'] as String,
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
                        children: const <Widget>[
                          Text(
                            'Subtotal: ',
                            style: TextStyle(
                              fontFamily: "Avenir",
                              fontSize: 28,
                              color: Color.fromRGBO(84, 87, 102, 1),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'N16,000.00 ',
                            style: TextStyle(
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
                      children: const <Widget>[
                        Text(
                          'N0:',
                          style: TextStyle(
                              color: Color.fromRGBO(254, 25, 25, 1),
                              fontSize: 24,
                              fontFamily: "Avenir",
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 22.0,
                        ),
                        Text(
                          'N16,640.00',
                          style: TextStyle(
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
                    displayPaymentOptionsModal(context);
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
