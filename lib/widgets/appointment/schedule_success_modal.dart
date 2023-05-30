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
                                  'E-wallet Details',
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
                          'To fund your wallet, make a transfer from your bank app to the account number below and your Fast-care wallet will be funded immediately.',
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
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 25, 0, 26),
                      height: 1,
                      color: const Color(0xffD0D4D9),
                      width: 682,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                            child: const Text(
                              'Account Number',
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Avenir',
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                color: Color(0xff428BCA),
                                letterSpacing: -0.25,
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                            child: Text(
                              accountNumber,
                              style: const TextStyle(
                                fontSize: 26,
                                fontFamily: 'Avenir',
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal,
                                color: Color(0xff292B33),
                                letterSpacing: -0.25,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 22, 0, 26),
                      height: 1,
                      color: const Color(0xffD0D4D9),
                      width: 682,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                            child: const Text(
                              'Bank Name',
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Avenir',
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                color: Color(0xff428BCA),
                                letterSpacing: -0.25,
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Text(
                              bankName,
                              style: const TextStyle(
                                fontSize: 26,
                                fontFamily: 'Avenir',
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal,
                                color: Color(0xff292B33),
                                letterSpacing: -0.25,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 21, 0, 39),
                      height: 1,
                      color: const Color(0xffD0D4D9),
                      width: 682,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 18.47, 0),
                          child: FundWalletParagraphIcon(),
                        ),
                        Container(
                          width: 570,
                          child: const Text(
                            'kindly note that no third party transfer is allowed, transfer from your bank app',
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Avenir',
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              color: Color(0xff6B6F80),
                              letterSpacing: -0.14,
                            ),
                          ),
                        )
                      ],
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
