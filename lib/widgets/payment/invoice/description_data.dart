import "package:flutter/material.dart";


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