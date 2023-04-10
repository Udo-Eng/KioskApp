import 'dart:async';
import 'package:flutter/material.dart';

class HomeCardItem extends StatefulWidget {
  final Widget coloredIcon;
  final Widget plainIcon;
  final Color firstBgColor;
  final Color secondBgColor;
  final String textContent;
  final Color firstTextColor;
  final Color sendTextColor;
  final VoidCallback onPressed;

  const HomeCardItem(
      {super.key,
      required this.coloredIcon,
      required this.plainIcon,
      required this.firstBgColor,
      required this.secondBgColor,
      required this.textContent,
      required this.firstTextColor,
      required this.sendTextColor,
      required this.onPressed});

  @override
  State<HomeCardItem> createState() => _HomeCardItemState();
}

class _HomeCardItemState extends State<HomeCardItem> {
  bool _switchColor = false;

  void _onCardTap() {
    setState(() {
      _switchColor = true;
    });
    var future = Timer(
      Duration(seconds: 1),
      () {
        widget.onPressed();
        setState(() {
          _switchColor = false;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onCardTap,
      child: Container(
        height: 421,
        width: 547,
        color: Colors.transparent,
        child: Card(
            color: _switchColor == false
                ? widget.firstBgColor
                : widget.secondBgColor,
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(11, 238, 235, 235).withOpacity(0.5),

                    blurRadius: 40,
                    offset: const Offset(2, 2), // changes position of shadow
                  ),
                ],
                color: _switchColor == false
                    ? widget.firstBgColor
                    : widget.secondBgColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _switchColor == false ? widget.coloredIcon : widget.plainIcon,
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                    child: Text(
                      widget.textContent,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Avenir',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w800,
                        letterSpacing: -0.5,
                        fontSize: 36,
                        color: _switchColor == false
                            ? widget.firstTextColor
                            : widget.sendTextColor,
                      ),
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
