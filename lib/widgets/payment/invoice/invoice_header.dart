import 'package:flutter/material.dart';



class InvoiceHeader extends StatelessWidget {

 
  // final Map invoiceItem;
  // required this.invoiceItem,

  const InvoiceHeader({ super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 987,
      child: Column(
        children: const [
          SizedBox(
            height: 66,
          ),
          Center(
            child: Text(
              "RE857309",
              style: TextStyle(
                fontFamily: "Avenir",
                fontSize: 44,
                fontWeight: FontWeight.w800,
                fontStyle: FontStyle.normal,
                color: Color.fromRGBO(220, 222, 230, 1),
              ),
            ),
          ),
          SizedBox(height: 67),
          InvoiceDetails(),
          SizedBox(height: 130)
        ],
      ),
    );
  }
}



class InvoiceDetails extends StatelessWidget {
  const InvoiceDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            DescriptionData(
              description: "Patient’s Name:",
              value: "Obi Zyte",
            ),
            DescriptionData(
              description: "Patient's ID:",
              value: "F8734508453",
            ),
            DescriptionData(
              description: "Tel:",
              value: "08023451876",
            ),
          ],
        ),
        Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            DescriptionData(
              description: "Invoice Number:",
              value: "RE857309",
            ),
            DescriptionData(
              description: "Physician’s name:",
              value: "Dr Eudy",
            ),
            DescriptionData(
              description: "Date:",
              value: "20th May 2022",
            ),
          ],
        ),
      ],
    );
  }
}

class DescriptionData extends StatelessWidget {
  final String value;
  final String description;
  const DescriptionData(
      {required this.value, required this.description, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          description,
          style: const TextStyle(
              color: Color.fromRGBO(52, 52, 52, 1),
              fontSize: 24,
              fontFamily: "Avenir"),
        ),
        const SizedBox(
          width: 0.5,
        ),
        Text(
          value,
          style: const TextStyle(
              color: Color.fromRGBO(52, 52, 52, 1),
              fontSize: 24,
              fontWeight: FontWeight.bold,
              fontFamily: "Avenir"),
        ),
      ],
    );
  }
}

