import "package:flutter/material.dart";

class CustomButton extends StatefulWidget {
  final String text;
  final VoidCallback onClickHandler;

  const CustomButton({required this.text,required this.onClickHandler,super.key});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: widget.onClickHandler,
        child: Container(
          width: 760,
          height: 88,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(27, 136, 223, 1),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Center(
            child: Text(
              widget.text,
              style: const TextStyle(
                fontFamily: "Avenir",
                fontSize: 28,
                fontWeight: FontWeight.w800,
                fontStyle: FontStyle.normal,
                color: Colors.white,
              ),
            ),
          ),
        ));
  }
}
