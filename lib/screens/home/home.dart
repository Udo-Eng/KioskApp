import 'package:flutter/material.dart';
import '../../widgets/home/widgets/card_widget.dart';
import '../../icons/svg.dart';
import '../../widgets/wallet/card_reader_modal.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void handlePayBillsPage() {
    print('Pay Bills Page');
  }

  void handleAppointmentPage() {
    Navigator.pushNamed(context, APPOINTMENT_SCREEN_ROUTE);
  }

  void _handleWalletPage(BuildContext context) {
    print('Wallet Page');
    EWalletCardReaderModal(context: context);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          margin: const EdgeInsets.fromLTRB(44, 0, 20, 35),
          child: const Text(
            'What would like to do today?',
            style: TextStyle(
              fontFamily: 'Avenir',
              fontSize: 36,
              fontWeight: FontWeight.w800,
              fontStyle: FontStyle.normal,
              letterSpacing: -0.5,
            ),
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              HomeCardItem(
                coloredIcon: EWalletBalanceHomeColoredIconSvg(),
                plainIcon: EWalletBalanceHomePlainIconSvg(),
                firstBgColor: const Color(0xFFFFFFFF),
                secondBgColor: const Color(0xFFF1B88DF),
                textContent: 'E-wallet Balance',
                firstTextColor: const Color(0xFF1B88DF),
                sendTextColor: const Color(0xFFFAFDFE),
                onPressed: () {
                  _handleWalletPage(context);
                },
              ),
              const SizedBox(
                height: 30,
              ),
              HomeCardItem(
                coloredIcon: PayBillsColoredIconSvg(),
                plainIcon: PayBillsPlainIconSvg(),
                firstBgColor: const Color(0xFFFFFFFF),
                secondBgColor: const Color(0xFFF1B88DF),
                textContent: 'Pay Bills',
                firstTextColor: const Color(0xFF1B88DF),
                sendTextColor: const Color(0xFFFAFDFE),
                onPressed: handlePayBillsPage,
              ),
              const SizedBox(
                height: 30,
              ),
              HomeCardItem(
                coloredIcon: BookAppointmentColoredIconSvg(),
                plainIcon: BookAppointmentPlainIconSvg(),
                firstBgColor: const Color(0xFFFFFFFF),
                secondBgColor: const Color(0xFFF1B88DF),
                textContent: 'Book Appointments',
                firstTextColor: const Color(0xFF1B88DF),
                sendTextColor: const Color(0xFFFAFDFE),
                onPressed: handleAppointmentPage,
              ),
            ],
          ),
        )
      ],
    );
  }
}
