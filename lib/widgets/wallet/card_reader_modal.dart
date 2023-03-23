import 'package:flutter/material.dart';
import '../../icons/svg.dart';

Dialog? EWalletCardReaderModal({context}) {
  showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Container(
            constraints: const BoxConstraints(
              maxHeight: 390,
              maxWidth: 610,
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(
                32,
                41,
                30,
                41,
              ),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      alignment: Alignment.topRight,
                      child: ModalCloseIconSvg(),
                    ),
                  ),
                  Transform.translate(
                    // e.g: vertical negative margin
                    offset: const Offset(0, -30),
                    child: Container(
                      alignment: Alignment.topCenter,
                      child: const Text(
                        'Patient Verification',
                        style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'Noto Sans',
                          fontFamilyFallback: ['Avenir'],
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 64),
                    height: 1,
                    color: Color(0xffD0D4D9),
                    width: 558,
                  ),
                  Wrap(children: [
                    const Text(
                      'To access your wallet details, tap your card on',
                      style: TextStyle(
                        fontSize: 26,
                        fontFamily: 'Avenir',
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                        color: Color(0xff3E414C),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Row(
                        children: [
                          const Text(
                            "this icon",
                            style: TextStyle(
                              fontSize: 26,
                              fontFamily: 'Avenir',
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal,
                              color: Color(0xff3E414C),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: NFCCardReaderIconSvg(),
                          ),
                          const Text(
                            'on the body of the machine',
                            style: TextStyle(
                              fontSize: 26,
                              fontFamily: 'Avenir',
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal,
                              color: Color(0xff3E414C),
                            ),
                          )
                        ],
                      ),
                    )
                  ])
                ],
              ),
            ),
          ),
        );
      });
}
