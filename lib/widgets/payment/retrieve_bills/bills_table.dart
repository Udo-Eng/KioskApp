import 'package:flutter/material.dart';
import "package:intl/intl.dart";
import '../../../icons/svg.dart';
import '../../../models/invoice.dart';
import '../../../dummy_data.dart';
import '../../../constants/routes.dart';

class BillsTable extends StatefulWidget {
 

  const BillsTable({super.key});

  @override
  State<BillsTable> createState() => _BillsTableState();
}

class _BillsTableState extends State<BillsTable> {
  String? filterValue = StatusMap[Status.all];
  List<Invoice> displayList = [];
  List<Invoice> filteredList = [];
  String tableTitle = "All Invoices";


  List<Invoice> convertListToInvoice(lists) {
    List<Invoice> invoiceList = [];

    for (var item in lists) {


     DateTime date = DateTime.parse(item["date"]);

      invoiceList.add(
        Invoice(
          amount: item["amount"],
          date: date,
          time: date,
          invoiceNumber: item["number"],
          items: int.parse(item["items"]),
          status: item["status"],
        ),
      );
    }

    return invoiceList;
  }


  void updateTableTitle(){
    if (filterValue == StatusMap[Status.outstanding] ) {
        tableTitle =  "Outstanding Invoices";
      } else if (filterValue == StatusMap[Status.paid]) {
       tableTitle = "Paid Invoices";
      }else{
       tableTitle = "All Invoices";
      }
  }

  List<Invoice> filterList(List<Invoice> lists) {
    return lists.where((item) {
      if (filterValue == StatusMap[Status.outstanding] &&
          item.status == "outstanding") {
        return true;
      } else if (filterValue == StatusMap[Status.paid] &&
          item.status == "paid") {
        return true;
      }else if(filterValue == StatusMap[Status.all]){
        return true;
      }else{
        return false;
      }
    }).toList();
  }

  @override
  void initState() {
    super.initState();
   displayList = convertListToInvoice(lists);
   filteredList = filterList(displayList);
   tableTitle = "All Invoices";
  }


  @override
  void dispose() {
    super.dispose();
    displayList = convertListToInvoice(lists);
    filteredList = filterList(displayList);
    tableTitle = "All Invoices";
  }

  @override
  Widget build(BuildContext context) {
    var headers = [
      '',
      'Invoice Date',
      'Invoice Number',
      'Total Items',
      'Total Amount',
      'Status',
      ''
    ];

    const dropDownTextStyle = TextStyle(
      color: Color.fromRGBO(130, 130, 130, 1),
      fontSize: 18,
    );

    return Container(
      width: 995,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: const Color.fromRGBO(242, 242, 242, 0.9)),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 51, horizontal: 23),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  tableTitle,
                  style: const TextStyle(
                    color: Color.fromRGBO(1, 70, 125, 1),
                    fontSize: 24,
                  ),
                ),
                const SizedBox(
                  width: 46,
                ),
                Container(
                    width: 136,
                    height: 48,
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromRGBO(205, 229, 249, 1),
                      ),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [

                          FilterSvg(),

                          const SizedBox(width: 10),
                  
                          // Add a dropDown Button Here
                          DropdownButton(
                              underline: const Text(""),
                              iconSize: 0,
                              value: filterValue,
                              items: [
                                DropdownMenuItem(
                                    value: StatusMap[Status.outstanding],
                                    child: const Text(
                                      "outstanding",
                                      style: dropDownTextStyle,
                                    )),
                                DropdownMenuItem(
                                    value: StatusMap[Status.paid],
                                    child: const Text(
                                      "paid",
                                      style: dropDownTextStyle,
                                    )),
                                DropdownMenuItem(
                                    value: StatusMap[Status.all],
                                    child: const Text(
                                      "all",
                                      style: dropDownTextStyle,
                                    ))
                              ],
                              // Event Handler function to update the list and title of the Table
                              onChanged: (selectedValue) {
                                setState(() {
                                  filterValue = selectedValue;
                                  filteredList = filterList(displayList);
                                  updateTableTitle();
                                });
                              }),
                        ],
                      ),
                    ))
              ],
            ),
          ),

          const SizedBox(
            height: 35.0,
          ),
          ColoredBox(
            color: const Color.fromRGBO(80, 159, 239, 0.03),
            child: Table(
              columnWidths: const <int, TableColumnWidth>{
                0: FixedColumnWidth(50),
                1: FixedColumnWidth(150),
              },
              children: [
                // HEADER TABLE

                TableRow(
                  children: headers
                      .map(
                        (header) => Padding(
                          padding: const EdgeInsets.fromLTRB(40, 19, 0, 19),
                          child: Text(
                            header,
                            style: const TextStyle(
                              color: Color.fromRGBO(80, 80, 80, 1),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ],
            ),
          ),

          // BODY TABLE

          Table(
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
            columnWidths: const <int, TableColumnWidth>{
              0: FixedColumnWidth(50),
              1: FixedColumnWidth(150),
            },
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: [
              for (var invoice in filteredList)
                TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 30, 0, 30),
                    child: Transform.scale(
                      scale: 1.5,
                      child: Checkbox(
                        fillColor: MaterialStateProperty.all(
                            const Color.fromRGBO(220, 222, 230, 1)),
                        value: false,
                        onChanged: (bool? value) {},
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 30, 0, 30),
                    child: Column(
                      children: [
                        Text(
                          DateFormat.yMd().format(invoice.date),
                          // invoice.date.toString(),
                          // list["date"] as String,
                          style: const TextStyle(
                              color: Color.fromRGBO(62, 65, 76, 1),
                              fontSize: 18),
                        ),
                        Text(
                            DateFormat.jms().format(invoice.time),
                            // list["time"] as String,
                            style: const TextStyle(
                                color: Color.fromRGBO(131, 135, 153, 1),
                                fontSize: 14)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 30, 0, 30),
                    child: Text(
                        invoice.invoiceNumber,
                        // list["number"] as String,
                        style: const TextStyle(
                            color: Color.fromRGBO(62, 65, 76, 1),
                            fontSize: 18)),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 30, 0, 30),
                    child: Text(
                        invoice.items.toString(),
                        // list["items"] as String,
                        style: const TextStyle(
                            color: Color.fromRGBO(62, 65, 76, 1),
                            fontSize: 18)),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 30, 0, 30),
                    child: Text(
                        invoice.amount,
                        // list["amount"] as String,
                        style: const TextStyle(
                            color: Color.fromRGBO(62, 65, 76, 1),
                            fontSize: 18)),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 30, 0, 30),
                    child: Text(
                      invoice.status,
                      // list["status"] as String,
                      style:  TextStyle(
                        // color: Color.fromRGBO(237, 161, 47, 1),
                        color: (invoice.status == "outstanding")
                            ? const Color.fromRGBO(237, 161, 47, 1)
                            : const Color.fromRGBO(24, 179, 104, 1),
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 40,
                    margin: const EdgeInsets.all(25),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromRGBO(27, 136, 223, 1),
                          textStyle: const TextStyle(
                            fontFamily: "Avenir",
                            color: Colors.white,
                            fontSize: 16,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed(PAYMENT_INVOICE_DETAILS);
                        },
                        child: const Text('View')),
                  )
                ])
            ],
          ),
        ],
      ),
    );
  }
}
