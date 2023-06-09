import "package:flutter/material.dart";

class CustomButton extends StatefulWidget {
  final Widget childWidget;
  final VoidCallback onClickHandler;

  const CustomButton({required this.childWidget,required this.onClickHandler,super.key});
  

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
            child: widget.childWidget,
          ),
        ));
  }
}
