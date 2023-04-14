import 'package:flutter/material.dart';

class DropDropMenuWidget extends StatefulWidget {
  final String label;
  final List<String> items;
  const DropDropMenuWidget(
      {required this.items, required this.label, super.key});

  @override
  State<DropDropMenuWidget> createState() => _DropDropMenuWidgetState();
}

class _DropDropMenuWidgetState extends State<DropDropMenuWidget> {
  String? selectedValue;

  @override
  void initState() {
    super.initState();
    selectedValue = widget.items[0];
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.label,
            style: const TextStyle(
              fontSize: 20,
              fontFamily: 'Avenir',
              fontWeight: FontWeight.w500,
              color: Color.fromRGBO(41, 43, 51, 1),
              fontStyle: FontStyle.normal,
              letterSpacing: -0.25,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            width: 673,
            height: 56,
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromRGBO(89, 165, 223, 0.4),
                width: 0.5,
              ),
              borderRadius: BorderRadius.circular(2),
            ),
            child: DropdownButton(
              value: selectedValue,
              underline: Container(
                height: 0,
              ),
              icon: const RotatedBox(
                quarterTurns: 3,
                child: Icon(
                  Icons.arrow_back_ios_rounded,
                  color: Colors.black,
                ),
              ),
              onChanged: (String? newValue) {
                setState(() {
                  selectedValue = newValue!;
                });
              },
              items: [
                for (final item in widget.items)
                  DropdownMenuItem<String>(
                    value: item,
                    child: SizedBox(
                      width: 630,
                      child: Text(
                        item,
                        style: const TextStyle(
                          fontFamily: "Avenir",
                          color: Color.fromRGBO(132, 132, 132, 1),
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.25,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
