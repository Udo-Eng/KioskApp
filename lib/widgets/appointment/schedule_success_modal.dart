import 'package:flutter/material.dart';
import '../../icons/svg.dart';

Dialog? ScheduleSuccessModal(
    {context, required String accountNumber, required String bankName}) {
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
                                child: ModalCloseIconSvg(),
                              ),
                            ),
                            Transform.translate(
                              // e.g: vertical negative margin
                              offset: const Offset(0, -30),
                              child: Container(
                                alignment: Alignment.topCenter,
                                child: const Text(
                                  'Do you wish to continue?',
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
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 66),
                      height: 1,
                      color: const Color(0xffD0D4D9),
                      width: 618,
                    ),
                    Wrap(
                      children: const [
                        Text(
                          'To successfully book this appointment,  ₦1,500.00 will be deducted from your E-wallet balance for consultation fee. Do you still wish to continue? ',
                          style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'Avenir',
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            color: Color(0xff6B6F80),
                          ),
                        ),
                      ],
                    ),

                    // Container(
                    //   width: 538,
                    //   height: 88,
                    //   margin: const EdgeInsets.fromLTRB(0, 123, 0, 170),
                    //   child: ElevatedButton(
                    //     onPressed: handleModalClose,
                    //     style: ButtonStyle(
                    //       backgroundColor: const MaterialStatePropertyAll(
                    //         Color(0xff1B88DF),
                    //       ),
                    //       shape:
                    //       MaterialStateProperty.all<RoundedRectangleBorder>(
                    //         RoundedRectangleBorder(
                    //           borderRadius: BorderRadius.circular(4),
                    //         ),
                    //       ),
                    //     ),
                    //     child: const Text(
                    //       'Done',
                    //       style: TextStyle(
                    //         fontSize: 28,
                    //         fontFamily: 'Avenir',
                    //         fontWeight: FontWeight.w800,
                    //         fontStyle: FontStyle.normal,
                    //         color: Color(0xffFFFFFF),
                    //         letterSpacing: -0.5,
                    //       ),
                    //     ),
                    //   ),
                    // ),

                    Container(
                      width: 538,
                      height: 88,
                      margin: const EdgeInsets.fromLTRB(0, 123, 0, 170),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: ElevatedButton(
                              onPressed: handleModalClose,
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(Color(0xffFFFFFF)),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                              child: const Text(
                                'Cancel',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontFamily: 'Avenir',
                                  fontWeight: FontWeight.w800,
                                  fontStyle: FontStyle.normal,
                                  color: Color(0xffBDBDBD),
                                  letterSpacing: -0.25,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 16), // Add some spacing between the buttons
                          Expanded(
                            flex: 1,
                            child: ElevatedButton(
                              onPressed: handleModalClose,
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(Color(0xff1B88DF)),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                              ),
                              child: const Text(
                                'Yes, contiune',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontFamily: 'Avenir',
                                  fontWeight: FontWeight.w800,
                                  fontStyle: FontStyle.normal,
                                  color: Color(0xffFFFFFF),
                                  letterSpacing: -0.25,
                                ),
                              ),
                            ),
                          ),
                        ],
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
