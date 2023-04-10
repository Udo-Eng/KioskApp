import 'package:flutter/material.dart';
import '../../icons/svg.dart';

class HeaderWidget extends StatelessWidget {
  final String headerTitle;
  final VoidCallback onBackButtonPress;
  const HeaderWidget(
      {super.key, required this.headerTitle, required this.onBackButtonPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 121,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 0.3333),
            color: Color.fromRGBO(0, 0, 0, 0.3),
          ),
        ],
        color: Color.fromRGBO(249, 249, 249, 0.9),
      ),
      child: Container(
        margin: EdgeInsets.fromLTRB(46.23, 0, 46.23, 0),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: GestureDetector(
                  onTap: onBackButtonPress,
                  child: Row(
                    children: [
                      HeaderBackIconSvg(),
                      Container(
                        margin: EdgeInsets.fromLTRB(15.23, 0, 0, 0),
                        child: const Text(
                          "Back",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w800,
                            fontFamily: 'Avenir',
                            fontStyle: FontStyle.normal,
                            color: Color(0xff1E2024),
                          ),
                        ),
                      )
                    ],
                  )),
            ),
            Expanded(
              flex: 21,
              child: Container(
                alignment: Alignment.center,
                child: Transform.translate(
                  offset: const Offset(-50, 0),
                  child: Text(
                    headerTitle,
                    style: const TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Avenir',
                      fontStyle: FontStyle.normal,
                      color: Color(0xff1E2024),
                      letterSpacing: -0.5,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        // Transform.translate(
        //   offset: Offset(0, -30),
        //   child: Align(
        //     alignment: Alignment.center,
        //     child: Text(
        //       "Titile",
        //       style: TextStyle(
        //         fontFamily: 'Avenir',
        //         fontStyle: FontStyle.normal,
        //         fontSize: 34,
        //         fontWeight: FontWeight.w900,
        //         letterSpacing: -0.5,
        //         color: Color(0xff1E2024),
        //       ),
        //       textAlign: TextAlign.center,
        //     ),
        //   ),
        // )

        // Transform.translate(
        //   offset: const Offset(0, 0),
        //   child: Text(
        //     "Titile",
        //     style: TextStyle(
        //         fontFamily: 'Avenir',
        //         fontStyle: FontStyle.normal,
        //         fontSize: 34,
        //         fontWeight: FontWeight.w900,
        //         letterSpacing: -0.5,
        //         color: Color(0xff1E2024)),
        //   ),
        // )
      ),
    );
  }
}
