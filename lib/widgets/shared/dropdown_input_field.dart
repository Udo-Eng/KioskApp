import 'package:flutter/material.dart';

class SharedDropdownInput extends StatelessWidget {
  final String hintText;
  final List<String> options;
  final value;
  final Function(String?)? onChanged;

  const SharedDropdownInput({
    required this.hintText,
    required this.value,
    required this.options,
    required this.onChanged,
    super.key
  });

  // SharedDropdownInput({
  //   required this.hintText,
  //   required this.options,
  //   required this.getLabel,
  //   this.value,
  //   required this.onChanged,
  // });

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      hint: Text(hintText),
      elevation: 10,
      itemHeight: 64,
      menuMaxHeight: 300,
      underline: const Text(""),
      value: value,
      onChanged: onChanged,
      isDense: true,
      isExpanded: true,
      focusColor: Colors.blue,
      iconSize: 0,
      dropdownColor: Colors.white,

      style: const TextStyle(
        color: Color(0xff828282),
        // backgroundColor: Colors.white,
      ),

      items: options.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
