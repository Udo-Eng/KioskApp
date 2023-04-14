import 'package:flutter/material.dart';

class MyRadioButtonWidget extends StatefulWidget {
  final String label;
  final String option1;
  final String option2;

  const MyRadioButtonWidget(
      {required this.label,
      required this.option1,
      required this.option2,
      super.key});

  @override
  State<MyRadioButtonWidget> createState() => _MyRadioButtonWidgetState();
}

class _MyRadioButtonWidgetState extends State<MyRadioButtonWidget> {
  
  String? _character;

  @override
  void initState() {
    super.initState();

    _character = widget.option1;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 550,
      height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.label,
            style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                fontFamily: "Avenir"),
          ),
          SizedBox(
            width: 550,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: 250,
                  height: 40,
                  child: ListTile(
                    title: Text(widget.option1),
                    leading: Radio<String>(
                      value: widget.option1,
                      groupValue: _character,
                      onChanged: (String? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(
                  width: 250,
                  height: 40,
                  child: ListTile(
                    title: Text(widget.option2),
                    leading: Radio<String>(
                      value: widget.option2,
                      groupValue: _character,
                      onChanged: (String? value) {
                        setState(() {
                          _character = value;
                        });
                      },
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
