import 'package:flutter/material.dart';
import '../../icons/svg.dart';

Dialog? NewDepositModal({context}) {
  void handleModalClose() {
    Navigator.pop(context);
  }

  showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: SingleChildScrollView(
            child: Container(
              constraints: const BoxConstraints(
                // maxHeight: 978,
                maxWidth: 773,
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(
                  68.33,
                  57,
                  68.33,
                  0,
                ),
                child: Column(
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: handleModalClose,
                              child: Container(
                                alignment: Alignment.topRight,
                                child: ModalCloseIconTwoSvg(),
                              ),
                            ),
                            Transform.translate(
                              // e.g: vertical negative margin
                              offset: const Offset(0, -30),
                              child: Container(
                                alignment: Alignment.topCenter,
                                child: const Text(
                                  'New Deposit',
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
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 66),
                      height: 1,
                      color: Color(0xffD0D4D9),
                      width: 618,
                    ),
                    Container(
                      width: 538,
                      height: 88,
                      margin: const EdgeInsets.fromLTRB(0, 123, 0, 170),
                      child: ElevatedButton(
                        onPressed: handleModalClose,
                        style: ButtonStyle(
                          backgroundColor: const MaterialStatePropertyAll(
                            Color(0xff1B88DF),
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                        ),
                        child: const Text(
                          'Done',
                          style: TextStyle(
                            fontSize: 28,
                            fontFamily: 'Avenir',
                            fontWeight: FontWeight.w800,
                            fontStyle: FontStyle.normal,
                            color: Color(0xffFFFFFF),
                            letterSpacing: -0.5,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      });
}
