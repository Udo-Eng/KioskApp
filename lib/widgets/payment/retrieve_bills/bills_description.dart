import 'package:flutter/material.dart';

class BillsDescription extends StatelessWidget {
  // final Map invoiceItem;
  // required this.invoiceItem,

  const BillsDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1000,
      child: Column(
        children: [
          const SizedBox(
            height: 190,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  DescriptionData(
                    description: "Patient’s Name: ",
                    value: "Obi Zyte",
                  ),
                  DescriptionData(
                    description: "Tel: ",
                    value: "08023451876",
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  DescriptionData(
                    description: "Patient's ID: ",
                    value: "F8734508453",
                  ),
                  DescriptionData(
                    description: "Gender: ",
                    value: "Female",
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 120)
        ],
      ),
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
