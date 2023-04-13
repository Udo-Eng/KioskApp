import 'package:flutter/material.dart';

import 'new_appointment.dart';

class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(46.23, 64, 46.23, 64),
      alignment: Alignment.center,
      width: 984,
      height: 569,
      decoration: const BoxDecoration(boxShadow: [
        BoxShadow(
          offset: Offset(2, 2),
          blurRadius: 40,
          spreadRadius: 40,
          color: Color.fromRGBO(125, 123, 123, 0.05),
        ),
      ]),
      child: Column(
        children: [
          Card(
            // semanticContainer: true,
            shape: const RoundedRectangleBorder(
              side: BorderSide(
                width: 0.5,
                color: Color(0xffB6DAF6),
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(120.0, 60.0, 120.0, 80.0),
              child: Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Obi Chukwuzitere',
                          style: TextStyle(
                            fontSize: 34,
                            fontFamily: 'Avenir',
                            fontWeight: FontWeight.w800,
                            color: Color(0xff343434),
                            fontStyle: FontStyle.normal,
                            letterSpacing: -0.5,
                          ),
                        ),
                      ]),

                  const SizedBox(
                    height: 30.0,
                  ),

                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              // 'Obi Chukwuzitere',
                              'Patient Number',
                              style: TextStyle(
                                fontSize: 24,
                                fontFamily: 'Avenir',
                                fontWeight: FontWeight.w500,
                                color: Color(0xff838D95),
                                fontStyle: FontStyle.normal,
                                letterSpacing: -0.5,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'Gender',
                              style: TextStyle(
                                fontSize: 24,
                                fontFamily: 'Avenir',
                                fontWeight: FontWeight.w500,
                                color: Color(0xff838D95),
                                fontStyle: FontStyle.normal,
                                letterSpacing: -0.5,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'Phone Number',
                              style: TextStyle(
                                fontSize: 24,
                                fontFamily: 'Avenir',
                                fontWeight: FontWeight.w500,
                                color: Color(0xff838D95),
                                fontStyle: FontStyle.normal,
                                letterSpacing: -0.5,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              'F8734508453',
                              style: TextStyle(
                                fontSize: 24,
                                fontFamily: 'Noto Sans',
                                fontWeight: FontWeight.w600,
                                color: Color(0xff1E2024),
                                fontStyle: FontStyle.normal,
                                letterSpacing: -0.5,
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Text(
                              'Female',
                              style: TextStyle(
                                fontSize: 24,
                                fontFamily: 'Noto Sans',
                                fontWeight: FontWeight.w600,
                                color: Color(0xff1E2024),
                                fontStyle: FontStyle.normal,
                                letterSpacing: -0.5,
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Text(
                              '08023451876',
                              style: TextStyle(
                                fontSize: 24,
                                fontFamily: 'Noto Sans',
                                fontWeight: FontWeight.w600,
                                color: Color(0xff1E2024),
                                fontStyle: FontStyle.normal,
                                letterSpacing: -0.5,
                              ),
                            ),
                          ],
                        ),
                      ]),
                ],
              ),
            ),

          ),

          const SizedBox(height: 45.0),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NewAppointmentScreen()),
                );
                // Handle button press
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 90.0),
                child: Text(
                  'Book Appointment',
                  style: TextStyle(
                    fontSize: 28,
                    fontFamily: 'Avenir',
                    fontWeight: FontWeight.w800,
                    color: Color(0xffFFFFFF),
                    fontStyle: FontStyle.normal,
                    letterSpacing: -0.5,
                  ),
                ),
              ),

            ),
        ],
      ),
    );
  }
}
