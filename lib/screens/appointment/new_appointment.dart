import 'package:flutter/material.dart';

import '../../icons/svg.dart';

class NewAppointmentScreen extends StatelessWidget {
  const NewAppointmentScreen({super.key});

  get handleModalClose => null;

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //     backgroundColor: const Color(0xFFFAFDFE),
    //     body: SingleChildScrollView(
    //       // padding: const EdgeInsets.fromLTRB(46, 38, 46, 60),
    //       child: Column(
    //         children: [
    //           Container(
    //             alignment: Alignment.center,
    //             // padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
    //             margin: const EdgeInsets.fromLTRB(46.23, 64, 46.23, 64),
    //             width: 984,
    //             // height: 569,
    //             child: Column(
    //               children:  [
    //                 GestureDetector(
    //                   onTap: handleModalClose,
    //                   child: Container(
    //                     alignment: Alignment.topRight,
    //                     child: ModalCloseIconSvg(),
    //                   ),
    //                 ),
    //
    //                 // Transform.translate(
    //                 //   // e.g: vertical negative margin
    //                 //   offset: const Offset(0, -30),
    //                 //   child: Container(
    //                 //     alignment: Alignment.topCenter,
    //                 //     child: const Text(
    //                 //       'New Appointment',
    //                 //       style: TextStyle(
    //                 //         fontSize: 24,
    //                 //         fontFamily: 'Noto Sans',
    //                 //         fontFamilyFallback: ['Avenir'],
    //                 //         fontWeight: FontWeight.w600,
    //                 //         fontStyle: FontStyle.normal,
    //                 //       ),
    //                 //     ),
    //                 //   ),
    //                 // ),
    //               ],
    //             ),
    //           ),
    //
    //           Container(
    //             margin: const EdgeInsets.fromLTRB(0, 0, 0, 66),
    //             height: 1,
    //             color: const Color(0xffD0D4D9),
    //             width: 618,
    //           ),
    //
    //           Padding(
    //             padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
    //             child: Column(
    //               mainAxisAlignment: MainAxisAlignment.start,
    //               children: [
    //                 Container(
    //                   alignment: Alignment.topLeft,
    //                   margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
    //                   child: const Text(
    //                     'Account Number',
    //                     style: TextStyle(
    //                       fontSize: 20,
    //                       fontFamily: 'Avenir',
    //                       fontWeight: FontWeight.w400,
    //                       fontStyle: FontStyle.normal,
    //                       color: Color(0xff428BCA),
    //                       letterSpacing: -0.25,
    //                     ),
    //                   ),
    //                 ),
    //                 Container(
    //                   alignment: Alignment.topLeft,
    //                   margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
    //                   child: const Text(
    //                     'accountNumber',
    //                     style: TextStyle(
    //                       fontSize: 26,
    //                       fontFamily: 'Avenir',
    //                       fontWeight: FontWeight.w500,
    //                       fontStyle: FontStyle.normal,
    //                       color: Color(0xff292B33),
    //                       letterSpacing: -0.25,
    //                     ),
    //                   ),
    //                 )
    //               ],
    //             ),
    //           ),
    //
    //           Container(
    //             margin: const EdgeInsets.fromLTRB(0, 0, 0, 66),
    //             height: 1,
    //             color: const Color(0xffD0D4D9),
    //             width: 618,
    //           ),
    //         ],
    //       ),
    //     ));

    return Container(
      width: 984,
      height: 359,
      color: const Color(0xFFFAFDFE),
      padding: const EdgeInsets.fromLTRB(90, 38, 90, 66),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 67),
            child: const Text(
              'E-Wallet',
              style: TextStyle(
                fontSize: 24,
                fontFamily: 'Avenir',
                fontWeight: FontWeight.w500,
                color: Color(0xff6B6F80),
                fontStyle: FontStyle.normal,
                letterSpacing: -0.25,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 66),
            height: 1,
            color: const Color(0xffD0D4D9),
            width: 618,
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 67),
            child: const Text(
              'Why Are You Seeing A Doctor',
              style: TextStyle(
                fontSize: 24,
                fontFamily: 'Avenir',
                fontWeight: FontWeight.w500,
                color: Color(0xff6B6F80),
                fontStyle: FontStyle.normal,
                letterSpacing: -0.25,
              ),
            ),
          ),
        ],

        // Card(
        //   shape: RoundedRectangleBorder(
        //     side: const BorderSide(
        //       width: 0.5,
        //       color: Color(0xffB6DAF6),
        //     ),
        //     borderRadius: BorderRadius.circular(4),
        //   ),
        //   color: Colors.white,
        //   child: Container(
        //     margin: const EdgeInsets.fromLTRB(106.46, 102, 68.65, 46),
        //     child: Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           Column(
        //             mainAxisAlignment: MainAxisAlignment.start,
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             children: [
        //               Container(
        //                 child: const Text(
        //                   '₦ 0.00',
        //                   style: TextStyle(
        //                     fontSize: 44,
        //                     fontFamily: 'Avenir',
        //                     fontWeight: FontWeight.w800,
        //                     color: Color(0xff1B88DF),
        //                     fontStyle: FontStyle.normal,
        //                     letterSpacing: -0.5,
        //                   ),
        //                 ),
        //               ),
        //               Container(
        //                 margin: EdgeInsets.fromLTRB(0, 0, 0, 67),
        //                 child: const Text(
        //                   'E-Wallet',
        //                   style: TextStyle(
        //                     fontSize: 24,
        //                     fontFamily: 'Avenir',
        //                     fontWeight: FontWeight.w500,
        //                     color: Color(0xff6B6F80),
        //                     fontStyle: FontStyle.normal,
        //                     letterSpacing: -0.25,
        //                   ),
        //                 ),
        //               ),
        //               Container(
        //                 child: const Text(
        //                   'Money here is the total amount in the patient’s wallet',
        //                   style: TextStyle(
        //                     fontSize: 18,
        //                     fontFamily: 'Avenir',
        //                     fontWeight: FontWeight.w400,
        //                     color: Color(0xff545766),
        //                     fontStyle: FontStyle.normal,
        //                     letterSpacing: -0.25,
        //                   ),
        //                 ),
        //               ),
        //             ],
        //           ),
        //
        //           Container(
        //             width: 246.75,
        //             height: 75,
        //             // child: ElevatedButton(
        //             //     style: ButtonStyle(
        //             //       shadowColor:
        //             //       MaterialStateProperty.all(Colors.transparent),
        //             //       shape: MaterialStateProperty.all(
        //             //         RoundedRectangleBorder(
        //             //             borderRadius: BorderRadius.circular(3.42292)),
        //             //       ),
        //             //       backgroundColor:
        //             //       const MaterialStatePropertyAll(Color(0xff1B88DF)),
        //             //     ),
        //             //     onPressed: handleFundWalletModal,
        //             //     child: const Text(
        //             //       'Fund wallet',
        //             //       style: TextStyle(
        //             //         fontSize: 24,
        //             //         fontFamily: 'Avenir',
        //             //         fontWeight: FontWeight.w800,
        //             //         color: Colors.white,
        //             //         fontStyle: FontStyle.normal,
        //             //         letterSpacing: -0.25,
        //             //       ),
        //             //     )),
        //           )
        //         ]),
        //   ),
        // ),
      ),
    );
  }
}
