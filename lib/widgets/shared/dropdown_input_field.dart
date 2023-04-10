import 'package:flutter/material.dart';
import '../../models/hospital_list_model.dart';

class SharedDropdownInput extends StatelessWidget {
  final String hintText;
  final List<HospitalListModel> options;
  final value;
  final Function(String?)? onChanged;

  SharedDropdownInput({
    required this.hintText,
    required this.value,
    required this.options,
    required this.onChanged,
  });

  // SharedDropdownInput({
  //   required this.hintText,
  //   required this.options,
  //   required this.getLabel,
  //   this.value,
  //   required this.onChanged,
  // });

  @override
  Widget build(BuildContext content) {
    return DropdownButton<String>(
      hint: Text(hintText),
      elevation: 10,
      itemHeight: 64,
      menuMaxHeight: 300,
      underline: Text(""),
      value: value,
      onChanged: onChanged,
      isDense: true,
      isExpanded: true,
      focusColor: Colors.blue,
      iconSize: 0,
      // underline: Text(""),

      dropdownColor: Colors.white,

      style: TextStyle(
        color: Color(0xff828282),
        // backgroundColor: Colors.white,
      ),

      items:
          options.map<DropdownMenuItem<String>>((HospitalListModel hospital) {
        return DropdownMenuItem(
          value: hospital.ID,
          child: Text(hospital.Name),
        );
      }).toList(),
    );
  }
}
