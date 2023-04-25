import 'package:flutter/material.dart';
import '../../../icons/svg.dart';

class BillsTable extends StatelessWidget {
  final String tableTitle;
  const BillsTable({required this.tableTitle, super.key});

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
    var lists = [
      {
        'date': '02/11/2020',
        'time': '10:30:20am',
        'number': 'IN19530',
        'items': '5',
        'amount': '14,000.00',
        'status': 'outstanding'
      },
      {
        'date': '02/11/2020',
        'time': '10:30:20am',
        'number': 'RE857309',
        'items': '3',
        'amount': '3,000.00',
        'status': 'outstanding'
      },
      {
        'date': '02/11/2020',
        'time': '10:30:20am',
        'number': '19530',
        'items': '1',
        'amount': '1,500.00',
        'status': 'paid'
      },
      {
        'date': '02/11/2020',
        'time': '10:30:20am',
        'number': '19530',
        'items': '1',
        'amount': '1,500.00',
        'status': 'outstanding'
      },
      {
        'date': '02/11/2020',
        'time': '10:30:20am',
        'number': 'RE857309',
        'items': '3',
        'amount': '3,000.00',
        'status': 'paid'
      },
      {
        'date': '02/11/2020',
        'time': '10:30:20am',
        'number': '19530',
        'items': '1',
        'amount': '1,500.00',
        'status': 'outstanding'
      },
      {
        'date': '02/11/2020',
        'time': '10:30:20am',
        'number': '19530',
        'items': '1',
        'amount': '1,500.00',
        'status': 'paid'
      }
    ];
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
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromRGBO(205, 229, 249, 1),
                      ),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FilterSvg(),
                        const Text("Filter by;"),

                        // Add a dropDown Button Here
                        DropdownButton(items: const [
                          DropdownMenuItem(child: 
                            Text("outstanding")
                          ),
                            DropdownMenuItem(child: 
                            Text("paid")
                          ),
                            DropdownMenuItem(child: 
                            Text("all")
                          )
                        ], onChanged: (_){

                        }),
                      ],
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
                // 1: FlexColumnWidth(),
                // 2: FixedColumnWidth(300),
              },
              children: [
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
              // 0: IntrinsicColumnWidth(),
              // 1: FlexColumnWidth(),
              // 2: FixedColumnWidth(300),
            },
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: [
              for (var list in lists)
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
                          list['date'] as String,
                          style: const TextStyle(
                              color: Color.fromRGBO(62, 65, 76, 1),
                              fontSize: 18),
                        ),
                        Text(list['time'] as String,
                            style: const TextStyle(
                                color: Color.fromRGBO(131, 135, 153, 1),
                                fontSize: 14)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 30, 0, 30),
                    child: Text(list['number'] as String,
                        style: const TextStyle(
                            color: Color.fromRGBO(62, 65, 76, 1),
                            fontSize: 18)),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 30, 0, 30),
                    child: Text(list['items'] as String,
                        style: const TextStyle(
                            color: Color.fromRGBO(62, 65, 76, 1),
                            fontSize: 18)),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 30, 0, 30),
                    child: Text(list['amount'] as String,
                        style: const TextStyle(
                            color: Color.fromRGBO(62, 65, 76, 1),
                            fontSize: 18)),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 30, 0, 30),
                    child: Text(
                      list['status'] as String,
                      style: const TextStyle(
                          color: Color.fromRGBO(237, 161, 47, 1), fontSize: 18),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 40,
                    margin:const EdgeInsets.all(25),
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
                        onPressed: () {},
                        child: const Text('View')),
                  )
                ])
              // TableRow(
              //
              // )
            ],
          ),
        ],
      ),
    );
  }
}
